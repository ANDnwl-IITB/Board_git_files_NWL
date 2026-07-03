#!/usr/bin/env python3

import struct
import math
import re


def hex_to_double(hex_string):

    hex_string = hex_string.strip()

    if hex_string.startswith("0x"):
        hex_string = hex_string[2:]

    value = int(hex_string, 16)

    return struct.unpack(">d", struct.pack(">Q", value))[0]


def main():

    N = int(input("Enter FFT size N (e.g. 512): "))

    expected_outputs = 2 * N

    with open("run.log", "r") as f:
        lines = f.readlines()

    # Keep only FFT output lines
    fft_lines = []

    for line in lines:

        if "PostCondition Mem[" not in line:
            continue

        fft_lines.append(line.strip())

    # Take last 2*N outputs
    fft_lines = fft_lines[-expected_outputs:]

    total_entries = 0
    exact_matches = 0

    abs_errors = []
    rel_errors = []

    pattern_error = re.compile(
        r"Mem\[0x([0-9a-fA-F]+)\]\s*=\s*(0x[0-9a-fA-F]+),\s*expected\s*(0x[0-9a-fA-F]+)"
    )

    pattern_info = re.compile(
        r"Mem\[0x([0-9a-fA-F]+)\]\s*=\s*(0x[0-9a-fA-F]+)"
    )

    with open("accuracy_report.txt", "w") as report:

        report.write(
            "====================================================\n"
        )
        report.write(
            "FFT ACCURACY REPORT\n"
        )
        report.write(
            "====================================================\n\n"
        )

        for line in fft_lines:

            total_entries += 1

            if line.startswith("Info:"):

                m = pattern_info.search(line)

                if m:

                    addr = int(m.group(1), 16)

                    actual_hex = m.group(2)

                    actual = hex_to_double(actual_hex)

                    exact_matches += 1

                    report.write(
                        f"0x{addr:X} MATCH\n"
                    )

                continue

            m = pattern_error.search(line)

            if not m:
                continue

            addr = int(m.group(1), 16)

            actual_hex = m.group(2)
            expected_hex = m.group(3)

            actual = hex_to_double(actual_hex)
            expected = hex_to_double(expected_hex)

            abs_err = abs(actual - expected)

            if abs(expected) > 1e-300:
                rel_err = (abs_err / abs(expected)) * 100.0
            else:
                rel_err = 0.0

            abs_errors.append(abs_err)
            rel_errors.append(rel_err)

            report.write(
                f"0x{addr:X}  "
                f"actual={actual:.15e}  "
                f"expected={expected:.15e}  "
                f"abs_err={abs_err:.15e}  "
                f"rel_err={rel_err:.15e}%\n"
            )

        report.write("\n\n")

        if len(abs_errors) > 0:

            max_abs_error = max(abs_errors)
            avg_abs_error = sum(abs_errors) / len(abs_errors)

            rms_error = math.sqrt(
                sum(x * x for x in abs_errors)
                / len(abs_errors)
            )

            max_rel_error = max(rel_errors)
            avg_rel_error = sum(rel_errors) / len(rel_errors)

        else:

            max_abs_error = 0.0
            avg_abs_error = 0.0
            rms_error = 0.0
            max_rel_error = 0.0
            avg_rel_error = 0.0

        report.write(
            "====================================================\n"
        )
        report.write(
            "SUMMARY\n"
        )
        report.write(
            "====================================================\n"
        )

        report.write(
            f"FFT Size                 : {N}\n"
        )

        report.write(
            f"Output Entries           : {total_entries}\n"
        )

        report.write(
            f"Exact Matches            : {exact_matches}\n"
        )

        report.write(
            f"Mismatch Count           : {total_entries - exact_matches}\n"
        )

        report.write(
            f"Match Percentage         : "
            f"{100.0 * exact_matches / total_entries:.6f}%\n"
        )

        report.write(
            f"Max Absolute Error       : "
            f"{max_abs_error:.15e}\n"
        )

        report.write(
            f"Average Absolute Error   : "
            f"{avg_abs_error:.15e}\n"
        )

        report.write(
            f"RMS Error                : "
            f"{rms_error:.15e}\n"
        )

        report.write(
            f"Max Relative Error (%)   : "
            f"{max_rel_error:.15e}\n"
        )

        report.write(
            f"Avg Relative Error (%)   : "
            f"{avg_rel_error:.15e}\n"
        )

    print("Generated accuracy_report.txt")

    print("\n======================================")
    print("FFT ACCURACY SUMMARY")
    print("======================================")


    print(
    "Max Relative Error    : {:.12e}%".format(
        max_rel_error
    )
)

    print(
    "Average Relative Error: {:.12e}%".format(
        avg_rel_error
    )
)

    print(
    "Max Absolute Error    : {:.12e}".format(
        max_abs_error
    )
)

    print(
    "Average Absolute Error: {:.12e}".format(
        avg_abs_error
    )
)

    print(
    "RMS Error             : {:.12e}".format(
        rms_error
    )
)

    print("======================================\n")
    print("The total d-mem consumed is: ", 24*N, " Bytes\n")
if __name__ == "__main__":
    main()
