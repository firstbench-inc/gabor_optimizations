import numpy as np
from collections import defaultdict, Counter
import glob
import os
import csv

frac_bits = 16
kernel_size = 5
angles = ["45", "90", "135", "180"]
csv_output = "multiplication_top1000.csv"

# Coefficients in binary (sign + 2 int bits + 15 frac bits)
kernel_data = {
    "45": {
        "alphas": [51683, 64080, 23985, -30520, -7897],
        "labels": [
            3,
            4,
            2,
            0,
            0,
            4,
            2,
            0,
            1,
            0,
            2,
            0,
            1,
            0,
            2,
            0,
            1,
            0,
            2,
            4,
            0,
            0,
            2,
            4,
            3,
        ],
    },
    "180": {
        "alphas": [63149, -2664, 41328],
        "labels": [
            1,
            2,
            0,
            2,
            1,
            1,
            2,
            0,
            2,
            1,
            1,
            2,
            0,
            2,
            1,
            1,
            2,
            0,
            2,
            1,
            1,
            2,
            0,
            2,
            1,
        ],
    },
    "135": {
        "alphas": [51683, 64080, 23985, -30520, -7897],
        "labels": [
            0,
            0,
            2,
            4,
            3,
            0,
            1,
            0,
            2,
            4,
            2,
            0,
            1,
            0,
            2,
            4,
            2,
            0,
            1,
            0,
            3,
            4,
            2,
            0,
            0,
        ],
    },
    "90": {
        "alphas": [-8262, 31444, 62131, 9392, 47591],
        "labels": [
            0,
            0,
            0,
            3,
            3,
            1,
            1,
            4,
            4,
            4,
            2,
            2,
            2,
            2,
            2,
            4,
            4,
            4,
            1,
            1,
            3,
            3,
            0,
            0,
            0,
        ],
    },
}


def read_image_coe(filename):
    with open(filename, "r") as f:
        lines = f.readlines()[2:]  # skip headers
    pixels = [int(line.strip().rstrip(",;"), 2) for line in lines if line.strip()]
    img_size = int(np.sqrt(len(pixels)))
    return np.array(pixels, dtype=np.uint8).reshape(img_size, img_size)


def generate_kernel(angle):
    alphas = kernel_data[angle]["alphas"]
    labels = kernel_data[angle]["labels"]
    return np.array([alphas[label] for label in labels], dtype=np.int64).reshape(
        (kernel_size, kernel_size)
    )


def fixed_point_multiply(a, b, frac_bits):
    return a * b


# === Initialize frequency dictionary ===
multiplication_freq = defaultdict(int)

# === Iterate over all images and angles ===
coe_files = glob.glob("../../python/coe/*.coe")
total_tasks = len(coe_files) * len(angles)
current_task = 0

for file_path in coe_files:
    image = read_image_coe(file_path)

    for angle in angles:
        current_task += 1
        percent_done = (current_task / total_tasks) * 100
        print(
            f"Processing image: {os.path.basename(file_path)} | Angle: {angle} | {percent_done:.2f}% complete"
        )

        kernel = generate_kernel(angle)
        pad = kernel.shape[0] // 2
        padded = np.pad(image, pad, mode="constant", constant_values=0)

        for i in range(image.shape[0]):
            for j in range(image.shape[1]):
                pixel_sum_map = defaultdict(int)
                for m in range(kernel.shape[0]):
                    for n in range(kernel.shape[1]):
                        coeff = int(kernel[m][n])
                        pixel = int(padded[i + m][j + n])
                        pixel_sum_map[coeff] += pixel

                for coeff, pixel_sum in pixel_sum_map.items():
                    result = fixed_point_multiply(coeff, pixel_sum, frac_bits)
                    expression = f"{coeff}*{pixel_sum}"
                    multiplication_freq[(expression, result)] += 1

# === Sort and extract top 1000 ===
top_1000 = sorted(multiplication_freq.items(), key=lambda x: x[1], reverse=True)[:1000]

# === Save top 1000 to CSV ===
with open(csv_output, "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["expression", "value", "frequency"])
    for (expr, value), freq in top_1000:
        writer.writerow([expr, value, freq])

print(f"✅ Top 1000 multiplications saved to {csv_output}")
