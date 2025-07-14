def parse_vcd(filename, target_id):
    """
    Parse a VCD file and extract signal values for a specific ID (like '0' or 'h').

    Returns:
        Dictionary: timestamp -> binary value for that ID
    """
    time_to_value = {}
    current_time = 0
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line.startswith("#"):
                current_time = int(line[1:])
            elif line.startswith("b") and line.endswith(target_id):
                # Example: "b00101010 0"
                value = line.split()[0][1:]  # Get binary value after 'b'
                time_to_value[current_time] = value
    return time_to_value


def compare_vcd_files(file1, file2, id1="0", id2="h", output_file="mismatches.txt"):
    """
    Compare two VCD files for mismatches in signal values for the specified IDs.

    Args:
        file1: First VCD file containing ID1
        file2: Second VCD file containing ID2
        id1: Signal ID in file1 (e.g., '0')
        id2: Signal ID in file2 (e.g., 'h')
        output_file: File to write mismatches to
    """
    data1 = parse_vcd(file1, id1)
    data2 = parse_vcd(file2, id2)

    # Compare only common timestamps
    common_times = sorted(set(data1.keys()) & set(data2.keys()))

    with open(output_file, "w") as out:
        mismatch_count = 0
        for t in common_times:
            val1 = data1[t]
            val2 = data2[t]
            if val1 != val2:
                mismatch_count += 1
                out.write(f"Time {t}: {val1} != {val2}\n")

        if mismatch_count == 0:
            out.write("No mismatches found.\n")

    print(
        f"✅ Mismatch report saved to '{output_file}' with {mismatch_count} mismatch(es)."
    )


# Example usage
if __name__ == "__main__":
    # Replace with your actual file names
    compare_vcd_files(
        "../45_implementation/test/tb_parallel_design.vcd",
        "../45_implementation/tb.vcd",
    )
