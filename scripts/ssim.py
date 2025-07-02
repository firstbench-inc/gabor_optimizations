import cv2
import numpy as np
from skimage.metrics import structural_similarity as ssim


def read_image_txt(filename):
    with open(filename, "r") as file:
        lines = file.readlines()
    pixels = [int(line.strip().replace("x", "0"), 2) for line in lines if line.strip()]
    image = np.array(pixels[: 512 * 512], dtype=np.uint8).reshape(512, 512)
    return image


def save_image(image_path, image):
    cv2.imwrite(image_path, image)


def read_image_coe(filename):
    with open(filename, "r") as file:
        lines = file.readlines()[2:]
    pixels = [int(line.strip().rstrip(",;"), 2) for line in lines if line.strip()]
    image = np.array(pixels[: 512 * 512], dtype=np.uint8).reshape(512, 512)
    return image


def calculate_ssim(image1, image2):
    return ssim(image1, image2)


# Read images first
img1 = read_image_txt("../files/fil_image90.txt")
img2 = read_image_coe("../files/image_fixed_90.coe")

# Save images for visual check (optional)
save_image("../images/90_txt.jpg", img1)
save_image("../images/90_coe.jpg", img2)

# Compute SSIM
print(calculate_ssim(img1, img2))
