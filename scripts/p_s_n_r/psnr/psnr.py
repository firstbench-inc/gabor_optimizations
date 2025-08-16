import os
import cv2
import glob
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path
from skimage.metrics import (
    peak_signal_noise_ratio as psnr,
)  # 🔄 use PSNR instead of SSIM


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
            psnr_score = psnr(
                sw_image, hw_image, data_range=255
            )  # 🔄 PSNR instead of SSIM
            row[f"PSNR_{angle}"] = psnr_score
        except Exception as e:
            print(f"❌ Error processing {image_name} angle {angle}: {e}")
            row[f"PSNR_{angle}"] = None

    results.append(row)

# === Save Results ===
df = pd.DataFrame(results)
df.to_csv("psnr_results_fp.csv", index=False)
print("✅ PSNR results saved to psnr_results.csv")

# === Histogram Plotting (refined for > 20 dB) ===
bins = np.arange(20, 50.5, 2.5)

for angle in angles:
    col = f"PSNR_{angle}"
    if col not in df.columns:
        continue

    angle_scores = df[col].dropna()
    angle_scores = angle_scores[angle_scores >= 20]  # Filter low values

    if angle_scores.empty:
        print(f"⚠️ No PSNR data ≥ 20 dB for angle {angle}")
        continue

    # Histogram
    hist, bin_edges = np.histogram(angle_scores, bins=bins)

    # Bin labels like: 20.0–22.5
    labels = [f"{bin_edges[i]:.1f}–{bin_edges[i + 1]:.1f}" for i in range(len(hist))]

    # Plot
    plt.figure(figsize=(8, 4))
    plt.bar(labels, hist, width=0.6, color="darkorange")
    plt.title(f"PSNR Histogram (≥ 20 dB) - Angle {angle}°")
    plt.xlabel("PSNR Range (dB)")
    plt.ylabel("Number of Images")
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.savefig(f"psnr_histogram_angle_{angle}.png")
    plt.close()
    print(f"📊 Histogram saved: psnr_histogram_angle_{angle}.png")

    # Average PSNR
    avg = angle_scores.mean()
    print(f"🔢 Average PSNR (≥20 dB) for angle {angle}°: {avg:.2f} dB")
