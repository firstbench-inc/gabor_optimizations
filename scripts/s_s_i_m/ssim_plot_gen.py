import cv2
import numpy as np
import os
import glob
import random
from pathlib import Path

# === PARAMETERS ===
training_dir = "/home/yassss-369/iiitb/dataset/Training"
output_base_dir = "../files/data"
bit_width = 8
pad_size = 2
max_images_per_class = 50


# === FUNCTIONS ===
def read_and_resize_image(image_path: str, size: tuple = (512, 512)) -> np.ndarray:
    img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
    if img is None:
        raise FileNotFoundError(f"Could not read image at {image_path}")
    img_resized = cv2.resize(img, size)
    return np.clip(img_resized, 0, 255).astype(np.uint8)


def pad_image(image: np.ndarray, pad_size: int = 2) -> np.ndarray:
    return np.pad(image, pad_width=pad_size, mode="constant", constant_values=0)


def save_binary_image_txt(image: np.ndarray, output_txt_path: Path, bit_width: int = 8):
    flat_bin_values = [format(pixel, f"0{bit_width}b") for pixel in image.flatten()]
    with open(output_txt_path, "w") as f:
        for bval in flat_bin_values:
            f.write(f"{bval}\n")


def save_coe_file(image: np.ndarray, output_coe_path: Path, bit_width: int = 8):
    flat_bin = [format(val, f"0{bit_width}b") for val in image.flatten()]
    with open(output_coe_path, "w") as f:
        f.write("memory_initialization_radix=2;\n")
        f.write("memory_initialization_vector=\n")
        for i, val in enumerate(flat_bin):
            f.write(f"{val}" + ("\n" if i < len(flat_bin) - 1 else ";\n"))


def process_image(
    image_path: str,
    bit_width: int = 8,
    pad_size: int = 2,
    output_base_dir: str = "../files/data",
):
    base_name = Path(image_path).stem
    output_dir = Path(output_base_dir) / base_name
    output_dir.mkdir(parents=True, exist_ok=True)

    img_resized = read_and_resize_image(image_path)
    img_padded = pad_image(img_resized, pad_size)

    save_binary_image_txt(
        img_padded, output_dir / f"{base_name}_516_binary.txt", bit_width
    )
    save_coe_file(img_resized, output_dir / f"{base_name}_512.coe", bit_width)


# === MAIN DRIVER ===
if __name__ == "__main__":
    os.makedirs(output_base_dir, exist_ok=True)

    class_folders = [
        folder
        for folder in glob.glob(os.path.join(training_dir, "*"))
        if os.path.isdir(folder) and not folder.endswith("coe")
    ]

    for class_folder in class_folders:
        image_paths = glob.glob(os.path.join(class_folder, "*.jpg"))
        if not image_paths:
            continue

        selected_images = random.sample(
            image_paths, min(max_images_per_class, len(image_paths))
        )
        print(f"📂 {os.path.basename(class_folder)} → {len(selected_images)} images")

        for image_path in selected_images:
            try:
                process_image(
                    image_path,
                    bit_width=bit_width,
                    pad_size=pad_size,
                    output_base_dir=output_base_dir,
                )
                print(f"  ✅ Converted: {os.path.basename(image_path)}")
            except Exception as e:
                print(f"  ❌ Failed: {image_path} — {e}")
