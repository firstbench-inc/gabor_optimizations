import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os

# --- Figure size in cm -> inches ---
CM_PER_IN = 2.54
FIG_W_CM = 8.5
FIG_H_CM = 6.5
FIGSIZE_IN = (FIG_W_CM / CM_PER_IN, FIG_H_CM / CM_PER_IN)

# === Highlighting Configuration ===
labels = ["NSGA-3 + Clustering", "Clustering", "NSGA-3"]
highlight_label = "NSGA-3 + Clustering"
highlight_color = "#8B0000"  # Black for emphasis

# Color palette for non-highlighted curves
ieee_colors = [
    "#ff7f0e",  # Clustering (orange)
    "#1f77b4",  # NSGA-3 (blue)
]

# === Input CSV Files ===
csv_files = [
    "ssim_results.csv",
    "ssim_results_fp.csv",
    "ssim_result_nsga.csv",
]

output_dir = "combined_ssim_plots"
os.makedirs(output_dir, exist_ok=True)

# === Read all CSVs ===
dfs = []
for f in csv_files:
    if not os.path.exists(f) or os.path.getsize(f) == 0:
        print(f"⚠️ Skipping missing/empty file: {f}")
        continue
    dfs.append(pd.read_csv(f))

# Check if we still have data
if not dfs:
    raise RuntimeError("❌ No valid CSVs to process.")

# Extract angles from the first valid CSV
angles = [col.split("_")[1] for col in dfs[0].columns if col.startswith("SSIM_")]

# === Generate combined dot plots for each angle ===
for angle in angles:
    fig, ax = plt.subplots(figsize=FIGSIZE_IN)

    color_idx = 0  # Reset color index for non-highlighted labels

    for idx, df in enumerate(dfs):
        col = f"SSIM_{angle}"
        if col not in df.columns:
            continue

        scores = df[col].dropna().values
        if scores.size == 0:
            continue

        mean_score = np.mean(scores)
        label = labels[idx]

        if label == highlight_label:
            ax.scatter(
                range(len(scores)),
                scores,
                label=f"{label} ({mean_score:.3f})",
                color=highlight_color,
                s=14,
                marker="o",
                alpha=0.9,
                zorder=3,  # on top
            )
        else:
            ax.scatter(
                range(len(scores)),
                scores,
                label=f"{label} ({mean_score:.3f})",
                color=ieee_colors[color_idx % len(ieee_colors)],
                s=8,
                marker="o",
                alpha=0.6,
                zorder=2,
            )
            color_idx += 1

    ax.set_title(f"SSIM vs Image Index ({angle}°)", fontsize=8)
    ax.set_xlabel("Image Index", fontsize=7)
    ax.set_ylabel("SSIM", fontsize=7)
    ax.set_ylim(0.6, 1.0)
    ax.grid(True, linestyle="--", alpha=0.4, linewidth=0.4)
    ax.tick_params(axis="both", labelsize=6, width=0.4, length=2)

    ax.legend(loc="lower right", fontsize=6, frameon=False)
    fig.tight_layout(pad=0.5)

    plot_path = f"{output_dir}/ssim_comparison_angle_{angle}.png"
    fig.savefig(plot_path, dpi=300, bbox_inches="tight")
    plt.close(fig)
    print(f"✅ Combined plot saved: {plot_path}")
