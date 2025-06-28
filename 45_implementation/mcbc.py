import cv2
import os
import numpy as np
from skimage.metrics import structural_similarity as ssim


def save_image(image, filename):
    cv2.imwrite(filename, image)

def read_image_txt(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()
    pixels = [int(line.strip().replace('x', '0'), 2) for line in lines if line.strip()]
    image = np.array(pixels[:512 * 512], dtype=np.uint8).reshape(512, 512)  # Assume 512x512 image
    return image

def calculate_mse(original, processed):
    return np.mean((original - processed) ** 2)

def calculate_psnr(original, processed):
    mse = calculate_mse(original, processed)
    return float('inf') if mse == 0 else 10 * np.log10((255.0 ** 2) / mse)

def calculate_ssim(original, processed):
    return ssim(original, processed, data_range=processed.max() - processed.min())



def compute_metrics(original, processed):
    """Computes PSNR, SSIM, and MSE."""
    return {
        "MSE": calculate_mse(original, processed),
        "PSNR": calculate_psnr(original, processed),
        "SSIM": calculate_ssim(original, processed),
    }

angles_list = [45,90,135,180]

for angle in angles_list:
    image_output_dir = f'/home/sharan_math/gabor/Design/new_design'

    #image_txt_file = f'/home/sharan_math/gabor/iverilog/fil_image90.txt'
    #image_txt = read_image_txt(image_txt_file)
    output_image_txt = os.path.join(image_output_dir, f'filtered_image_hw{angle}.png')
    
    output_image_coe = os.path.join(image_output_dir, f'filtered_image{angle}.png')

    img1 = cv2.imread(output_image_coe, cv2.IMREAD_GRAYSCALE)
    img2 = cv2.imread(output_image_txt, cv2.IMREAD_GRAYSCALE)



    if img1 is None or img2 is None:
        raise ValueError(f"Error: Could not read one or both images: {output_image_coe}, {output_image_txt}")

    metrics = compute_metrics(img1, img2)

    print(f"New Design - Angle {angle}: Metrics -> {metrics}")
