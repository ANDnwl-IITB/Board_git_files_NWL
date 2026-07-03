import random

MATRIX_SIZE = 32

# Dynamically calculate tightly packed bases
A_BASE = 64
B_BASE = A_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 48 + 512 bytes = 560
C_BASE = B_BASE + (MATRIX_SIZE * MATRIX_SIZE // 2)  # 560 + 512 bytes = 1072

def generate_random_matrix(size, max_val):
    return [[random.randint(0, max_val) for _ in range(size)] for _ in range(size)]

def to_signed_4bit(val):
    """Converts 4-bit unsigned (0-15) to signed (-8 to 7) for APARA $vi4 math."""
    val = val & 0xF
    if val >= 8:
        return val - 16
    return val

def main():
    print(f"Generating {MATRIX_SIZE}x{MATRIX_SIZE} Matrices...")
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
            # Scaled offsets for 32x32 tight packing (128 bytes per 8-row M-Tile)
            byte_addr = A_BASE + (row // 8) * 128 + ((row % 8) // 4) * 64 + k_chunk * 32 + (row % 4) * 8
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
            # Scaled offsets for 32x32 tight packing
            byte_addr = B_BASE + (col // 8) * 128 + ((col % 8) // 4) * 64 + k_chunk * 32 + (col % 4) * 8
            word_idx = byte_addr // 8
            if word_idx not in data_map:
                data_map[word_idx] = 0
            data_map[word_idx] |= (val << (row_in_chunk * 4))

    print("Mapping Matrix C into 8x8 Tiled Blocks...")
    for row in range(MATRIX_SIZE):
        for col in range(MATRIX_SIZE):
            val = C[row][col]
            # 32x32 means 4 tiles horizontally (32/8 = 4)
            byte_addr = C_BASE + ((row // 8) * 4 + (col // 8)) * 512 + (row % 8) * 64 + (col % 8) * 8
            word_idx = byte_addr // 8
            results_map[word_idx] = val

    print("Writing data.map...")
    with open("data.map", "w") as f:
        # Dynamically write everything contained in data_map
        for word_idx in sorted(data_map.keys()):
            val = data_map[word_idx]
            f.write(f"{word_idx:X}: 0x{val:016X}\n")

    print("Writing result.txt...")
    with open("result.txt", "w") as f:
        for word_idx in sorted(results_map.keys()):
            val = results_map[word_idx]
            # Convert python negative to strict 64-bit hex
            val_64bit = val & 0xFFFFFFFFFFFFFFFF
            f.write(f"0 mem 0x{word_idx:X} 0x{val_64bit:016X}\n")

    print(f"Success! Clean files generated. A_Base={A_BASE}, B_Base={B_BASE}, C_Base={C_BASE}")

if __name__ == "__main__":
    main()
