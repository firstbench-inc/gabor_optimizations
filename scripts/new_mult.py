import os
import re
import numpy as np
import cv2
import csv
from skimage.metrics import structural_similarity as ssim
import warnings
import subprocess
import threading
import time
import shutil
from comb_synth_new import runSynthesis
warnings.filterwarnings("ignore")



def run_synthesis_stub(design_path):
    """
    Stub function that simulates running synthesis.
    Replace this with actual synthesis tool call when ready.
    """
    print(f"[SYNTHESIS] Starting synthesis for: {design_path}")
    time.sleep(10)  # Simulate delay for synthesis
    print(f"[SYNTHESIS] Synthesis completed for: {design_path}")


def update_conv_dec_coeffs_single_file(filepath, target_coeff_num, new_dec_values):
    """
    Update only coeffX_dec_multY values in a unified Verilog design file (conv.sv).

    Parameters:
    - filepath (str): Path to the Verilog design file.
    - target_coeff_num (int): Which coeff group to update (1 to 4).
    - new_dec_values (list of int): New decimal values to assign to coeffX_dec_mult1 to coeffX_dec_mult13.
    """
    if target_coeff_num not in [1, 2, 3, 4]:
        raise ValueError("target_coeff_num must be 1, 2, 3, or 4.")
    if not (1 <= len(new_dec_values) <= 5):
        raise ValueError("Provide between 1 to 5 decimal values (you can omit the rest if not present).")

    with open(filepath, 'r') as file:
        content = file.read()

    # Update each coeffX_dec_multY
    for i, value in enumerate(new_dec_values, start=1):
        param = f"coeff{target_coeff_num}_dec_mult{i}"
        pattern = rf"(parameter\s+{param}\s*=\s*)\d+"
        replacement = rf"\g<1>{value}"
        content, count = re.subn(pattern, replacement, content)
        if count == 0:
            print(f"Warning: {param} not found in file. Skipped.")

    with open(filepath, 'w') as file:
        file.write(content)




def read_coe_file(filename, coeff_bits=18, frac_bits=16):
    with open(filename, 'r') as file:
        lines = file.readlines()[2:]  # Skip first two lines
    
    coeffs = [line.strip().rstrip(";") for line in lines if line.strip()]
    coeffs = coeffs[:25]  # Take first 25 coefficients
    parsed_coeffs = []
    
    for coeff in coeffs:
        int_value = int(coeff, 2)
        
        if int_value & (1 << (coeff_bits - 1)):  # Check if sign bit is set
            int_value -= (1 << coeff_bits)  # Convert to negative value
        parsed_coeffs.append(int_value)
    
    kernel = np.array(parsed_coeffs).reshape(5, 5)  # Reshape into 5x5 kernel
    return kernel

def read_image_coe(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()[2:]  # Skip first two lines
    pixels = [int(line.strip().rstrip(',').rstrip(';'), 2) for line in lines if line.strip()]
    img_size = int(np.sqrt(len(pixels)))  # Assume square image
    image = np.array(pixels, dtype=np.uint8).reshape(img_size, img_size)
    return image

def read_image_txt(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()
    pixels = [int(line.strip().replace('x', '0'), 2) for line in lines if line.strip()]
    image = np.array(pixels[:512 * 512], dtype=np.uint8).reshape(512, 512)  # Assume 512x512 image
    return image

def fixed_point_multiply(a, b, frac_width=9):
    """Performs fixed-point binary multiplication."""
    return (a * b)  # Multiply and shift to truncate fractional part

def apply_convolution(image, kernel, frac_width=16):
    output = np.zeros_like(image, dtype=np.uint8)
    pad_size = kernel.shape[0] // 2
    padded_image = np.pad(image, pad_size, mode='constant', constant_values=0)
    for i in range(image.shape[0]):
        for j in range(image.shape[1]):
            acc = 0
            for m in range(kernel.shape[0]):
                for n in range(kernel.shape[1]):
                    acc += fixed_point_multiply(kernel[m, n], padded_image[i+m, j+n], frac_width)
            output[i, j] = acc >> 16

   
    return output


def save_image(image, filename):
    cv2.imwrite(filename, image)

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

def overlay_images(images):
    """Overlays multiple images into one for visual comparison."""
    return np.hstack(images)  # Horizontally concatenate images

def run_vivado_simulation(tcl_script):
    """Runs Vivado simulation with the specified Tcl script."""
    vivado_path = "/tools/Xilinx2024.1/Vivado/2024.1/bin/vivado" 
    subprocess.run([vivado_path, "-mode", "batch", "-source", tcl_script], check=True)
    print(f"Successfully ran {tcl_script}")




def run_iverilog_simulation(design_dir, design_file, testbench_file, output_binary="simulation_out"):
    """Changes directory, compiles, runs the simulation, and returns to the original directory."""

    # Save the current working directory
    original_dir = os.getcwd()
    print(f"present directory : {original_dir}")
    try:
        # Change to the design directory
        print(f"Changing directory to: {design_dir}")
        os.chdir(design_dir)
        print(f"Changed directory to: {design_dir}")

        # # Compile the Verilog design and testbench
        compile_cmd = ["iverilog","-g2012","-o", output_binary, design_file, testbench_file]
        print("Running compile command:", " ".join(compile_cmd))  # Debugging step iverilog -g2012 -o output_newdes.vvp conv.sv tb.sv
        
        subprocess.run(compile_cmd, check=True)
        print("Compilation successful.")

        # # Run the compiled simulation binary
        run_cmd = ["vvp", output_binary]
        print("Running simulation command:", " ".join(run_cmd))  # Debugging step

        subprocess.run(run_cmd, check=True)
        print("Simulation successful1.")

        
    except subprocess.CalledProcessError as e:
        print("Error occurred during execution!")
        print("Error message:", e)

    finally:
        # Change back to the original directory
        os.chdir(original_dir)
        print(f"Returned to original directory:) {original_dir}")


synth_result = {}

def synthesis_wrapper():
    result = runSynthesis('conv', 'evolution/new_config1/config1', "", 'conv')
    synth_result['area'], synth_result['delay'], synth_result['power'] = result

#config_values = [15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15]
#config_values = [6, 5, 5, 4, 2, 7, 4, 2, 3, 3, 6, 4, 2]
#config_values = [6, 6, 3, 5, 6, 4, 3, 7, 4, 7, 6, 5, 2]
#config_values = [15,15,15,15,15] 
config_values = [15,15,15,15,15]
# Top-level output directory
base_output_dir = "/home/sharan_math/gabor/output_verilog/new_misc"
os.makedirs(base_output_dir, exist_ok=True)

# Path to the testbench file
tb_filepath = "/home/sharan_math/gabor/Design/new_design/tb.sv"

mydesign_dir = "/home/sharan_math/gabor/Design/new_design/conv.sv"
    
# update_tb_frac_widths(tb_filepath, config_values)
update_conv_dec_coeffs_single_file(mydesign_dir,target_coeff_num=1, new_dec_values=config_values)



# Create CSV file for this fractional width
csv_file = os.path.join(base_output_dir, "metrics_new.csv")


# Loop over image numbers
# for i in range(500, 501):  # Adjust the range as needed
folder_name = '_'.join(map(str, config_values))
image_output_dir = os.path.join(base_output_dir, folder_name)
# image_output_dir = os.path.join(base_output_dir, str(i))
os.makedirs(image_output_dir, exist_ok=True)

# Copy modified files
copied_design_file = os.path.join(image_output_dir, "conv.sv")
copied_tb_file = os.path.join(image_output_dir, "tb.sv")
shutil.copy(mydesign_dir, copied_design_file)
shutil.copy(tb_filepath, copied_tb_file)

design_file = "conv.sv"  # Only the filename, as we're in the correct directory
testbench_file = "tb.sv"       # Only the filename
design_dir = "/home/sharan_math/gabor/Design/new_design"
design_dir1 = image_output_dir
os.system('cp {} {}'.format(copied_design_file,'/home/sharan_math/gabor/Design/new_design/conv.sv'))


# synth_thread = threading.Thread(target=run_synthesis_stub, args=(mydesign_dir,))
synth_thread = threading.Thread(target=synthesis_wrapper)

#uncomment this for origianl runs
#sim_thread = threading.Thread(target=run_iverilog_simulation, args=(design_dir1, copied_design_file, copied_tb_file))

sim_thread = threading.Thread(target=run_iverilog_simulation, args=(design_dir, 'conv.sv', 'tb.sv'))

synth_thread.start()
sim_thread.start()

synth_thread.join()
sim_thread.join()

angles_list = [45,90,135,180]

# Variables to store sum of metrics for averaging
total_mse = 0
total_psnr = 0
total_ssim = 0
angle_ssim_dict = {}  # Store SSIM per angle

for angle in angles_list:
    coeff_file = f'/home/sharan_math/gabor/COE_files/Coeff_coe_angles/coeff{angle}.coe'
    image_coe_file = f'/home/sharan_math/gabor/COE_files/image_coe/image512.coe'
    image_txt_file = f'/home/sharan_math/gabor/iverilog/fil_image{angle}.txt'
    

    output_image_coe = os.path.join(image_output_dir, f'filtered_image{angle}.png')
    output_image_txt = os.path.join(image_output_dir, f'filtered_image_hw{angle}.png')
    metrics_file = os.path.join(image_output_dir, f'metrics{angle}.txt')  # Separate file for each angle
        
    # Read kernel and images
    kernel = read_coe_file(coeff_file)
    
    image_coe = read_image_coe(image_coe_file)
    image_txt = read_image_txt(image_txt_file)

    # Apply convolution using Python implementation
    filtered_image_coe = apply_convolution(image_coe, kernel)

    
    save_image(filtered_image_coe, output_image_coe)
    save_image(image_txt, output_image_txt)

    # Compute metrics for this specific orientation
    img1 = cv2.imread(output_image_coe, cv2.IMREAD_GRAYSCALE)
    img2 = cv2.imread(output_image_txt, cv2.IMREAD_GRAYSCALE)

    if img1 is None or img2 is None:
        raise ValueError(f"Error: Could not read one or both images: {output_image_coe}, {output_image_txt}")

    metrics = compute_metrics(img1, img2)
    print(f"Frac Width {config_values} - Image 500 - Angle {angle}: Metrics -> {metrics}")

    # Write metrics to individual angle file
    with open(metrics_file, "w") as f:
        for key, value in metrics.items():
            f.write(f"{key}: {value}\n")

    angle_ssim_dict[angle] = metrics["SSIM"]

    # Accumulate metrics for averaging
    total_mse += metrics["MSE"]
    total_psnr += metrics["PSNR"]
    total_ssim += metrics["SSIM"]


        # Compute the average of the metrics
avg_mse = total_mse / len(angles_list)
avg_psnr = total_psnr / len(angles_list)
avg_ssim = total_ssim / len(angles_list)

# Append average metrics and synthesis results to CSV
with open(csv_file, "a", newline="") as f:
    writer = csv.writer(f)
    writer.writerow([
        folder_name,
        avg_mse, avg_psnr, avg_ssim,
        angle_ssim_dict.get(45, "N/A"),
        #angle_ssim_dict.get(90, "N/A"),
        #angle_ssim_dict.get(135, "N/A"),
        #angle_ssim_dict.get(180, "N/A"),
        synth_result.get('area', 'N/A'),
        synth_result.get('delay', 'N/A'),
        synth_result.get('power', 'N/A')
    ])
    print('=============================================================================================================================================================================')
        

