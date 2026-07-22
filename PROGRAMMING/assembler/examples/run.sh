../bin/mcode_align $1.mcode > $1.aligned.mcode
../bin/mcode_assemble $1.aligned.mcode > $1.obj
../bin/mcode_disassemble $1.obj > $1.dis.mcode
