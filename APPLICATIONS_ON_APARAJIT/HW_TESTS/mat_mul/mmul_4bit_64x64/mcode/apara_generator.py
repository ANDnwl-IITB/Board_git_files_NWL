#!/usr/bin/env python3
import random

MATRIX_SIZE = 64

# Base addresses (raw)
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)

# APARA Hardware Memory Offset
APARA_OFFSET = 0x200000

def to_signed_4bit(val):
    val = val & 0xF
    return val - 16 if val >= 8 else val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking (APARA-aligned):
    - Rows grouped in 8s.
    - 8 column-chunks.
    - Sequence: Row0_ChunkK, Row1_ChunkK, ..., Row7_ChunkK.
    """
    row_group = row // 8
    row_in_group = row % 8
    col_chunk = col // 8
    col_in_chunk = col % 8
    
    # 8-Row Interleave math:
    # 4096 per 8-row group, 512 per chunk-step, 64 per row-in-chunk
    offset = (row_group * 4096) + (col_chunk * 512) + (row_in_group * 64) + (col_in_chunk * 8)
    return C_BASE + offset

def main():
    # ... [A/B generation and C computation same as before] ...
    A = [[random.randint(0, 15) for _ in range(MATRIX_SIZE)] for _ in range(MATRIX_SIZE)]
    B = [[random.randint(0, 15) for _ in range(MATRIX_SIZE)] for _ in range(MATRIX_SIZE)]
    C = [[0] * MATRIX_SIZE for _ in range(MATRIX_SIZE)]
    for i in range(MATRIX_SIZE):
        for j in range(MATRIX_SIZE):
            for k in range(MATRIX_SIZE):
                C[i][j] += to_signed_4bit(A[i][k]) * to_signed_4bit(B[k][j])

    # ... [Swizzling A/B logic] ...
    data_map = {}
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            # A (M-Tiles)
            addr_a = A_BASE + (row//8)*256 + ((row%8)//4)*128 + (col//16)*32 + (row%4)*8
            data_map[addr_a//8] = data_map.get(addr_a//8, 0) | ((A[row][col]&0xF) << ((col%16)*4))
            # B (N-Tiles)
            addr_b = B_BASE + (col//8)*256 + ((col%8)//4)*128 + (row//16)*32 + (col%4)*8
            data_map[addr_b//8] = data_map.get(addr_b//8, 0) | ((B[row][col]&0xF) << ((row%16)*4))

    # Map C with Hardware Offset
    results_map = {}
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = c_byte_address(row, col)
            results_map[(APARA_OFFSET + byte_addr) // 8] = C[row][col]

    # Write files
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{APARA_OFFSET + word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            f.write(f"0 mem 0x{word_idx:X} 0x{(results_map[word_idx] & 0xFFFFFFFFFFFFFFFF):016X}\n")

    print(f"APARA-ready files generated with base 0x{APARA_OFFSET:X}")

if __name__ == "__main__":
    main()
