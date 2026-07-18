# VHDL libs.
read_vhdl -library AhbApbLib ../../vhdl_libs/AhbApbLib.vhdl
read_vhdl -library ahir_ieee_proposed ../../vhdl_libs/aHiR_ieee_proposed.vhdl
read_vhdl -library ahir ../../vhdl_libs/ahir.vhdl
read_vhdl -library DualClockedQueuelib ../vhdl/DualClockedQueuelib.vhdl
read_vhdl -library AxiBridgeLib ../../vhdl_libs/AxiBridgeLib.vhdl
read_vhdl -library GenericGlueStuff ../../vhdl_libs/GenericGlueStuff.vhdl
read_vhdl -library simpleI2CLib  ../../vhdl_libs/simpleI2CLib.vhdl
read_vhdl -library simpleUartLib ../../vhdl_libs/simpleUartLib.vhdl
read_vhdl -library myUartLib      ../../vhdl_libs/myUartLib.vhdl
read_vhdl -library SpiMasterLib  ../../vhdl_libs/SpiMasterLib.vhdl
read_vhdl -library AjitCustom  ../../vhdl_libs/AjitCustom.vhdl
read_vhdl ../vhdl/DualClockedQueue.vhd


read_vhdl -library ajit_processor_lib ../hsys_dram/processor_subsystem/vhdl/ajit_processor_lib/processor_1x1x32.vhdl
read_vhdl -library kcu105_core_lib ../hsys_dram/vhdl/kcu105_core_lib/kcu105_core.vhdl
read_vhdl -library acb_dram_controller_bridge_lib ../hsys_dram/acb_dram_controller_bridge/vhdl/acb_dram_controller_bridge_lib/acb_dram_controller_bridge.vhdl

# toplevel file for hsys
read_vhdl ../toplevel/vcu118_fpga_top_dram.vhdl

# verilog files
read_verilog ../verilog/ACB_to_UI_EA.v

############# CONSTRAINT FILE ###########
read_xdc ../constraint/vcu118_dram.xdc

############# IP CORE FILES #############
set_property part xcvu9p-flga2104-2L-e [current_project]
set_property board_part xilinx.com:vcu118:part0:2.3 [current_project]


read_ip ../ip/vio_0/vio_0.xci
read_ip ../ip/clk_wiz_0/clk_wiz_0.xci
#read_ip ../ip/ila_uarts/ila_uarts.xci
#read_ip ../ip/ila_dram/ila_dram.xci
#dram ips
read_ip ../ip/ddr4_0/ddr4_0.xci  
read_ip ../ip/fifo_generator_0/fifo_generator_0.xci
read_ip ../ip/fifo_generator_1/fifo_generator_1.xci
read_ip ../ip/fifo_generator_2/fifo_generator_2.xci
read_ip ../ip/fifo_generator_3/fifo_generator_3.xci
read_ip ../ip/fifo_generator_4/fifo_generator_4.xci
read_ip ../ip/fifo_generator_5/fifo_generator_5.xci
read_ip ../ip/fifo_generator_acb_resp/fifo_generator_acb_resp.xci
read_ip ../ip/fifo_generator_acb_req/fifo_generator_acb_req.xci
## core edif file ####################################################################
read_edif ../edn/processor_1x1x32.edn
#########################################
#write_checkpoint -force fread_done.dcp
############### SYNTHESIZE ###############
set_param general.maxThreads 24
synth_design -fsm_extraction off  -top vcu118_fpga_top -part xcvu9p-flga2104-2L-e 
write_checkpoint -force PostSynthCheckpoint.dcp
report_timing_summary -file timing.postsynth.rpt -nworst 4

report_utilization -file utilization_post_synth.rpt
report_utilization -hierarchical -file utilization_post_synth.hierarchical.rpt
opt_design
place_design -directive Explore
route_design -directive Explore
phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design
write_checkpoint -force PostPlaceRouteCheckpoint.dcp
report_timing_summary -file timing.rpt -nworst 10 -verbose
report_utilization -file utilization_post_place_and_route.rpt
report_utilization -hierarchical -file utilization_post_place_and_route.hierarchical.rpt
write_bitstream -force processor_1x1x32.fpgaTop.vcu118.bit
write_debug_probes -force processor_1x1x32.fpgaTop.vcu118.ltx 
