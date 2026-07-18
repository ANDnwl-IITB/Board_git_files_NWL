CWD=$(pwd)
# assemble the expanded, aligned mcode.
echo "assemble expanded mcode"
mcode_align mul.mcode > mul.aligned.mcode
mcode_assemble mul.aligned.mcode  > mul.obj
mcode_disassemble mul.obj > mul.disassemble.mcode
