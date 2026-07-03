#!/usr/bin/env python3
import random

# Matrix Dimensions (M=32, K=32, N=128)
M = 32
K = 32
N = 128

# Base byte addresses
A_BASE = 64
B_BASE = A_BASE + (M * K // 2)  # 64 + 512 = 576
C_BASE = B_BASE + (K * N // 2)  # 576 + 2048 = 2624

# APARA Hardware Memory Offset (Word Base)
APARA_OFFSET = 0x200000

def to_signed_4bit(val):
    val = val & 0xF
    return val - 16 if val >= 8 else val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking (32x128):
    - Rows grouped in 8s.
    - 16 column-chunks (128 columns / 8 = 16).
    - Sequence: Row0_ChunkK, Row1_ChunkK, ..., Row7_ChunkK.
    """
    row_group = row // 8
    row_in_group = row % 8
    col_chunk = col // 8
    col_in_chunk = col % 8
    
    # 8-Row Interleave math for 32x128 (8 bytes per element):
    # 8192 bytes per 8-row group (16 chunks * 512 bytes)
    # 512 bytes per chunk-step (8 rows * 64 bytes)
    # 64 bytes per row-in-chunk (8 elements * 8 bytes)
    offset = (row_group * 8192) + (col_chunk * 512) + (row_in_group * 64) + (col_in_chunk * 8)
    return C_BASE + offset

def main():
    print(f"Generating Matrices: A({M}x{K}), B({K}x{N})...")
    A = [[random.randint(0, 15) for _ in range(K)] for _ in range(M)]
    B = [[random.randint(0, 15) for _ in range(N)] for _ in range(K)]
    C = [[0] * N for _ in range(M)]
    
    print("Computing Golden C = A x B (Using SIGNED i4 Math)...")
    for i in range(M):
        for j in range(N):
            for k in range(K):
                C[i][j] += to_signed_4bit(A[i][k]) * to_signed_4bit(B[k][j])

    data_map = {}
    
    print("Swizzling Matrix A (M-Tiles) and Matrix B (N-Tiles)...")
    
    # Swizzle Matrix A (32x32 block layout)
    for row in range(M):
        for col in range(K):
            addr_a = A_BASE + (row//8)*128 + ((row%8)//4)*64 + (col//16)*32 + (row%4)*8
            data_map[addr_a//8] = data_map.get(addr_a//8, 0) | ((A[row][col]&0xF) << ((col%16)*4))
            
    # Swizzle Matrix B (32x128 block layout)
    for row in range(K):
        for col in range(N):
            addr_b = B_BASE + (col//8)*128 + ((col%8)//4)*64 + (row//16)*32 + (col%4)*8
            data_map[addr_b//8] = data_map.get(addr_b//8, 0) | ((B[row][col]&0xF) << ((row%16)*4))

    print("Mapping Matrix C (8-row Interleaved)...")
    results_map = {}
    for row in range(M):
        for col in range(N):
            byte_addr = c_byte_address(row, col)
            results_map[byte_addr // 8] = C[row][col]

    # Write files using APARA Hardware Offsets
    print("Writing data.map...")
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{APARA_OFFSET + word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    print("Writing result.txt...")
    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            f.write(f"0 mem 0x{APARA_OFFSET + word_idx:X} 0x{(results_map[word_idx] & 0xFFFFFFFFFFFFFFFF):016X}\n")

    print(f"Success! APARA-ready 32x128 files generated.")
    print(f"Hardware Memory Map: A_Base=0x{APARA_OFFSET + (A_BASE//8):X}, B_Base=0x{APARA_OFFSET + (B_BASE//8):X}, C_Base=0x{APARA_OFFSET + (C_BASE//8):X}")

if __name__ == "__main__":
    main()
