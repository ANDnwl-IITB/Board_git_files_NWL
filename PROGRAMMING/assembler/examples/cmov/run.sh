mcode_align $1.mcode | tee $1.aligned.mcode
mcode_assemble    $1.aligned.mcode | tee $1.obj
mcode_disassemble $1.obj | tee $1.disass.mcode
mcode_run   -p 0x0 -i $1.obj -d data.map -a registers.txt -r results.txt $2  2>&1 | tee run.log
