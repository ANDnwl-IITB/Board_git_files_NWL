ALIGN=$AJIT_HPC_ACCEL_HOME/engine_isp/assembler/bin/mcode_align
AS=$AJIT_HPC_ACCEL_HOME/engine_isp/assembler/bin/mcode_assemble
DISAS=$AJIT_HPC_ACCEL_HOME/engine_isp/assembler/bin/mcode_disassemble
RUN=$AJIT_HPC_ACCEL_HOME/engine_isp/assembler/bin/mcode_run
$ALIGN $1.mcode | tee $1.aligned.mcode
$AS    $1.aligned.mcode | tee $1.obj
$DISAS $1.obj | tee $1.disass.mcode
$RUN   -p 0x0 -i $1.obj -d data.map -r result.txt $2 -v  2>&1 | tee run.log
