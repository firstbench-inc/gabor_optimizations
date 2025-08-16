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
from combinationalSynthesizer import runSynthesis
warnings.filterwarnings("ignore")



def run_synthesis_stub(design_path):
    """
    Stub function that simulates running synthesis.
    Replace this with actual synthesis tool call when ready.
    """
    print(f"[SYNTHESIS] Starting synthesis for: {design_path}")
    time.sleep(10)  # Simulate delay for synthesis
    print(f"[SYNTHESIS] Synthesis completed for: {design_path}")



def update_tb_frac_widths(tb_filepath, new_values):
    """
    Update each `frac_widthX` parameter in the testbench file with a new value from the list.
    
    Parameters:
    - tb_filepath (str): Path to the Verilog testbench file.
    - new_values (list): List of new values to replace frac_width1, frac_width2, ...
    """
    with open(tb_filepath, "r") as f:
        content = f.read()

    # Build a mapping from parameter name to new value
    new_frac_values = {f"frac_width{i+1}": val for i, val in enumerate(new_values)}

    # Function to replace parameter values
    def replacer(match):
        param_name = match.group(1)
        if param_name in new_frac_values:
            return f"parameter   {param_name} = {new_frac_values[param_name]};"
        else:
            return match.group(0)  # Leave unchanged if not in our list

    # Regex pattern to match each frac_width parameter line
    pattern = r"parameter\s+(frac_width\d+)\s*=\s*\d+\s*;"

    content_new = re.sub(pattern, replacer, content)

    with open(tb_filepath, "w") as f:
        f.write(content_new)

def update_tb_frac_mults(design_filepath, target_coeff_num, new_dec_values):
    """
    Update only the specified coeffX_dec_multY parameter values in a Verilog design file.

    Parameters:
    - design_filepath (str): Path to the Verilog design file.
    - target_coeff_num (int): The coefficient group to update (1 to 4).
    - new_dec_values (list of int): List of 13 new values to update.
    """
    if len(new_dec_values) != 13:
        raise ValueError("You must provide exactly 13 values for dec_mult parameters.")
    if target_coeff_num not in [1, 2, 3, 4]:
        raise ValueError("target_coeff_num must be between 1 and 4.")

    with open(design_filepath, "r") as f:
        content = f.read()

    for i in range(1, 14):  # coeffX_dec_mult1 to coeffX_dec_mult13
        param_name = f"mult{target_coeff_num}_frac_width{i}"
        pattern = rf"(parameter\s+{param_name}\s*=\s*)\d+(\s*,?)"
        value = new_dec_values[i - 1]

        # Replace matched value using regex groups
        content = re.sub(pattern, lambda m: f"{m.group(1)}{value}{m.group(2)}", content)

    with open(design_filepath, "w") as f:
        f.write(content)


def update_design_dec_mults(design_filepath, target_coeff_num, new_dec_values):
    """
    Update only the specified coeffX_dec_multY parameter values in a Verilog design file.

    Parameters:
    - design_filepath (str): Path to the Verilog design file.
    - target_coeff_num (int): The coefficient group to update (1 to 4).
    - new_dec_values (list of int): List of 13 new values to update.
    """
    if len(new_dec_values) != 13:
        raise ValueError("You must provide exactly 13 values for dec_mult parameters.")
    if target_coeff_num not in [1, 2, 3, 4]:
        raise ValueError("target_coeff_num must be between 1 and 4.")

    with open(design_filepath, "r") as f:
        content = f.read()

    for i in range(1, 14):  # coeffX_dec_mult1 to coeffX_dec_mult13
        param_name = f"coeff{target_coeff_num}_dec_mult{i}"
        pattern = rf"(parameter\s+{param_name}\s*=\s*)\d+(\s*,?)"
        value = new_dec_values[i - 1]

        # Replace matched value using regex groups
        content = re.sub(pattern, lambda m: f"{m.group(1)}{value}{m.group(2)}", content)

    with open(design_filepath, "w") as f:
        f.write(content)


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
        compile_cmd = ["iverilog", "-o", output_binary, design_file, testbench_file]
        print("Running compile command:", " ".join(compile_cmd))  # Debugging step
        
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
    result = runSynthesis('4orarch3', 'evolution/config1', "", 'conv_unit')
    synth_result['area'], synth_result['delay'], synth_result['power'] = result

config_values = [15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15]
#config_values = [6, 5, 5, 4, 2, 7, 4, 2, 3, 3, 6, 4, 2]
#config_values = [6, 6, 3, 5, 6, 4, 3, 7, 4, 7, 6, 5, 2]
#config_values = [7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7] 
#config_values = [15,15,15,15,15]
# Top-level output directory
base_output_dir = "/home/sharan_math/gabor/output_verilog/final"
os.makedirs(base_output_dir, exist_ok=True)

# Path to the testbench file
tb_filepath = "/home/sharan_math/gabor/Design/tb.v"

mydesign_dir = "/home/sharan_math/gabor/Design/4orarch3.v"
    
# update_tb_frac_widths(tb_filepath, config_values)

update_design_dec_mults(mydesign_dir,target_coeff_num=1, new_dec_values=config_values)

update_tb_frac_mults(tb_filepath,target_coeff_num=1, new_dec_values=config_values)


update_design_dec_mults(mydesign_dir,target_coeff_num=2, new_dec_values=config_values)

update_tb_frac_mults(tb_filepath,target_coeff_num=2, new_dec_values=config_values)


update_design_dec_mults(mydesign_dir,target_coeff_num=3, new_dec_values=config_values)

update_tb_frac_mults(tb_filepath,target_coeff_num=3, new_dec_values=config_values)


update_design_dec_mults(mydesign_dir,target_coeff_num=4, new_dec_values=config_values)

update_tb_frac_mults(tb_filepath,target_coeff_num=4, new_dec_values=config_values)

# Create CSV file for this fractional width
csv_file = os.path.join(base_output_dir, "metrics_abcd.csv")


# Loop over image numbers
# for i in range(500, 501):  # Adjust the range as needed
folder_name = '_'.join(map(str, config_values))
image_output_dir = os.path.join(base_output_dir, folder_name)
# image_output_dir = os.path.join(base_output_dir, str(i))
os.makedirs(image_output_dir, exist_ok=True)

# Copy modified files
copied_design_file = os.path.join(image_output_dir, "4orarch3.v")
copied_tb_file = os.path.join(image_output_dir, "tb.v")
shutil.copy(mydesign_dir, copied_design_file)
shutil.copy(tb_filepath, copied_tb_file)

design_file = "4orarch3.v"  # Only the filename, as we're in the correct directory
testbench_file = "tb.v"       # Only the filename
design_dir = "/home/sharan_math/gabor/Design"
design_dir1 = image_output_dir
os.system('cp {} {}'.format(copied_design_file,'/home/sharan_math/gabor/Design/4orarch3.v'))


# synth_thread = threading.Thread(target=run_synthesis_stub, args=(mydesign_dir,))
synth_thread = threading.Thread(target=synthesis_wrapper)

#uncomment this for origianl runs
#sim_thread = threading.Thread(target=run_iverilog_simulation, args=(design_dir1, copied_design_file, copied_tb_file))

sim_thread = threading.Thread(target=run_iverilog_simulation, args=(design_dir, '4orarch3.v', 'tb.v'))

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
        #angle_ssim_dict.get(45, "N/A"),
        #angle_ssim_dict.get(90, "N/A"),
        #angle_ssim_dict.get(135, "N/A"),
        angle_ssim_dict.get(180, "N/A"),
        synth_result.get('area', 'N/A'),
        synth_result.get('delay', 'N/A'),
        synth_result.get('power', 'N/A')
    ])
    print('=============================================================================================================================================================================')
        

