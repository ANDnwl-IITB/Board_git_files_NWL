#!/usr/bin/env python3
import random

MATRIX_SIZE = 64

# Dynamically calculate tightly packed bases for 64x64 (2048 bytes per matrix)
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 64 + 2048 = 2112
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 2112 + 2048 = 4160

def generate_random_matrix(size, max_val):
    return [[random.randint(0, max_val) for _ in range(size)] for _ in range(size)]

def to_signed_4bit(val):
    """Converts 4-bit unsigned (0-15) to signed (-8 to 7) for APARA $vi4 math."""
    val = val & 0xF
    if val >= 8:
        return val - 16
    return val

def main():
    print("Generating 64x64 Matrices...")
    A = generate_random_matrix(MATRIX_SIZE, 15)
    B = generate_random_matrix(MATRIX_SIZE, 15)

    print("Computing Golden C = A x B (Using SIGNED i4 Math)...")
    C = [[0] * MATRIX_SIZE for _ in range(MATRIX_SIZE)]
    for i in range(MATRIX_SIZE):
        for j in range(MATRIX_SIZE):
            for k in range(MATRIX_SIZE):
                a_signed = to_signed_4bit(A[i][k])
                b_signed = to_signed_4bit(B[k][j])
                C[i][j] += a_signed * b_signed

    data_map = {}
    results_map = {}

    print("Swizzling Matrix A into M-Tiles...")
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            val = A[row][col] & 0xF
            k_chunk = col // 16
            col_in_chunk = col % 16
            # Using dynamic A_BASE
            byte_addr = A_BASE + (row // 8) * 256 + ((row % 8) // 4) * 128 + k_chunk * 32 + (row % 4) * 8
            word_idx = byte_addr // 8
            if word_idx not in data_map:
                data_map[word_idx] = 0
            data_map[word_idx] |= (val << (col_in_chunk * 4))

    print("Swizzling Matrix B into N-Tiles...")
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            val = B[row][col] & 0xF
            k_chunk = row // 16
            row_in_chunk = row % 16
            # Using dynamic B_BASE
            byte_addr = B_BASE + (col // 8) * 256 + ((col % 8) // 4) * 128 + k_chunk * 32 + (col % 4) * 8
            word_idx = byte_addr // 8
            if word_idx not in data_map:
                data_map[word_idx] = 0
            data_map[word_idx] |= (val << (row_in_chunk * 4))

    print("Mapping Matrix C into 8x8 Tiled Blocks...")
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            val = C[row][col]
            # Using dynamic C_BASE
            byte_addr = C_BASE + ((row // 8) * 8 + (col // 8)) * 512 + (row % 8) * 64 + (col % 8) * 8
            word_idx = byte_addr // 8
            results_map[word_idx] = val

    # --- FORMATTING SECTION ---
    # 0x200000 acts as Absolute Memory Address 0
    BASE_WORD_OFFSET = 0x200000

    print("Writing data.map...")
    with open("data.map", "w") as f:
        # Write Matrix A memory
        for word_idx in range(A_BASE // 8, B_BASE // 8):
            val = data_map.get(word_idx, 0)
            target_idx = BASE_WORD_OFFSET + word_idx
            f.write(f"{target_idx:X}: 0x{val:016X}\n")

        # Write Matrix B memory
        for word_idx in range(B_BASE // 8, C_BASE // 8):
            val = data_map.get(word_idx, 0)
            target_idx = BASE_WORD_OFFSET + word_idx
            f.write(f"{target_idx:X}: 0x{val:016X}\n")

    print("Writing result.txt...")
    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            val = results_map[word_idx]
            # Convert python negative to strict 64-bit hex
            val_64bit = val & 0xFFFFFFFFFFFFFFFF
            target_idx = BASE_WORD_OFFSET + word_idx
            f.write(f"0 mem 0x{target_idx:X} 0x{val_64bit:016X}\n")

    print(f"Success! Clean files generated with signed math relative to base offset 0x{BASE_WORD_OFFSET:X}.")
    print(f"Bases used: A_BASE={A_BASE}, B_BASE={B_BASE}, C_BASE={C_BASE}")

if __name__ == "__main__":
    main()
