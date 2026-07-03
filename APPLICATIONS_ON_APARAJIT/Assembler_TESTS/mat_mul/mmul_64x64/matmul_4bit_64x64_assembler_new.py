#!/usr/bin/env python3
import random

MATRIX_SIZE = 64

# Base addresses (unchanged)
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)

def generate_random_matrix(size, max_val):
    return [[random.randint(0, max_val) for _ in range(size)] for _ in range(size)]

def to_signed_4bit(val):
    val = val & 0xF
    if val >= 8:
        return val - 16
    return val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking:
    - 8 rows (0-7, 8-15, ...) grouped together.
    - 8 column-chunks (cols 0-7, 8-15, ..., 56-63).
    - Storage sequence: Row0_ChunkK, Row1_ChunkK, ..., Row7_ChunkK.
    """
    row_group = row // 8         # Which 8-row group (0..7)
    row_in_group = row % 8       # Row position in group (0..7)
    col_chunk = col // 8         # Which 8-element chunk (0..7)
    col_in_chunk = col % 8       # Position within the chunk (0..7)

    # Bytes per row-group: 8 chunks * 8 rows * 8 elements * 8 bytes = 4096
    # Bytes per chunk-step: 8 rows * 8 elements * 8 bytes = 512
    # Bytes per row-in-chunk: 8 elements * 8 bytes = 64
    
    group_base = C_BASE + (row_group * 4096)
    chunk_base = group_base + (col_chunk * 512)
    row_offset = row_in_group * 64
    
    return chunk_base + row_offset + (col_in_chunk * 8)

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

    # Map C (New 8-row Interleaved)
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = c_byte_address(row, col)
            results_map[byte_addr // 8] = C[row][col]

    # Write Files
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            val_64bit = results_map[word_idx] & 0xFFFFFFFFFFFFFFFF
            f.write(f"0 mem 0x{word_idx:X} 0x{val_64bit:016X}\n")

    print("Success! Clean files generated.")

if __name__ == "__main__":
    main()
