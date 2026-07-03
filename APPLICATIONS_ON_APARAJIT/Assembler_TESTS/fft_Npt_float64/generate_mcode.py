#!/usr/bin/env python3

import math
import re

N = int(input("Enter FFT size N: "))

if N & (N - 1):
    raise ValueError("N must be a power of 2")

filename = "fftN_new.mcode"

with open(filename, "r") as f:
    text = f.read()

n4m1 = N // 4 - 1
n2 = N // 2
n16m1 = N // 16 - 1
twiddle_base = 16 * N       # 2N*8
stages_minus_2 = int(math.log2(N)) - 2

# N/4-1
text = re.sub(
    r"\$set \$r20 0 -?\d+\s*//\s*N/4-1",
    f"$set $r20 0 {n4m1}        //  N/4-1",
    text
)

# 2N*8
text = re.sub(
    r"\$set \$r21 0 -?\d+\s*//\s*8\*2N",
    f"$set $r21 0 {twiddle_base}       //  8*2N",
    text
)

# log2(N)-2
text = re.sub(
    r"\$set \$r26 0 -?\d+\s*//\s*log2\(N\)-2 or Number of Stages - 2",
    f"$set $r26 0 {stages_minus_2}          // log2(N)-2 or Number of Stages - 2",
    text
)

# N/2
text = re.sub(
    r"\$set \$r27 0 -?\d+\s*//\s*N/2",
    f"$set $r27 0 {n2}        // N/2",
    text
)

# N
text = re.sub(
    r"\$set \$r31 0 -?\d+\s*//\s*N",
    f"$set $r31 0 {N}        // N",
    text
)

# second occurrence of N
text = re.sub(
    r"\$set \$r31 0 -?\d+\s*//\s*N",
    f"$set $r31 0 {N}         // N",
    text,
    count=1
)

# second twiddle base
text = re.sub(
    r"\$set \$r22 0 -?\d+\s*//\s*2N\*8",
    f"$set $r22 0 {twiddle_base}         // 2N*8",
    text
)

# N/16-1
text = re.sub(
    r"\$set \$r23 0 -?\d+\s*//\s*N/16-1",
    f"$set $r23 0 {n16m1}           // N/16-1",
    text
)

# final stage loop count
text = re.sub(
    r"\$set \$r20 0 -?\d+\s*//\s*N/4-1",
    f"$set $r20 0 {n4m1}        //  N/4-1",
    text,
    count=1
)

out_file = f"fftN_new.mcode"

with open(out_file, "w") as f:
    f.write(text)

print(f"Generated: {out_file}")
