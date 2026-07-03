#!/usr/bin/env python3

import math
import random
import struct
import numpy as np


def double_to_hex(value):
    """
    Convert float64 to IEEE754 64-bit hexadecimal representation.
    Example:
        1.0 -> 0x3FF0000000000000
    """
    return "0x{:016X}".format(
        struct.unpack(">Q", struct.pack(">d", float(value)))[0]
    )


def bit_reverse(value, bits):
    """
    Reverse 'bits' bits of value.
    Example for 9 bits:
        1 (000000001) -> 256 (100000000)
    """
    rev = 0

    for _ in range(bits):
        rev = (rev << 1) | (value & 1)
        value >>= 1

    return rev


def main():

    # ---------------------------------------------------------
    # FFT Size
    # ---------------------------------------------------------
    n_str = input("Enter FFT size N [default=512]: ").strip()

    if n_str == "":
        N = 512
    else:
        N = int(n_str)

    bits = int(math.log2(N))

    if (1 << bits) != N:
        raise ValueError("FFT size N must be a power of 2")

    print("Generating {}-point FFT test vectors...".format(N))

    # ---------------------------------------------------------
    # Base address for data.map
    # ---------------------------------------------------------
    DATA_MAP_BASE_ADDR = 0x200000

    # ---------------------------------------------------------
    # Generate Random Complex Inputs
    # ---------------------------------------------------------
    fft_inputs = []

    for _ in range(N):

        real = random.uniform(-1000000.0, 1000000.0)
        imag = random.uniform(-1000000.0, 1000000.0)

        fft_inputs.append(complex(real, imag))

    # ---------------------------------------------------------
    # Generate Twiddle Factors
    # W_N^k = exp(-j*2*pi*k/N)
    # k = 0 ... N/2-1
    # ---------------------------------------------------------
    twiddles = []

    for k in range(N // 2):

        angle = -2.0 * math.pi * k / N

        real = math.cos(angle)
        imag = math.sin(angle)

        twiddles.append(complex(real, imag))

    # ---------------------------------------------------------
    # FFT Output
    # ---------------------------------------------------------
    fft_output = np.fft.fft(
        np.array(fft_inputs, dtype=np.complex128)
    )

    # ---------------------------------------------------------
    # Generate data.map
    #
    # Memory Layout:
    #
    # Inputs:
    # 0x200000      -> x[0].real
    # 0x200001      -> x[0].imag
    # ...
    #
    # Twiddles:
    # 0x200000 + 2N     -> W[0].real
    # 0x200000 + 2N + 1 -> W[0].imag
    # ...
    # ---------------------------------------------------------
    mem_index = DATA_MAP_BASE_ADDR

    with open("data.map", "w") as fmap:

        # Inputs
        for x in fft_inputs:

            fmap.write(
                "{:X}: {}\n".format(
                    mem_index,
                    double_to_hex(x.real)
                )
            )
            mem_index += 1

            fmap.write(
                "{:X}: {}\n".format(
                    mem_index,
                    double_to_hex(x.imag)
                )
            )
            mem_index += 1

        # Twiddles
        for w in twiddles:

            fmap.write(
                "{:X}: {}\n".format(
                    mem_index,
                    double_to_hex(w.real)
                )
            )
            mem_index += 1

            fmap.write(
                "{:X}: {}\n".format(
                    mem_index,
                    double_to_hex(w.imag)
                )
            )
            mem_index += 1

    # ---------------------------------------------------------
    # Generate input.txt
    # Human readable inputs + twiddles
    # ---------------------------------------------------------
    with open("input.txt", "w") as fin:

        fin.write("FFT SIZE = {}\n\n".format(N))

        fin.write("=========================================\n")
        fin.write("INPUT SAMPLES\n")
        fin.write("=========================================\n\n")

        for i, x in enumerate(fft_inputs):

            fin.write(
                "x[{:4d}] = {: .15f} + j({: .15f})\n".format(
                    i,
                    x.real,
                    x.imag
                )
            )

        fin.write("\n\n")

        fin.write("=========================================\n")
        fin.write("TWIDDLE FACTORS\n")
        fin.write("=========================================\n\n")

        for k, w in enumerate(twiddles):

            fin.write(
                "W[{:4d}] = {: .15f} + j({: .15f})\n".format(
                    k,
                    w.real,
                    w.imag
                )
            )

    # ---------------------------------------------------------
    # Generate result.txt
    #
    # Bit-Reversed FFT Output
    #
    # Format:
    # 0 mem 0x0 <hex>
    # 0 mem 0x1 <hex>
    # ...
    #
    # NOTE:
    # result.txt is unchanged and still starts from 0.
    # Only data.map starts from 0x200000.
    # ---------------------------------------------------------
    with open("result.txt", "w") as fres:

        mem_index = 0

        for i in range(N):

            br_index = bit_reverse(i, bits)

            X = fft_output[br_index]

            fres.write(
                "0 mem 0x{:X} {}\n".format(
                    mem_index,
                    double_to_hex(X.real)
                )
            )
            mem_index += 1

            fres.write(
                "0 mem 0x{:X} {}\n".format(
                    mem_index,
                    double_to_hex(X.imag)
                )
            )
            mem_index += 1

    # ---------------------------------------------------------
    # Generate output.txt
    #
    # Human readable FFT outputs
    # Stored in bit-reversed order
    # ---------------------------------------------------------
    with open("output.txt", "w") as fout:

        fout.write("FFT SIZE = {}\n\n".format(N))

        fout.write(
            "=========================================\n"
        )
        fout.write(
            "FFT OUTPUTS (BIT REVERSED ORDER)\n"
        )
        fout.write(
            "=========================================\n\n"
        )

        for i in range(N):

            br_index = bit_reverse(i, bits)

            X = fft_output[br_index]

            fout.write(
                "mem[{:4d}] -> X[{:4d}] = {: .15f} + j({: .15f})\n".format(
                    i,
                    br_index,
                    X.real,
                    X.imag
                )
            )

    # ---------------------------------------------------------
    # Summary
    # ---------------------------------------------------------
    print("\nGenerated Files:")
    print("  data.map")
    print("  input.txt")
    print("  result.txt")
    print("  output.txt")

    print("\nSummary")
    print("----------------------------------")
    print("FFT Size            :", N)
    print("Input Samples       :", N)
    print("Twiddle Factors     :", N // 2)
    print("data.map base addr  : 0x{:X}".format(DATA_MAP_BASE_ADDR))
    print("data.map entries    :", 3 * N)
    print("result.txt entries  :", 2 * N)
    print("----------------------------------")


if __name__ == "__main__":
    main()
