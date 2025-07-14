import pandas as pd
import math

# Read CSV
df = pd.read_csv("multiplication_top1000.csv")

# Filter frequency > 10 million
filtered_df = df[df["frequency"] > 1_000_000].copy()

# Extract coefficient and sum of pixels
filtered_df["coeff"] = filtered_df["expression"].str.split("*").str[0].astype(int)
filtered_df["sum_pixel"] = filtered_df["expression"].str.split("*").str[1].astype(int)

# Determine unique coefficients and map to index
unique_coeffs = sorted(filtered_df["coeff"].unique())
coeff_to_index = {coeff: idx for idx, coeff in enumerate(unique_coeffs)}

# Compute max sum_pixel and its bit-width
max_sum_pixel = filtered_df["sum_pixel"].max()
sum_pixel_bits = math.ceil(math.log2(max_sum_pixel + 1))

# Compute output width (30 bits + 1 valid bit)
OUTPUT_WIDTH = 31

# Start SV file generation
with open("lut.sv", "w") as f:
    f.write("// Auto-generated LUT file\n")
    f.write(f"module lut(input logic [16:0] coeff_value,\n")
    f.write(f"            input logic [{sum_pixel_bits - 1}:0] sum_pixel,\n")
    f.write(f"            output logic [{OUTPUT_WIDTH - 1}:0] result);\n\n")

    f.write("    logic [2:0] coeff_index;\n\n")

    f.write("    always_comb begin\n")
    f.write("        unique case (coeff_value)\n")
    for coeff, index in coeff_to_index.items():
        sv_val = f"{(coeff + (1 << 17)) % (1 << 17):017b}"  # 17-bit 2's complement
        f.write(f"            17'b{sv_val}: coeff_index = 3'd{index};\n")
    f.write("            default: coeff_index = 3'd0;\n")
    f.write("        endcase\n")
    f.write("    end\n\n")

    f.write(
        f"    logic [{OUTPUT_WIDTH - 1}:0] lut[{len(coeff_to_index)}][{max_sum_pixel + 1}];\n\n"
    )

    f.write("    always_comb begin\n")
    f.write("        result = lut[coeff_index][sum_pixel];\n")
    f.write("    end\n\n")

    f.write("    initial begin\n")
    for _, row in filtered_df.iterrows():
        coeff = row["coeff"]
        sum_pix = row["sum_pixel"]
        value = int(row["value"])

        index = coeff_to_index[coeff]
        signed_val = value & ((1 << 30) - 1)  # 30-bit result
        final_val = (1 << 30) | signed_val  # set MSB = 1 (valid bit)

        f.write(f"        lut[{index}][{sum_pix}] = 31'b{final_val:031b};\n")
    f.write("    end\n")
    f.write("endmodule\n")

