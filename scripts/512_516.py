import cv2
import numpy as np
from pathlib import Path


def read_and_resize_image(image_path: str, size: tuple = (512, 512)) -> np.ndarray:
    """
    Reads a grayscale image and resizes it to the given size.
    """
    img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
    if img is None:
        raise FileNotFoundError(f"Could not read image at {image_path}")
    img_resized = cv2.resize(img, size)
    return np.clip(img_resized, 0, 255).astype(np.uint8)


def pad_image(image: np.ndarray, pad_size: int = 2) -> np.ndarray:
    """
    Pads the image with zeros.
    """
    return np.pad(image, pad_width=pad_size, mode="constant", constant_values=0)


def save_binary_image_txt(image: np.ndarray, output_txt_path: str, bit_width: int = 8):
    """
    Saves the padded image as binary strings line-by-line in a .txt file.
    """
    flat_bin_values = [format(pixel, f"0{bit_width}b") for pixel in image.flatten()]
    with open(output_txt_path, "w") as f:
        for bval in flat_bin_values:
            f.write(f"{bval}\n")


def save_coe_file(image: np.ndarray, output_coe_path: str, bit_width: int = 8):
    """
    Saves the unpadded image as a .coe memory file in binary format.
    """
    flat_bin = [format(val, f"0{bit_width}b") for val in image.flatten()]
    with open(output_coe_path, "w") as f:
        f.write("memory_initialization_radix=2;\n")
        f.write("memory_initialization_vector=\n")
        for i, val in enumerate(flat_bin):
            f.write(f"{val}" + ("\n" if i < len(flat_bin) - 1 else ";\n"))


def save_decimal_txt(image: np.ndarray, output_txt_path: str):
    """
    Saves the padded image as decimal values line-by-line in a .txt file.
    """
    np.savetxt(output_txt_path, image.flatten(), fmt="%d")


def process_image(image_path: str, bit_width: int = 8, pad_size: int = 2):
    """
    Full pipeline to process an image: resize, pad, and export as .txt and .coe files.
    """
    img_resized = read_and_resize_image(image_path)
    img_padded = pad_image(img_resized, pad_size)

    # Create output filenames
    base_name = Path(image_path).stem
    save_binary_image_txt(
        img_padded, f"../files/data/{base_name}_516_binary.txt", bit_width
    )
    save_coe_file(img_resized, f"../files/data/{base_name}_512.coe", bit_width)
    # save_decimal_txt(img_padded, f"{base_name}_516_decimal.txt")


# === Example Usage ===
if __name__ == "__main__":
    image_path = "/home/yassss-369/iiitb/dataset/Training/glioma/1841.jpg"
    process_image(image_path)
