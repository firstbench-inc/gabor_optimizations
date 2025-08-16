def read_coe_data(filepath):
    with open(filepath, "r") as f:
        lines = f.readlines()

    data_lines = []
    for line in lines:
        line = line.strip()
        if line and not line.startswith(";") and "=" not in line:
            parts = line.replace(";", "").split(",")
            data_lines.extend([p.strip() for p in parts if p.strip()])
    return data_lines


def compare_coe_files(file1, file2, output_file):
    data1 = read_coe_data(file1)
    data2 = read_coe_data(file2)

    max_len = max(len(data1), len(data2))
    mismatches = []

    for i in range(max_len):
        val1 = data1[i] if i < len(data1) else "<missing>"
        val2 = data2[i] if i < len(data2) else "<missing>"
        if val1 != val2:
            mismatches.append((i + 1, val1, val2))  # Line numbers start from 1

    with open(output_file, "w") as f:
        if mismatches:
            f.write("Differences found at the following lines:\n")
            for line_num, val1, val2 in mismatches:
                f.write(f"Line {line_num}: File1 = {val1}, File2 = {val2}\n")
        else:
            f.write("The COE files match exactly.\n")


# Example usage
file1 = "../files/fil_image90.txt"
file2 = "../files/fil_image90_1.txt"
output_file = "mismatches.txt"

compare_coe_files(file1, file2, output_file)
