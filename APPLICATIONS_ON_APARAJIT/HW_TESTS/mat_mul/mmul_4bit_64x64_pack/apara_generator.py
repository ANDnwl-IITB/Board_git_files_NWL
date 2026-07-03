#!/usr/bin/env python3
import random

MATRIX_SIZE = 64

# Base addresses (unchanged)
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)

# APARA Hardware Memory Offset (Word Base)
APARA_OFFSET = 0x200000

def generate_random_matrix(size, max_val):
    return [[random.randint(0, max_val) for _ in range(size)] for _ in range(size)]

def to_signed_4bit(val):
    val = val & 0xF
    if val >= 8:
        return val - 16
    return val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking (32-bit dual packing):
    - 8 rows (0-7, 8-15, ...) grouped together.
    - 8 column-chunks (cols 0-7, 8-15, ..., 56-63).
    - Storage sequence: Row0_ChunkK, Row1_ChunkK, ..., Row7_ChunkK.
    - 2 elements (32-bit) are packed per 64-bit word (8 bytes).
    """
    row_group = row // 8         # Which 8-row group (0..7)
    row_in_group = row % 8       # Row position in group (0..7)
    col_chunk = col // 8         # Which 8-element chunk (0..7)
    col_in_chunk = col % 8       # Position within the chunk (0..7)

    # Bytes per row-group: 8 chunks * 8 rows * 4 words * 8 bytes = 2048
    # Bytes per chunk-step: 8 rows * 4 words * 8 bytes = 256
    # Bytes per row-in-chunk: 4 words * 8 bytes = 32

    group_base = C_BASE + (row_group * 2048)
    chunk_base = group_base + (col_chunk * 256)
    row_offset = row_in_group * 32

    # Every 2 columns share the same 64-bit word (8-byte block)
    word_offset = (col_in_chunk // 2) * 8

    return chunk_base + row_offset + word_offset

def main():
    A = generate_random_matrix(MATRIX_SIZE, 15)
    B = generate_random_matrix(MATRIX_SIZE, 15)

    C = [[0] * MATRIX_SIZE for _ in range(MATRIX_SIZE)]
    for i in range(MATRIX_SIZE):
        for j in range(MATRIX_SIZE):
            for k in range(MATRIX_SIZE):
                C[i][j] += to_signed_4bit(A[i][k]) * to_signed_4bit(B[k][j])

    data_map = {}
    results_map = {}

    # Swizzle A (M-Tiles) - Unchanged
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = A_BASE + (row // 8) * 256 + ((row % 8) // 4) * 128 + (col // 16) * 32 + (row % 4) * 8
            word_idx = byte_addr // 8
            if word_idx not in data_map: data_map[word_idx] = 0
            data_map[word_idx] |= ((A[row][col] & 0xF) << ((col % 16) * 4))

    # Swizzle B (N-Tiles) - Unchanged
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = B_BASE + (col // 8) * 256 + ((col % 8) // 4) * 128 + (row // 16) * 32 + (col % 4) * 8
            word_idx = byte_addr // 8
            if word_idx not in data_map: data_map[word_idx] = 0
            data_map[word_idx] |= ((B[row][col] & 0xF) << ((row % 16) * 4))

    # Map C (New 8-row Interleaved - 4 locations per chunk)
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = c_byte_address(row, col)
            word_idx = byte_addr // 8
            
            if word_idx not in results_map:
                results_map[word_idx] = 0
                
            # Mask accumulator to 32 bits for clean packing
            val_32 = C[row][col] & 0xFFFFFFFF
            
            # Even columns (Value 1, 3, 5, 7) go to MSB
            # Odd columns (Value 2, 4, 6, 8) go to LSB
            shift = 32 if (col % 2 == 0) else 0
            
            results_map[word_idx] |= (val_32 << shift)

    # Write Files with APARA Offset
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{APARA_OFFSET + word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            val_64bit = results_map[word_idx] & 0xFFFFFFFFFFFFFFFF
            f.write(f"0 mem 0x{APARA_OFFSET + word_idx:X} 0x{val_64bit:016X}\n")

    print(f"Success! APARA-ready files generated with base offset 0x{APARA_OFFSET:X}.")

if __name__ == "__main__":
    main()
