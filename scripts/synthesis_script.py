import subprocess
import tempfile
import os

yosys_script = """
    yosys -import
    read_verilog -sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/conv.sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/convolution_block_135.sv  /home/yassss-369/iiitb/gabor_optimizations/45_implementation/convolution_block_90.sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/convolution_block_45.sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/convolution_block_90.sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/ram.sv /home/yassss-369/iiitb/gabor_optimizations/45_implementation/fxp_mul.sv 
    synth -top conv 
    opt
    read_liberty -lib /home/yassss-369/iiitb/gabor_optimizations/NANGATE_45nm_TT.lib
"""
with tempfile.NamedTemporaryFile(delete=False, suffix=".tcl", mode="w") as tmpfile:
    tmpfile.write(yosys_script)
    tcl_path = tmpfile.name

try:
    subprocess.run(["yosys", tcl_path], check=True)
    print(f" Yosys synthesis completed successfully using {tcl_path}")
except subprocess.CalledProcessError as e:
    print(" Yosys encountered an error:", e)
finally:
    os.remove(tcl_path)
