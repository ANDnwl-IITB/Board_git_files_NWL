#!/usr/bin/env python3
import random

MATRIX_SIZE = 32

# Base addresses for 32x32 
# 32x32 = 1024 elements (512 bytes per matrix for A and B)
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 64 + 512 = 576
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 576 + 512 = 1088

def to_signed_4bit(val):
    val = val & 0xF
    return val - 16 if val >= 8 else val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking (32x32):
    - Rows grouped in 8s.
    - 4 column-chunks (32 columns / 8 = 4).
    - Sequence: Row0_ChunkK, Row1_ChunkK, ..., Row7_ChunkK.
    """
    row_group = row // 8
    row_in_group = row % 8
    col_chunk = col // 8
    col_in_chunk = col % 8
    
    # 8-Row Interleave math for 32x32 (8 bytes per element):
    # 2048 bytes per 8-row group, 512 bytes per chunk-step, 64 bytes per row-in-chunk
    offset = (row_group * 2048) + (col_chunk * 512) + (row_in_group * 64) + (col_in_chunk * 8)
    return C_BASE + offset

def main():
    print(f"Generating {MATRIX_SIZE}x{MATRIX_SIZE} Matrices...")
    A = [[random.randint(0, 15) for _ in range(MATRIX_SIZE)] for _ in range(MATRIX_SIZE)]
    B = [[random.randint(0, 15) for _ in range(MATRIX_SIZE)] for _ in range(MATRIX_SIZE)]
    C = [[0] * MATRIX_SIZE for _ in range(MATRIX_SIZE)]
    
    print("Computing Golden C = A x B (Using SIGNED i4 Math)...")
    for i in range(MATRIX_SIZE):
        for j in range(MATRIX_SIZE):
            for k in range(MATRIX_SIZE):
                C[i][j] += to_signed_4bit(A[i][k]) * to_signed_4bit(B[k][j])

    data_map = {}
    
    print("Swizzling Matrix A and Matrix B...")
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            # A (M-Tiles scaled for 32 cols)
            addr_a = A_BASE + (row//8)*128 + ((row%8)//4)*64 + (col//16)*32 + (row%4)*8
            data_map[addr_a//8] = data_map.get(addr_a//8, 0) | ((A[row][col]&0xF) << ((col%16)*4))
            
            # B (N-Tiles scaled for 32 rows)
            addr_b = B_BASE + (col//8)*128 + ((col%8)//4)*64 + (row//16)*32 + (col%4)*8
            data_map[addr_b//8] = data_map.get(addr_b//8, 0) | ((B[row][col]&0xF) << ((row%16)*4))

    print("Mapping Matrix C (8-row Interleaved)...")
    results_map = {}
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            byte_addr = c_byte_address(row, col)
            results_map[byte_addr // 8] = C[row][col]

    # Write files using Standard Offsets (No APARA 0x200000 base)
    print("Writing data.map...")
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    print("Writing result.txt...")
    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            f.write(f"0 mem 0x{word_idx:X} 0x{(results_map[word_idx] & 0xFFFFFFFFFFFFFFFF):016X}\n")

    print(f"Success! Standard 32x32 files generated.")
    print(f"Memory Map: A_Base=0x{A_BASE:X}, B_Base=0x{B_BASE:X}, C_Base=0x{C_BASE:X}")

if __name__ == "__main__":
    main()
