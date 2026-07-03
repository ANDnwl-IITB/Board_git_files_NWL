#!/bin/bash

echo "Enter FFT size N:"
read N

echo
echo "========================================"
echo "Step 1: Generating test vectors"
echo "========================================"

echo "$N" | python3 input_result_generator.py

if [ $? -ne 0 ]; then
    echo "input_result_generator.py failed"
    exit 1
fi

echo
echo "========================================"
echo "Step 2: Generating FFT mcode"
echo "========================================"

echo "$N" | python3 generate_mcode.py

if [ $? -ne 0 ]; then
    echo "generate_mcode.py failed"
    exit 1
fi

echo
echo "========================================"
echo "Step 3: Running FFT assembly"
echo "========================================"

./run.sh fftN_new

if [ $? -ne 0 ]; then
    echo "run.sh failed"
    exit 1
fi

echo
echo "========================================"
echo "Step 4: Generating accuracy report"
echo "========================================"

echo "$N" | python3 accuracy_out.py

if [ $? -ne 0 ]; then
    echo "accuracy_out.py failed"
    exit 1
fi

echo
echo "========================================"
echo "FFT verification completed"
echo "Generated files:"
echo "  data.map"
echo "  input.txt"
echo "  results.txt"
echo "  output.txt"
echo "  fft${N}_new.mcode"
echo "  accuracy_report.txt"
echo "========================================"
