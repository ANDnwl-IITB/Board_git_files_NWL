#!/usr/bin/env python3
"""
Repeat every value in data.map four total times (original + 3 copies).
Each block starts exactly 16 KB after the previous block's start address.

Assuming 64-bit (8-byte) words:
16 KB = 16,384 bytes = 2,048 word addresses (0x800).
"""

from pathlib import Path
import re
import sys

INPUT_FILE = Path("data.map")
OUTPUT_FILE = Path("data_repeated_4x_16kb_stride.map")

# Define the stride in terms of hardware words
STRIDE_BYTES = 16 * 1024
BYTES_PER_WORD = 8
STRIDE_WORDS = STRIDE_BYTES // BYTES_PER_WORD  # 2048 words (0x800)

LINE_RE = re.compile(
    r"^\s*([0-9A-Fa-f]+)\s*:\s*(0x[0-9A-Fa-f]+)\s*$"
)

def main():
    if not INPUT_FILE.exists():
        print(f"ERROR: Cannot find {INPUT_FILE}")
        sys.exit(1)

    entries = []

    for line_no, line in enumerate(INPUT_FILE.read_text().splitlines(), start=1):
        match = LINE_RE.match(line)

        if not match:
            print(f"ERROR: Invalid line {line_no}: {line}")
            sys.exit(1)

        addr = int(match.group(1), 16)
        value = match.group(2).upper()
        entries.append((addr, value))

    if not entries:
        print("ERROR: Input map is empty.")
        sys.exit(1)

    # Check that addresses are consecutive within the input block
    for i in range(1, len(entries)):
        if entries[i][0] != entries[i - 1][0] + 1:
            print(
                f"ERROR: Addresses are not consecutive between "
                f"0x{entries[i - 1][0]:X} and 0x{entries[i][0]:X}"
            )
            sys.exit(1)

    first_addr = entries[0][0]
    block_size = len(entries)
    
    # Safety Check: Prevent overlapping blocks
    if block_size > STRIDE_WORDS:
        print(f"ERROR: Data block size ({block_size} words) is larger than the 16 KB stride ({STRIDE_WORDS} words). Data will overwrite itself.")
        sys.exit(1)

    # Create the output entries
    output_entries = []

    # Loop 0 to 3 for 4 total copies (original + 3 repeats)
    for repeat_num in range(4):
        # Calculate the new base address using the 16KB stride
        base_addr = first_addr + (repeat_num * STRIDE_WORDS)

        for offset, (_, value) in enumerate(entries):
            output_entries.append((base_addr + offset, value))

    with OUTPUT_FILE.open("w") as f:
        for addr, value in output_entries:
            f.write(f"{addr:06X}: {value}\n")

    print(f"Input range : 0x{first_addr:06X} to 0x{entries[-1][0]:06X}")
    print(f"Entries     : {block_size} (per block)")
    print(f"Stride size : 16 KB (0x{STRIDE_WORDS:X} word addresses)")
    print("Generated block starts:")
    
    for i in range(4):
        print(f"  Block {i+1}: 0x{first_addr + (i * STRIDE_WORDS):06X}")
        
    print(f"Wrote       : {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
