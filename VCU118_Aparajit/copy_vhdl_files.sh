rm -rf vhdl/*
rm -rf vhdl_libs/*
copyVhdlFilesForTapeoutSimple.py -r $AJIT_HPC_ACCEL_HOME/BUILDS/ACCEL_CORES/1p1e_red -o vhdl -s 
rm vhdl/ahir*.vhdl vhdl/AjitCustom*.vhdl vhdl/simpleUartLib.vhdl vhdl/aHiR*.vhdl 
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/AjitCustom.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/simpleUartLib.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/myUartLib.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/simpleI2CLib.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/SpiMasterLib.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/AxiBridgeLib.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/cores/building_blocks/outside_sys/lib/Generic*.vhdl vhdl_libs/
cp $AJIT_PROJECT_HOME/processor/Aa_v3/modules/lib/G*.vhdl vhdl_libs
cp $AJIT_PROJECT_HOME/processor/vhdl/lib/AhbApbLib.vhdl vhdl_libs/AhbApbLib.vhdl
cp $AJIT_HPC_ACCEL_HOME/vhdl/lib/AjitHpcAccel.vhdl  vhdl_libs/
cp $AHIR_RELEASE/vhdl/ahir.vhdl   vhdl_libs/
cp $AHIR_RELEASE/vhdl/ahirXilinx.vhdl   vhdl_libs/
cp $AHIR_RELEASE/vhdl/aHiR_ieee_proposed.vhdl   vhdl_libs/

