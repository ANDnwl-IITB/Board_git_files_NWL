#!/usr/bin/env python3
import random

# Matrix Dimensions
M_SIZE = 32   # Rows of A, Rows of C
K_SIZE = 128  # Cols of A, Rows of B (The Deep Inner Dimension)
N_SIZE = 32   # Cols of B, Cols of C

# Base byte addresses
# A takes 2048 bytes (32 * 128 * 0.5)
A_BASE = 64
# B takes 2048 bytes (128 * 32 * 0.5)
B_BASE = A_BASE + 2048    # 2112
C_BASE = B_BASE + 2048    # 4160

# APARA Hardware Memory Offset (Word Base)
APARA_OFFSET = 0x200000

def generate_random_matrix(rows, cols, max_val):
    return [[random.randint(0, max_val) for _ in range(cols)] for _ in range(rows)]

def to_signed_4bit(val):
    val = val & 0xF
    if val >= 8:
        return val - 16
    return val

def c_byte_address(row, col):
    """
    8-row Interleaved Chunking (NORMAL UNPACKED) for 32x32 Output:
    - 4 row-groups (8 rows each)
    - 4 column-chunks (8 cols each)
    - 1 element per 64-bit word (8 bytes)
    """
    row_group = row // 8
    row_in_group = row % 8
    col_chunk = col // 8
    col_in_chunk = col % 8

    # Math scaled for Unpacked 64-bit elements
    # 8 cols * 8 bytes = 64 bytes per row-in-chunk
    # 8 rows * 64 bytes = 512 bytes per chunk
    # 4 chunks * 512 bytes = 2048 bytes per row-group
    group_base = C_BASE + (row_group * 2048)
    chunk_base = group_base + (col_chunk * 512)
    row_offset = row_in_group * 64
    word_offset = col_in_chunk * 8

    return chunk_base + row_offset + word_offset

def main():
    print(f"Generating Matrices: A({M_SIZE}x{K_SIZE}), B({K_SIZE}x{N_SIZE})...")
    
    A = generate_random_matrix(M_SIZE, K_SIZE, 15)
    B = generate_random_matrix(K_SIZE, N_SIZE, 15)
    C = [[0] * N_SIZE for _ in range(M_SIZE)]
    
    print("Computing Golden C = A x B (Using SIGNED i4 Math)...")
    for i in range(M_SIZE):
        for j in range(N_SIZE):
            for k in range(K_SIZE):
                C[i][j] += to_signed_4bit(A[i][k]) * to_signed_4bit(B[k][j])

    data_map = {}
    results_map = {}

    print("Swizzling Matrix A (32x128 M-Tiles)...")
    for row in range(M_SIZE):
        for col in range(K_SIZE):
            # A_Base + (RowGrp * 512) + (SubGrp * 256) + (K_Chunk * 32) + (RowInSub * 8)
            byte_addr = A_BASE + (row // 8) * 512 + ((row % 8) // 4) * 256 + (col // 16) * 32 + (row % 4) * 8
            word_idx = byte_addr // 8
            
            if word_idx not in data_map: 
                data_map[word_idx] = 0
                
            data_map[word_idx] |= ((A[row][col] & 0xF) << ((col % 16) * 4))

    print("Swizzling Matrix B (128x32 N-Tiles)...")
    for row in range(K_SIZE):
        for col in range(N_SIZE):
            # B_Base + (ColGrp * 512) + (SubGrp * 256) + (K_Chunk * 32) + (ColInSub * 8)
            byte_addr = B_BASE + (col // 8) * 512 + ((col % 8) // 4) * 256 + (row // 16) * 32 + (col % 4) * 8
            word_idx = byte_addr // 8
            
            if word_idx not in data_map: 
                data_map[word_idx] = 0
                
            data_map[word_idx] |= ((B[row][col] & 0xF) << ((row % 16) * 4))

    print("Mapping Matrix C (32x32 Output, NORMAL UNPACKED)...")
    for row in range(M_SIZE):
        for col in range(N_SIZE):
            byte_addr = c_byte_address(row, col)
            word_idx = byte_addr // 8
            
            # Keep the full 64-bit integer, no shifting required
            results_map[word_idx] = C[row][col] & 0xFFFFFFFFFFFFFFFF

    # Write Output Files with Hardware Offset
    print("Writing data.map...")
    with open("data.map", "w") as f:
        for word_idx in sorted(data_map.keys()):
            f.write(f"{APARA_OFFSET + word_idx:X}: 0x{data_map[word_idx]:016X}\n")

    print("Writing result.txt...")
    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            f.write(f"0 mem 0x{APARA_OFFSET + word_idx:X} 0x{results_map[word_idx]:016X}\n")

    print(f"Success! Unpacked (32x128 * 128x32) APARA files generated.")

if __name__ == "__main__":
    main()
