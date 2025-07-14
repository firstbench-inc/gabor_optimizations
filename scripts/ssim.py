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
img1 = read_image_txt("../files/fil_image45.txt")
img2 = read_image_coe("../files/image_fixed_45.coe")

img3 = read_image_txt("../files/fil_image90_1.txt")
img4 = read_image_coe("../files/image_fixed_90.coe")

img5 = read_image_txt("../files/fil_image135_1.txt")
img6 = read_image_coe("../files/image_fixed_135.coe")

img7 = read_image_txt("../files/fil_image180.txt")
img8 = read_image_coe("../files/image_fixed_180.coe")


# Save images for visual check (optional)
save_image("../images/45_txt.jpg", img1)
save_image("../images/45_coe.jpg", img2)
save_image("../images/45_txt.jpg", img3)
save_image("../images/45_coe.jpg", img4)
save_image("../images/45_txt.jpg", img5)
save_image("../images/45_coe.jpg", img6)
save_image("../images/45_txt.jpg", img7)
save_image("../images/45_coe.jpg", img8)

# Compute SSIM
print(calculate_ssim(img1, img2))
print(calculate_ssim(img3, img4))
print(calculate_ssim(img5, img6))
print(calculate_ssim(img7, img8))
