import os
import cv2
import glob
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path
from skimage.metrics import structural_similarity as ssim


def read_image_txt(filename):
    """Reads Verilog hardware output from out_<angle>.txt (binary strings)."""
    with open(filename, "r") as file:
        lines = file.readlines()
    pixels = [int(line.strip().replace("x", "0"), 2) for line in lines if line.strip()]
    image = np.array(pixels[: 512 * 512], dtype=np.uint8).reshape(512, 512)
    return image


def read_image_coe(filename):
    """Reads .coe file and converts binary pixel data to 512x512 image."""
    with open(filename, "r") as file:
        lines = file.readlines()[2:]  # skip the header
    pixels = [int(line.strip().rstrip(",;"), 2) for line in lines if line.strip()]
    image = np.array(pixels[: 512 * 512], dtype=np.uint8).reshape(512, 512)
    return image


# === Main Evaluation Logic ===

base_dir = "../files/data"  # Update this path if needed
angles = [45, 90, 135, 180]

results = []

folders = sorted(Path(base_dir).glob("*"))
print(f"🔍 Found {len(folders)} folders in {base_dir}")

for folder in folders:
    image_name = folder.name
    row = {"image": image_name}

    for angle in angles:
        hw_txt = folder / f"out_{angle}.txt"
        sw_coe = folder / f"{image_name}_filtered_{angle}.coe"

        if not hw_txt.exists() or not sw_coe.exists():
            print(f"⚠️ Skipping {image_name} angle {angle}: file missing")
            continue

        try:
            hw_image = read_image_txt(hw_txt)
            sw_image = read_image_coe(sw_coe)
            ssim_score = ssim(hw_image, sw_image)
            row[f"SSIM_{angle}"] = ssim_score
        except Exception as e:
            print(f"❌ Error processing {image_name} angle {angle}: {e}")
            row[f"SSIM_{angle}"] = None

    results.append(row)

# === Save Results ===
df = pd.DataFrame(results)
df.to_csv("ssim_results_fp.csv", index=False)
print("✅ SSIM results saved to ssim_results_fp.csv")

# === Histogram Plotting by SSIM Ranges (refined for > 0.6 only) ===
bins = np.arange(0.6, 1.05, 0.05)

for angle in angles:
    col = f"SSIM_{angle}"
    if col not in df.columns:
        continue

    angle_scores = df[col].dropna()
    angle_scores = angle_scores[angle_scores >= 0.6]  # Filter out low SSIMs

    if angle_scores.empty:
        print(f"⚠️ No SSIM data ≥ 0.6 for angle {angle}")
        continue

    # Histogram
    hist, bin_edges = np.histogram(angle_scores, bins=bins)

    # Bin labels like: 0.60–0.65
    labels = [f"{bin_edges[i]:.2f}–{bin_edges[i + 1]:.2f}" for i in range(len(hist))]

    # Plot
    plt.figure(figsize=(8, 4))
    plt.bar(labels, hist, width=0.6, color="steelblue")
    plt.title(f"SSIM Histogram (≥ 0.60) - Angle {angle}°")
    plt.xlabel("SSIM Range")
    plt.ylabel("Number of Images")
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.savefig(f"ssim_histogram_angle_{angle}.png")
    plt.close()
    print(f"📊 Histogram saved: ssim_histogram_angle_{angle}.png")

    # Average SSIM
    avg = angle_scores.mean()
    print(f"🔢 Average SSIM (≥0.60) for angle {angle}°: {avg:.4f}")
