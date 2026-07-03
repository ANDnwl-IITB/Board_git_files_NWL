set VHDL ../vhdl
set VHDL_LIBS ../vhdl_libs
set EDN   ../edn

# libraries.
read_vhdl  -library ahir_ieee_proposed $VHDL_LIBS/aHiR_ieee_proposed.vhdl
read_vhdl  -library ahir $VHDL_LIBS/ahirXilinx.vhdl
read_vhdl -library DualClockedQueuelib ../vhdl/DualClockedQueuelib.vhdl
#read_vhdl -library DualClockedQueuelib ../vhdl/DualClockedQueues.vhdl
read_vhdl -library AxiBridgeLib $VHDL_LIBS/AxiBridgeLib.vhdl
read_vhdl -library simpleUartLib      $VHDL_LIBS/simpleUartLib.vhdl
read_vhdl -library myUartLib          $VHDL_LIBS/myUartLib.vhdl
read_vhdl  -library AjitCustom $VHDL_LIBS/AjitCustom.vhdl
#changed ForAsic
read_vhdl  -library GenericGlueStuff $VHDL_LIBS/GenericGlueStuff.vhdl
#read_vhdl  -library GenericCoreAddOnLib $VHDL_LIBS/GlueModules.vhdl
read_vhdl  -library GlueModules $VHDL_LIBS/GlueModules.vhdl
read_vhdl  -library GenericCoreAddOnLib $VHDL_LIBS/GenericCoreAddOnLib.vhdl
#read_vhdl  -library myUartLib $VHDL_LIBS/myUartLib.vhdl
#read_vhdl  -library simpleUartLib $VHDL_LIBS/simpleUartLib.vhdl
read_vhdl  -library simpleI2CLib  $VHDL_LIBS/simpleI2CLib.vhdl
read_vhdl  -library SpiMasterLib  $VHDL_LIBS/SpiMasterLib.vhdl
read_vhdl  -library AhbApbLib  $VHDL_LIBS/AhbApbLib.vhdl
read_vhdl  -library AjitHpcAccel  $VHDL_LIBS/AjitHpcAccel.vhdl

# RTL files
read_vhdl  -library aparajit_lib $VHDL/self_tuning_uart.vhdl
read_vhdl  -library aparajit_lib $VHDL/configurable_uart.vhdl
read_vhdl  -library switches_lib $VHDL/switch_1p1e_red.vhdl
read_vhdl  -library switches_lib $VHDL/distributor_1p1e_red.vhdl
read_vhdl  -library aparajit_lib $VHDL/aparajit_1p1e_red.vhdl
#read_vhdl  -library acb_sram_lib ../Additional_vhdl/acb_sram/vhdl/acb_sram_lib/acb_sram.vhdl
read_vhdl  -library acb_dram_controller_bridge_lib ../Additional_vhdl/acb_dram_controller_bridge/vhdl/acb_dram_controller_bridge_lib/acb_dram_controller_bridge.vhdl
read_verilog ../verilog/ACB_to_UI_EA.v
#read_vhdl  -library GenericGlueStuff $VHDL/acb_sram.vhdl

# NIC MAC Bridge library (needed for Ethernet)
read_vhdl -library nic_mac_bridge_lib $VHDL/nic_mac_bridge_edited.vhdl
# EDN files
# NIC subsystem components (TX deconcat)
read_vhdl -library nic_mac_bridge_lib ../hsys/nic_subsystem/nic_mac_bridge/tx_deconcat_system/vhdl/nic_mac_bridge_lib/tx_deconcat_system_global_package.vhdl
read_vhdl -library nic_mac_bridge_lib ../hsys/nic_subsystem/nic_mac_bridge/tx_deconcat_system/vhdl/nic_mac_bridge_lib/tx_deconcat_system.vhdl

# NIC subsystem components (RX concat)
read_vhdl -library nic_mac_bridge_lib ../hsys/nic_subsystem/nic_mac_bridge/rx_concat_system/vhdl/nic_mac_bridge_lib/rx_concat_system.vhdl
read_vhdl -library nic_mac_bridge_lib ../hsys/nic_subsystem/nic_mac_bridge/rx_concat_system/vhdl/nic_mac_bridge_lib/rx_concat_system_global_package.vhdl

# NIC core
read_vhdl -library nic_lib ../hsys/nic_subsystem/nic/vhdl/nic_lib/nic.vhdl
read_vhdl -library nic_lib ../hsys/nic_subsystem/nic/vhdl/nic_lib/nic_global_package.vhdl

# NIC subsystem wrapper
read_vhdl -library nic_subsystem_lib ../hsys/nic_subsystem/vhdl/nic_subsystem_lib/nic_subsystem.vhdl

# ACB-AFB complex (includes NIC tap)
read_vhdl -library acb_afb_complex_lib ../hsys/acb_afb_complex/vhdl/acb_afb_complex_lib/acb_afb_complex.vhdl

# toplevel file for hsys
read_vhdl ../component/aparajit_1p1e_red_component_ethernet_60.vhdl
# NIC-MAC pipe reset logic
read_verilog ../verilog/nic_mac_pipe_reset.v

# GMII-AXIS converters
read_verilog ../verilog/axis_gmii_rx.v
read_verilog ../verilog/axis_gmii_tx.v
read_verilog ../verilog/ethernet_axis_vcu118_vio.v
# Ethernet MAC components
read_verilog ../verilog/eth_mac_1g.v
read_verilog ../verilog/eth_mac_1g_fifo.v
read_verilog ../verilog/lfsr.v

# MDIO master for PHY management
read_verilog ../verilog/mdio_master.v

# Utility modules
read_verilog ../verilog/debounce_switch.v
read_verilog ../verilog/sync_reset.v

# Queue for MAC interface
read_verilog ../verilog/queueMac.v

# AXIS async FIFOs (for clock domain crossing)
read_verilog ../verilog/axis_async_fifo.v
read_verilog ../verilog/axis_async_fifo_adapter.v

# FPGA core wrapper
read_verilog ../verilog/fpga_core.v

# ==============================================================================
#ETH_VCU.v → ETH_KCU105.v
# Need to check
# ==============================================================================
read_verilog ../verilog/ETH_VCU118.v

############# CONSTRAINT FILE ###########
read_xdc ../Constraints/vcu118_60.xdc

############# IP CORE FILES #############
set_property part xcvu9p-flga2104-2L-e [current_project]
set_property board_part xilinx.com:vcu118:part0:2.3 [current_project]

read_ip ../ip/ila_dram/ila_dram.xci
read_ip ../ip/ila_eth_125/ila_eth_125.xci
read_ip ../ip/ila_eth_60/ila_eth_60.xci
read_ip ../ip/vio_0/vio_0.xci
read_ip ../ip/vio_1/vio_1.xci
read_ip ../ip/clk_wiz_1/clk_wiz_1.xci
# Ethernet PCS/PMA
read_ip ../ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci
read_ip ../ip/ddr4_0/ddr4_0.xci  
read_ip ../ip/fifo_generator_0/fifo_generator_0.xci
read_ip ../ip/fifo_generator_1/fifo_generator_1.xci
read_ip ../ip/fifo_generator_2/fifo_generator_2.xci
read_ip ../ip/fifo_generator_3/fifo_generator_3.xci
read_ip ../ip/fifo_generator_4/fifo_generator_4.xci
read_ip ../ip/fifo_generator_5/fifo_generator_5.xci
read_ip ../ip/fifo_generator_acb_resp/fifo_generator_acb_resp.xci
read_ip ../ip/fifo_generator_acb_req/fifo_generator_acb_req.xci
read_ip ../ip/fifo_generator_afb_resp/fifo_generator_afb_resp.xci
read_ip ../ip/fifo_generator_afb_req/fifo_generator_afb_req.xci
read_edif  $EDN/processor_1x1x32.edn 
read_edif  $EDN/new_jun19/engine_core.edn 
read_edif $EDN/glue_ooc/acb_afb_bridge.edn
read_edif $EDN/glue_ooc/debug_aggregator_single_core.edn
read_edif $EDN/glue_ooc/coherent_memory_controller_single_core_v2.edn
read_edif $EDN/glue_ooc/afb_multicore_interrupt_controller.edn
read_edif $EDN/glue_ooc/afb_fast_tap.edn
read_edif $EDN/glue_ooc/afb_scratch_pad.edn
read_edif $EDN/glue_ooc/afb_serial_with_bcw_adapter.edn
read_edif $EDN/glue_ooc/afb_timer.edn




synth_design -fsm_extraction off  -top aparajit_1p1e_red_dram_eth_top -part xcvu9p-flga2104-2L-e 
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
#phys_opt_design
#phys_opt_design
#phys_opt_design
write_checkpoint -force PostPlaceRouteCheckpoint.dcp
report_timing_summary -file timing.rpt -nworst 10 -verbose
report_utilization -file utilization_post_place_and_route.rpt
report_utilization -hierarchical -file utilization_post_place_and_route.hierarchical.rpt
write_bitstream -force engine_ethernet.fpgaTop.vcu118.bit
write_debug_probes -force engine_ethernet.fpgaTop.vcu118.ltx

