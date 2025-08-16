import os
import numpy as np
import cv2
import pandas as pd
from sklearn.mixture import BayesianGaussianMixture
from sklearn.cluster import KMeans, AgglomerativeClustering
from skimage.metrics import structural_similarity as ssim
from glob import glob
import random

VERBOSE = True  # Toggle detailed debug logging

# === STEP 1: Gabor Coefficients (Fixed-Point) ===
coeff_dict = {
    45: [
        "111000100011001000",
        "111110001000101010",
        "000101111001011111",
        "001011111111101000",
        "001101010101110000",
        "111110000000100100",
        "000110000010001101",
        "001101000011000000",
        "001111010010011111",
        "001011110000000100",
        "000101101000100110",
        "001100111101010100",
        "010000000000000000",
    ],
    90: [
        "111100011100010110",
        "111101110111101011",
        "111111101000101110",
        "000001011110100011",
        "000011000110111100",
        "000110100011001000",
        "001000110011011111",
        "001010101100000011",
        "001011111001101111",
        "001100010001000011",
        "001110000001100001",
        "001111011110111001",
        "010000000000000000",
    ],
    135: [
        "001101010101110100",
        "001011110001101001",
        "000101101010010010",
        "111110000001010111",
        "111000100011000111",
        "001011111110000110",
        "001111010010100000",
        "001100111101111000",
        "000110000010001100",
        "111110000111110101",
        "000101110111110010",
        "001101000010011011",
        "010000000000000000",
    ],
    180: [
        "111111011100101011",
        "001001101100100000",
        "001110100111000110",
        "001001100100110010",
        "111111010011110110",
        "111111010111110100",
        "001010010110001011",
        "001111101001000000",
        "001010010010000011",
        "111111010011000101",
        "111111010100011110",
        "001010100011010001",
        "010000000000000000",
    ],
}


def fxp_to_int(coeff, coeff_bits=18):
    int_value = int(coeff, 2)
    if int_value & (1 << (coeff_bits - 1)):
        int_value -= 1 << coeff_bits
    return int_value


def coeff_to_array(coeffs):
    return [fxp_to_int(c) for c in coeffs]


def read_image_coe(filename):
    with open(filename, "r") as f:
        lines = f.readlines()[2:]
    pixels = [int(line.strip().rstrip(",;"), 2) for line in lines if line.strip()]
    img_size = int(np.sqrt(len(pixels)))
    return np.array(pixels, dtype=np.uint8).reshape(img_size, img_size)


def fixed_point_multiply(a, b):
    return a * b


def fixed_point_convolution(image, kernel, frac_bits=16):
    output = np.zeros_like(image, dtype=np.uint8)
    pad = kernel.shape[0] // 2
    padded = np.pad(image, pad, mode="constant", constant_values=0)
    for i in range(image.shape[0]):
        for j in range(image.shape[1]):
            acc = 0
            for m in range(5):
                for n in range(5):
                    acc += fixed_point_multiply(kernel[m, n], padded[i + m, j + n])
            output[i, j] = acc >> frac_bits
    return output


def quantize_kernel(coeffs, k, method="kmeans", alpha_scheme="lsq"):
    X = np.array(coeffs).reshape(-1, 1)
    if method == "kmeans":
        model = KMeans(n_clusters=k, n_init="auto").fit(X)
        labels = model.predict(X)
    elif method == "bgmm":
        model = BayesianGaussianMixture(n_components=k).fit(X)
        labels = model.predict(X)
    elif method == "agglo":
        model = AgglomerativeClustering(n_clusters=k).fit(X)
        labels = model.labels_
    else:
        raise ValueError("Unknown clustering method")

    bases, alphas = [], []
    for i in range(k):
        idx = np.where(labels == i)[0]
        if len(idx) == 0:
            continue
        group = np.array([coeffs[j] for j in idx])
        sign_pattern = np.sign(group)
        base = np.zeros(len(coeffs))
        base[idx] = sign_pattern
        if alpha_scheme == "lsq":
            alpha = np.dot(base, coeffs) / np.dot(base, base)
        elif alpha_scheme == "mean":
            denom = np.mean(sign_pattern)
            alpha = 0 if denom == 0 else np.mean(group) / denom
        elif alpha_scheme == "median":
            denom = np.mean(sign_pattern)
            alpha = 0 if denom == 0 else np.median(group) / denom
        else:
            raise ValueError("Unknown alpha scheme")

        alphas.append(int(round(alpha)))
        bases.append(base)

    full = np.zeros(13)
    for b, a in zip(bases, alphas):
        full += b * a
    full_symm = list(full) + list(full[11::-1])
    print(np.array(full_symm, dtype=int).reshape(5, 5))

    return np.array(full_symm, dtype=int).reshape(5, 5), alphas, labels


def evaluate_quantization(image, original_kernel, quantized_kernel):
    ref_out = fixed_point_convolution(image, original_kernel)
    qnt_out = fixed_point_convolution(image, quantized_kernel)
    return ssim(ref_out, qnt_out), ref_out, qnt_out


# === STEP 2: Main Quantization Pipeline ===


def run_quantization_pipeline():
    coe_files = glob("/home/yassss-369/iiitb/python/coe/*.coe")
    clustering_methods = ["agglo", "kmeans"]
    alpha_methods = ["lsq", "mean"]
    k_values = [1, 2, 3, 4, 5]
    angles = list(coeff_dict.keys())
    # angles.remove(45)
    csv_file = "kernel_quantization_m.csv"
    if os.path.isfile(csv_file):
        os.remove(csv_file)

    # === NEW: SSIM tracker and pruning ===
    ssim_tracker = {}  # {(angle, K, clustering, alpha): [list of scores]}
    blacklist = set(
        [
            (45, 1, "agglo", "lsq"),
            (45, 2, "agglo", "lsq"),
            (45, 1, "agglo", "mean"),
            (45, 2, "agglo", "mean"),
            (45, 1, "kmeans", "lsq"),
            (45, 2, "kmeans", "lsq"),
            (45, 1, "kmeans", "mean"),
            (45, 2, "kmeans", "mean"),
        ]
    )
    completed_tasks = set()
    if os.path.isfile(csv_file):
        existing_df = pd.read_csv(csv_file)
        for _, row in existing_df.iterrows():
            completed_tasks.add(
                (
                    row["image"],
                    row["angle"],
                    row["K"],
                    row["clustering"],
                    row["alpha_scheme"],
                )
            )
    task_counter = 0

    image_counter = 0

    total_tasks = (
        len(coe_files)
        * len(clustering_methods)
        * len(alpha_methods)
        * len(k_values)
        * len(angles)
    )

    for coe_path in coe_files:
        image = read_image_coe(coe_path)
        image_id = os.path.basename(coe_path)
        print(f"\n[INFO] Processing image: {image_id}")
        image_counter += 1

        for angle in angles:
            coeffs = coeff_to_array(coeff_dict[angle])
            original_kernel = np.array(coeffs + coeffs[11::-1]).reshape(5, 5)
            print(f"\n[INFO] Processing kernel angle: {angle}°")

            for clustering in clustering_methods:
                for alpha_method in alpha_methods:
                    for k in k_values:
                        key = (angle, k, clustering, alpha_method)

                        # Skip if this combo has been blacklisted
                        if key not in blacklist:
                            continue

                        task_counter += 1
                        progress = (task_counter / total_tasks) * 100
                        print(f"[PROGRESS] {progress:.2f}% completed")
                        try:
                            print(
                                f"[INFO] Trying K={k}, clustering={clustering}, alpha={alpha_method}"
                            )
                            q_kernel, alphas, labels = quantize_kernel(
                                coeffs, k, clustering, alpha_method
                            )
                            if VERBOSE:
                                print(f"[DEBUG] Alphas: {alphas}")
                                print(f"[DEBUG] Labels: {labels.tolist()}")
                            score, _, _ = evaluate_quantization(
                                image, original_kernel, q_kernel
                            )
                            print(
                                f"[INFO] SSIM={round(score, 4)} | {'✅ PASS' if score >= 0.85 else '❌ FAIL'}"
                            )

                            # Log SSIM for pruning
                            if key not in ssim_tracker:
                                ssim_tracker[key] = []
                            ssim_tracker[key].append(score)

                            # Write to CSV
                            record = {
                                "image": image_id,
                                "angle": angle,
                                "K": k,
                                "clustering": clustering,
                                "alpha_scheme": alpha_method,
                                "SSIM": round(score, 4),
                                "success": score >= 0.85,
                                "alphas": alphas,
                                "labels": labels.tolist(),
                            }
                            df = pd.DataFrame([record])
                            file_exists = os.path.isfile(csv_file)
                            df.to_csv(
                                csv_file, mode="a", header=not file_exists, index=False
                            )

                        except Exception as e:
                            print(
                                f"[ERROR] {e} while processing {image_id} | angle={angle}, K={k}, clustering={clustering}, alpha={alpha_method}"
                            )

        # === NEW: Every 30 images, evaluate and prune ===
        if image_counter % 30 == 0:
            print(
                f"\n[INFO] Pruning low-performing combinations after {image_counter} images..."
            )
            for key, scores in ssim_tracker.items():
                if len(scores) >= 10:
                    avg_ssim = np.mean(scores)
                    if avg_ssim < 0.70:
                        blacklist.add(key)
                        print(f"[PRUNE] Pruned {key} with average SSIM {avg_ssim:.4f}")


if __name__ == "__main__":
    run_quantization_pipeline()
