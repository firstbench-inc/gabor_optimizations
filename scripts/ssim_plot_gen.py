import ssim
from 512_516 import process_image
import glob
import os
import random
import subprocess
import re

#coe_files = glob("/home/yassss-369/iiitb/python/coe/*.coe")


# === Parameters ===
base_dir = "/home/yassss-369/iiitb/dataset/Training"
bit_width = 8
pad_size = 2
max_images_per_class = 50

# === Get all class folders except 'coe'
class_folders = [
    folder for folder in glob.glob(os.path.join(base_dir, "*"))
    if os.path.isdir(folder) and not folder.endswith("coe")
]

# === Process up to 50 images from each class folder
for class_folder in class_folders:
    image_paths = glob.glob(os.path.join(class_folder, "*.jpg"))

    if not image_paths:
        print(f"No images found in {class_folder}")
        continue

    selected_images = random.sample(image_paths, min(max_images_per_class, len(image_paths)))
    
    print(f"\nProcessing {len(selected_images)} images from: {os.path.basename(class_folder)}")

    for image_path in selected_images:
        try:
            process_image(image_path, bit_width=bit_width, pad_size=pad_size)
        except Exception as e:
            print(f"Failed to process {image_path}: {e}")




base_dir = "/home/yassss-369/iiitb/gabor_optimizations"
file_dir = f"{base_dir}/files/"
testbench_template = f"{base_dir}/45_implementation/test/tb.v"
design_files = [
     f"{base_dir}/45_implementation/test/4orarch3.v",
   
    # add more as needed
]

image_files = sorted(glob.glob(file_dir + "image*.txt"))

# === Process each image ===
for idx, image_path in enumerate(image_files):
    image_name = os.path.splitext(os.path.basename(image_path))[0]  # e.g., image516

    # 1. Read and modify the testbench
    with open(testbench_template, "r") as f:
        tb_code = f.read()

    # Replace input image path
    tb_code = re.sub(r'\$readmemb\(".*?image.*?\.txt"', f'$readmemb("{image_path}"', tb_code)

    # Replace all $fopen(...) lines with image-specific filenames
    tb_code = re.sub(r'\$fopen\(".*?fil_image45\.txt"',
                     f'$fopen("{file_dir}out_{image_name}_45.txt"', tb_code)
    tb_code = re.sub(r'\$fopen\(".*?fil_image90_1\.txt"',
                     f'$fopen("{file_dir}out_{image_name}_90.txt"', tb_code)
    tb_code = re.sub(r'\$fopen\(".*?fil_image135_1\.txt"',
                     f'$fopen("{file_dir}out_{image_name}_135.txt"', tb_code)
    tb_code = re.sub(r'\$fopen\(".*?fil_image180\.txt"',
                     f'$fopen("{file_dir}out_{image_name}_180.txt"', tb_code)

    # 2. Save modified testbench
    tb_temp_path = f"{base_dir}/tb_temp_{image_name}.v"
    with open(tb_temp_path, "w") as f:
        f.write(tb_code)

    # 3. Compile Verilog
    output_exe = f"{base_dir}/sim_{image_name}.out"
    compile_cmd = ["iverilog", "-o", output_exe, tb_temp_path] + design_files
    subprocess.run(compile_cmd, check=True)
    print(f"[{idx+1}/{len(image_files)}] Compiled for: {image_name}")

    # 4. Run Simulation
    subprocess.run(["vvp", output_exe], check=True)
    print(f"[{idx+1}/{len(image_files)}] Simulation done for: {image_name}")

print("✅ All simulations complete. Output saved per image.")



 
