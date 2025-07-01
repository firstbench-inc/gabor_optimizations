import cv2
import numpy as np

# === Parameters ===
image_path = (
    "/home/yassss-369/iiitb/dataset/Training/glioma/1841.jpg"  # Your source JPG file
)
bit_width = 8  # Output precision (8-bit binary)
pad_size = 2  # For 5x5 kernel

# === Step 1: Read and Resize to 512x512 ===
img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)
img_resized = cv2.resize(img, (512, 512))
img_resized = np.clip(img_resized, 0, 255).astype(np.uint8)

# === Step 2: Pad to 516x516 ===
img_padded = np.pad(img_resized, pad_width=pad_size, mode="constant", constant_values=0)

# === Step 3: Save padded image as TXT ===
np.savetxt("image516.txt", img_padded.flatten(), fmt="%d")


flat_bin_512 = [format(val, f"0{bit_width}b") for val in img_resized.flatten()]
with open("image512.coe", "w") as f:
    f.write("memory_initialization_radix=2;\n")
    f.write("memory_initialization_vector=\n")
    for i, val in enumerate(flat_bin_512):
        f.write(f"{val}" + ("\n" if i < len(flat_bin_512) - 1 else ";\n"))


# === Step 1: Read and Resize the Image ===
img = cv2.imread(
    "/home/yassss-369/iiitb/dataset/Training/glioma/1841.jpg", cv2.IMREAD_GRAYSCALE
)
img_resized = cv2.resize(img, (512, 512))
img_resized = np.clip(img_resized, 0, 255).astype(np.uint8)


# === Step 2: Pad to 516x516 ===
pad_size = 2
img_padded = np.pad(img_resized, pad_width=pad_size, mode="constant", constant_values=0)

# === Step 3: Convert to Binary and Save to image516.txt ===
flat_bin_values = [format(pixel, "08b") for pixel in img_padded.flatten()]

with open("image516.txt", "w") as f:
    for bval in flat_bin_values:
        f.write(f"{bval}\n")
