
# VHDL libraries
read_vhdl -library AhbApbLib ../../vhdl_libs/AhbApbLib.vhdl
read_vhdl -library ahir_ieee_proposed ../../vhdl_libs/aHiR_ieee_proposed.vhdl
read_vhdl -library ahir ../../vhdl_libs/ahir.vhdl
read_vhdl -library AxiBridgeLib ../../vhdl_libs/AxiBridgeLib.vhdl
read_vhdl -library DualClockedQueuelib ../vhdl/DualClockedQueuelib.vhdl
read_vhdl -library GenericCoreAddOnLib ../vhdl/GenericCoreAddOnLib.vhdl
read_vhdl -library GenericGlueStuff ../../vhdl_libs/GenericGlueStuff.vhdl
read_vhdl -library GlueModules ../../vhdl_libs/GlueModules.vhdl
read_vhdl -library simpleI2CLib  ../../vhdl_libs/simpleI2CLib.vhdl
read_vhdl -library simpleUartLib ../../vhdl_libs/simpleUartLib.vhdl
read_vhdl -library myUartLib ../../vhdl_libs/myUartLib.vhdl
read_vhdl -library SpiMasterLib  ../../vhdl_libs/SpiMasterLib.vhdl
read_vhdl -library AjitCustom  ../../vhdl_libs/AjitCustom.vhdl
read_vhdl ../vhdl/DualClockedQueue.vhd

# NIC MAC Bridge library (needed for Ethernet)
read_vhdl -library nic_mac_bridge_lib ../toplevel/nic_mac_bridge_edited.vhdl

# ==============================================================================
# KCU105 CORE VHDL FILES (with NIC subsystem)
# ==============================================================================

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

# Processor subsystem
read_vhdl -library ajit_processor_lib ../hsys/processor_subsystem/vhdl/ajit_processor_lib/processor_1x1x32.vhdl

# DRAM controller bridge
read_vhdl -library acb_dram_controller_bridge_lib ../hsys/acb_dram_controller_bridge/vhdl/acb_dram_controller_bridge_lib/acb_dram_controller_bridge.vhdl

# KCU105 core (includes all subsystems)
read_vhdl -library kcu105_core_lib ../hsys/vhdl/kcu105_core_lib/kcu105_core.vhdl

# ==============================================================================
# TOP LEVEL VHDL FILE (NEW - with Ethernet support)
# ==============================================================================
read_vhdl ../toplevel/kcu105_fpga_top.vhdl

# ==============================================================================
# VERILOG FILES FOR ETHERNET
# ==============================================================================

# NIC-MAC pipe reset logic
read_verilog ../verilog/nic_mac_pipe_reset.v

# GMII-AXIS converters
read_verilog ../verilog/axis_gmii_rx.v
read_verilog ../verilog/axis_gmii_tx.v
read_verilog ../verilog/ethernet_axis_kcu105.v
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
read_verilog ../verilog/ETH_KCU105.v



# DRAM interface bridge
read_verilog ../verilog/ACB_to_UI_EA.v

# ==============================================================================
# CONSTRAINT FILE
# ==============================================================================
read_xdc ../constraint/kcu105_ethernet.xdc

# ==============================================================================
# FPGA PART AND BOARD SETTINGS
# ==============================================================================
set_property part xcku040-ffva1156-2-e [current_project]
set_property board_part xilinx.com:kcu105:part0:1.6 [current_project]

# ==============================================================================
# IP CORES - DEBUG AND CLOCK MANAGEMENT
# ==============================================================================

# VIO for processor reset control
read_ip ../ip/vio_4/vio_4.xci
#read_ip ../ip/ila_ethernet/ila_ethernet.xci 

# Clock wizard (80MHz for processor)
# NOTE: If you need 125MHz output for NIC, regenerate this IP
# Or use the 125MHz from ETH_KCU105 module (recommended)
read_ip ../ip/clk_wiz_80/clk_wiz_80.xci

# ILA for UART debug (optional)
#read_ip ../ip/ila_uarts/ila_uarts.xci

# ILA for ETHERNET debug
read_ip ../ip/vio_1/vio_1.xci

# IP CORES
# ==============================================================================

# Ethernet PCS/PMA
read_ip ../ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci

# DDR / FIFOs
read_ip ../ip/ddr4_0/ddr4_0.xci
read_ip ../ip/fifo_generator_0/fifo_generator_0.xci
read_ip ../ip/fifo_generator_1/fifo_generator_1.xci
read_ip ../ip/fifo_generator_2/fifo_generator_2.xci
read_ip ../ip/fifo_generator_3/fifo_generator_3.xci
read_ip ../ip/fifo_generator_4/fifo_generator_4.xci
read_ip ../ip/fifo_generator_5/fifo_generator_5.xci

# CDC FIFOs
read_ip ../ip/fifo_generator_acb_resp/fifo_generator_acb_resp.xci
read_ip ../ip/fifo_generator_acb_req/fifo_generator_acb_req.xci
read_ip ../ip/ila_pcs_pma/ila_pcs_pma.xci 
# Processor
read_edif ../edn/processor_1x1x32.edn


# ==============================================================================
# SYNTHESIS
# ==============================================================================

synth_design -top kcu105_fpga_top -part xcku040-ffva1156-2-e

write_checkpoint -force PostSynthCheckpoint.dcp

report_timing_summary -file timing.postsynth.rpt -nworst 10
report_utilization -file utilization_post_synth.rpt
report_utilization -hierarchical \
-file utilization_post_synth.hierarchical.rpt


# ==============================================================================
# IMPLEMENTATION
# ==============================================================================

opt_design 

place_design -directive Explore


route_design -directive Explore

phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design
phys_opt_design


# ==============================================================================
# REPORTS
# ==============================================================================

write_checkpoint -force PostPlaceRouteCheckpoint.dcp

report_timing_summary \
-file timing.rpt \
-nworst 20 \
-verbose

report_utilization \
-file utilization_post_place_and_route.rpt

report_utilization -hierarchical \
-file utilization_post_place_and_route.hierarchical.rpt

check_timing

report_clocks \
-file clocks.rpt

report_clock_interaction \
-file clock_interaction.rpt

report_cdc \
-details \
-file cdc.rpt

report_exceptions \
-file exceptions.rpt


# ==============================================================================
# BITSTREAM
# ==============================================================================

write_bitstream -force \
processor_1x1x32.fpgaTop.kcu105.bit

write_debug_probes -force \
	processor_1x1x32.fpgaTop.kcu105.ltx
