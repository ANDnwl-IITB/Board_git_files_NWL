# ==============================================================================
# KCU105 CONSTRAINT FILE - ORIGINAL (UNCHANGED) + ETHERNET ADDITIONS
# ==============================================================================

# General configurations

# Clock for clk_wiz

set_property PACKAGE_PIN G10 [get_ports {clk_in_p}]  
set_property IOSTANDARD LVDS [get_ports {clk_in_p}]
set_property PACKAGE_PIN F10 [get_ports {clk_in_n}]   
set_property IOSTANDARD LVDS [get_ports {clk_in_n}]

#Clock for the DRAM Controller

set_property PACKAGE_PIN AK17 [get_ports {c0_sys_clk_p}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {c0_sys_clk_p}]
set_property PACKAGE_PIN AK16 [get_ports {c0_sys_clk_n}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {c0_sys_clk_n}]


# LEDs
#set_property PACKAGE_PIN AP8     [get_ports {CPU_MODE[0]}] ;
#set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[0]}] ;
#set_property PACKAGE_PIN H23     [get_ports {CPU_MODE[1]}] ;
#set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[1]}] ;



## uart0
set_property PACKAGE_PIN G25     [get_ports "DEBUG_UART_RX"] ; 
set_property IOSTANDARD  LVCMOS18 [get_ports "DEBUG_UART_RX"] ;
set_property PACKAGE_PIN K26     [get_ports "DEBUG_UART_TX"] ; 
set_property IOSTANDARD  LVCMOS18 [get_ports "DEBUG_UART_TX"] ; 

## uart1
set_property PACKAGE_PIN AM19     [get_ports "SERIAL_UART_RX"] ;
set_property IOSTANDARD  LVCMOS12 [get_ports "SERIAL_UART_RX"] ;
set_property PACKAGE_PIN AM17   [get_ports "SERIAL_UART_TX"] ;
set_property IOSTANDARD  LVCMOS12 [get_ports "SERIAL_UART_TX"] ;

set_property PACKAGE_PIN AN8      [get_ports {clk_rst}] ;
set_property IOSTANDARD  LVCMOS18  [get_ports {clk_rst}] ;

##################################################################################################
# 2. DRAM
##################################################################################################

set_property PACKAGE_PIN AH14   [get_ports "c0_ddr4_act_n"]

set_property PACKAGE_PIN AE17   [get_ports "c0_ddr4_adr[0]"]
set_property PACKAGE_PIN AH17   [get_ports "c0_ddr4_adr[1]"]
set_property PACKAGE_PIN AE18   [get_ports "c0_ddr4_adr[2]"]
set_property PACKAGE_PIN AJ15   [get_ports "c0_ddr4_adr[3]"]
set_property PACKAGE_PIN AG16   [get_ports "c0_ddr4_adr[4]"]
set_property PACKAGE_PIN AL17   [get_ports "c0_ddr4_adr[5]"]
set_property PACKAGE_PIN AK18   [get_ports "c0_ddr4_adr[6]"]
set_property PACKAGE_PIN AG17   [get_ports "c0_ddr4_adr[7]"]
set_property PACKAGE_PIN AF18   [get_ports "c0_ddr4_adr[8]"]
set_property PACKAGE_PIN AH19   [get_ports "c0_ddr4_adr[9]"]
set_property PACKAGE_PIN AF15   [get_ports "c0_ddr4_adr[10]"]
set_property PACKAGE_PIN AD19   [get_ports "c0_ddr4_adr[11]"]
set_property PACKAGE_PIN AJ14   [get_ports "c0_ddr4_adr[12]"]
set_property PACKAGE_PIN AG19   [get_ports "c0_ddr4_adr[13]"]
set_property PACKAGE_PIN AD16   [get_ports "c0_ddr4_adr[14]"]
set_property PACKAGE_PIN AG14   [get_ports "c0_ddr4_adr[15]"]
set_property PACKAGE_PIN AF14   [get_ports "c0_ddr4_adr[16]"]


set_property PACKAGE_PIN AF17   [get_ports "c0_ddr4_ba[0]"]
set_property PACKAGE_PIN AL15   [get_ports "c0_ddr4_ba[1]"]


set_property PACKAGE_PIN AG15   [get_ports "c0_ddr4_bg"]
#set_property PACKAGE_PIN AM14   [get_ports "c0_ddr4_bg[1]"]


set_property PACKAGE_PIN AE15   [get_ports "c0_ddr4_ck_c"]
set_property PACKAGE_PIN AE16   [get_ports "c0_ddr4_ck_t"]
set_property PACKAGE_PIN AD15   [get_ports "c0_ddr4_cke"]
set_property PACKAGE_PIN AL19   [get_ports "c0_ddr4_cs_n"]
set_property IOSTANDARD  SSTL12_DCI [get_ports "c0_ddr4_cs_n"]


#set_property PACKAGE_PIN AN16   [get_ports "c0_ddr4_cs_bg[1]"]
#set_property IOSTANDARD  LVCMOS12  [get_ports "c0_ddr4_cs_bg[1]"] 


set_property PACKAGE_PIN AD21   [get_ports "c0_ddr4_dm_dbi_n[0]"]
set_property PACKAGE_PIN AE25   [get_ports "c0_ddr4_dm_dbi_n[1]"]
set_property PACKAGE_PIN AJ21   [get_ports "c0_ddr4_dm_dbi_n[2]"]
set_property PACKAGE_PIN AM21   [get_ports "c0_ddr4_dm_dbi_n[3]"]
set_property PACKAGE_PIN AH26   [get_ports "c0_ddr4_dm_dbi_n[4]"]
set_property PACKAGE_PIN AN26   [get_ports "c0_ddr4_dm_dbi_n[5]"]
set_property PACKAGE_PIN AJ29   [get_ports "c0_ddr4_dm_dbi_n[6]"]
set_property PACKAGE_PIN AL32   [get_ports "c0_ddr4_dm_dbi_n[7]"]

set_property PACKAGE_PIN AE23   [get_ports "c0_ddr4_dq[0]"]
set_property PACKAGE_PIN AG20   [get_ports "c0_ddr4_dq[1]"]
set_property PACKAGE_PIN AF22   [get_ports "c0_ddr4_dq[2]"]
set_property PACKAGE_PIN AF20   [get_ports "c0_ddr4_dq[3]"]
set_property PACKAGE_PIN AE22   [get_ports "c0_ddr4_dq[4]"]
set_property PACKAGE_PIN AD20   [get_ports "c0_ddr4_dq[5]"]
set_property PACKAGE_PIN AG22   [get_ports "c0_ddr4_dq[6]"]
set_property PACKAGE_PIN AE20   [get_ports "c0_ddr4_dq[7]"]
set_property PACKAGE_PIN AJ24   [get_ports "c0_ddr4_dq[8]"]
set_property PACKAGE_PIN AG24   [get_ports "c0_ddr4_dq[9]"]
set_property PACKAGE_PIN AJ23   [get_ports "c0_ddr4_dq[10]"]
set_property PACKAGE_PIN AF23   [get_ports "c0_ddr4_dq[11]"]
set_property PACKAGE_PIN AH23   [get_ports "c0_ddr4_dq[12]"]
set_property PACKAGE_PIN AF24   [get_ports "c0_ddr4_dq[13]"]
set_property PACKAGE_PIN AH22   [get_ports "c0_ddr4_dq[14]"]
set_property PACKAGE_PIN AG25   [get_ports "c0_ddr4_dq[15]"]
set_property PACKAGE_PIN AL22   [get_ports "c0_ddr4_dq[16]"]
set_property PACKAGE_PIN AL25   [get_ports "c0_ddr4_dq[17]"]
set_property PACKAGE_PIN AM20   [get_ports "c0_ddr4_dq[18]"]
set_property PACKAGE_PIN AK23   [get_ports "c0_ddr4_dq[19]"]
set_property PACKAGE_PIN AK22   [get_ports "c0_ddr4_dq[20]"]
set_property PACKAGE_PIN AL24   [get_ports "c0_ddr4_dq[21]"]
set_property PACKAGE_PIN AL20   [get_ports "c0_ddr4_dq[22]"]
set_property PACKAGE_PIN AL23   [get_ports "c0_ddr4_dq[23]"]
set_property PACKAGE_PIN AM24   [get_ports "c0_ddr4_dq[24]"]
set_property PACKAGE_PIN AN23   [get_ports "c0_ddr4_dq[25]"]
set_property PACKAGE_PIN AN24   [get_ports "c0_ddr4_dq[26]"]
set_property PACKAGE_PIN AP23   [get_ports "c0_ddr4_dq[27]"]
set_property PACKAGE_PIN AP25   [get_ports "c0_ddr4_dq[28]"]
set_property PACKAGE_PIN AN22   [get_ports "c0_ddr4_dq[29]"]
set_property PACKAGE_PIN AP24   [get_ports "c0_ddr4_dq[30]"]
set_property PACKAGE_PIN AM22   [get_ports "c0_ddr4_dq[31]"]
set_property PACKAGE_PIN AH28   [get_ports "c0_ddr4_dq[32]"]
set_property PACKAGE_PIN AK26   [get_ports "c0_ddr4_dq[33]"]
set_property PACKAGE_PIN AK28   [get_ports "c0_ddr4_dq[34]"]
set_property PACKAGE_PIN AM27   [get_ports "c0_ddr4_dq[35]"]
set_property PACKAGE_PIN AJ28   [get_ports "c0_ddr4_dq[36]"]
set_property PACKAGE_PIN AH27   [get_ports "c0_ddr4_dq[37]"]
set_property PACKAGE_PIN AK27   [get_ports "c0_ddr4_dq[38]"]
set_property PACKAGE_PIN AM26   [get_ports "c0_ddr4_dq[39]"]
set_property PACKAGE_PIN AL30   [get_ports "c0_ddr4_dq[40]"]
set_property PACKAGE_PIN AP29   [get_ports "c0_ddr4_dq[41]"]
set_property PACKAGE_PIN AM30   [get_ports "c0_ddr4_dq[42]"]
set_property PACKAGE_PIN AN28   [get_ports "c0_ddr4_dq[43]"]
set_property PACKAGE_PIN AL29   [get_ports "c0_ddr4_dq[44]"]
set_property PACKAGE_PIN AP28   [get_ports "c0_ddr4_dq[45]"]
set_property PACKAGE_PIN AM29   [get_ports "c0_ddr4_dq[46]"]
set_property PACKAGE_PIN AN27   [get_ports "c0_ddr4_dq[47]"]
set_property PACKAGE_PIN AH31   [get_ports "c0_ddr4_dq[48]"]
set_property PACKAGE_PIN AH32   [get_ports "c0_ddr4_dq[49]"]
set_property PACKAGE_PIN AJ34   [get_ports "c0_ddr4_dq[50]"]
set_property PACKAGE_PIN AK31   [get_ports "c0_ddr4_dq[51]"]
set_property PACKAGE_PIN AJ31   [get_ports "c0_ddr4_dq[52]"]
set_property PACKAGE_PIN AJ30   [get_ports "c0_ddr4_dq[53]"]
set_property PACKAGE_PIN AH34   [get_ports "c0_ddr4_dq[54]"]
set_property PACKAGE_PIN AK32   [get_ports "c0_ddr4_dq[55]"]
set_property PACKAGE_PIN AN33   [get_ports "c0_ddr4_dq[56]"]
set_property PACKAGE_PIN AP33   [get_ports "c0_ddr4_dq[57]"]
set_property PACKAGE_PIN AM34   [get_ports "c0_ddr4_dq[58]"]
set_property PACKAGE_PIN AP31   [get_ports "c0_ddr4_dq[59]"]
set_property PACKAGE_PIN AM32   [get_ports "c0_ddr4_dq[60]"]
set_property PACKAGE_PIN AN31   [get_ports "c0_ddr4_dq[61]"]
set_property PACKAGE_PIN AL34   [get_ports "c0_ddr4_dq[62]"]
set_property PACKAGE_PIN AN32   [get_ports "c0_ddr4_dq[63]"]




set_property PACKAGE_PIN AH21   [get_ports "c0_ddr4_dqs_c[0]"]
set_property PACKAGE_PIN AJ25   [get_ports "c0_ddr4_dqs_c[1]"]
set_property PACKAGE_PIN AK20   [get_ports "c0_ddr4_dqs_c[2]"]
set_property PACKAGE_PIN AP21   [get_ports "c0_ddr4_dqs_c[3]"]
set_property PACKAGE_PIN AL28   [get_ports "c0_ddr4_dqs_c[4]"]
set_property PACKAGE_PIN AP30   [get_ports "c0_ddr4_dqs_c[5]"]
set_property PACKAGE_PIN AJ33   [get_ports "c0_ddr4_dqs_c[6]"]
set_property PACKAGE_PIN AP34   [get_ports "c0_ddr4_dqs_c[7]"]

set_property PACKAGE_PIN AG21   [get_ports "c0_ddr4_dqs_t[0]"]
set_property PACKAGE_PIN AH24   [get_ports "c0_ddr4_dqs_t[1]"]
set_property PACKAGE_PIN AJ20   [get_ports "c0_ddr4_dqs_t[2]"]
set_property PACKAGE_PIN AP20   [get_ports "c0_ddr4_dqs_t[3]"]
set_property PACKAGE_PIN AL27   [get_ports "c0_ddr4_dqs_t[4]"]
set_property PACKAGE_PIN AN29   [get_ports "c0_ddr4_dqs_t[5]"]
set_property PACKAGE_PIN AH33   [get_ports "c0_ddr4_dqs_t[6]"]
set_property PACKAGE_PIN AN34   [get_ports "c0_ddr4_dqs_t[7]"]

set_property PACKAGE_PIN AJ18   [get_ports "c0_ddr4_odt"]
set_property PACKAGE_PIN AL18   [get_ports "c0_ddr4_reset_n"]

# IOSTANDARD
set_property   IOSTANDARD POD12_DCI [get_ports {c0_ddr4_dq[*]}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_adr[*]}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_ba[*]}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_bg}]
#set_property   IOSTANDARD  SSTL12_DCI [get_ports {c0_ddr4_bg[1]}]
set_property   IOSTANDARD LVCMOS12 [get_ports {c0_ddr4_reset_n}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_act_n}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_cke}]
set_property   IOSTANDARD SSTL12_DCI [get_ports {c0_ddr4_odt}]
set_property   IOSTANDARD POD12_DCI [get_ports {c0_ddr4_dm_dbi_n[*]}]
set_property   IOSTANDARD DIFF_POD12_DCI [get_ports {c0_ddr4_dqs_c[*]}]
set_property   IOSTANDARD DIFF_POD12_DCI [get_ports {c0_ddr4_dqs_t[*]}]
set_property   IOSTANDARD DIFF_SSTL12_DCI [get_ports {c0_ddr4_ck_c}]
set_property   IOSTANDARD DIFF_SSTL12_DCI [get_ports {c0_ddr4_ck_t}]


##################################################################################################
##################################################################################################
##################################################################################################
# ETHERNET ADDITIONS START HERE
##################################################################################################
##################################################################################################
##################################################################################################

# ==============================================================================
# ADDITIONAL LEDS FOR ETHERNET STATUS
#==============================================================================

# Full LED array (conflicts with CPU_MODE - choose one or the other!)
set_property PACKAGE_PIN AP8     [get_ports {led[0]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[0]}]
set_property PACKAGE_PIN H23     [get_ports {led[1]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[1]}]
set_property PACKAGE_PIN P20     [get_ports {led[2]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[2]}]
set_property PACKAGE_PIN P21     [get_ports {led[3]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[3]}]
set_property PACKAGE_PIN N22     [get_ports {led[4]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[4]}]
set_property PACKAGE_PIN M22     [get_ports {led[5]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[5]}]
set_property PACKAGE_PIN R23     [get_ports {led[6]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[6]}]
set_property PACKAGE_PIN P23     [get_ports {led[7]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {led[7]}]

set_false_path -to [get_ports {led[*]}]
set_output_delay 0 [get_ports {led[*]}]

# ==============================================================================
# ETHERNET - SGMII DIFFERENTIAL PAIRS
# ==============================================================================

# SGMII TX (from FPGA to PHY)
set_property PACKAGE_PIN N24             [get_ports "phy_sgmii_tx_p"]
set_property IOSTANDARD  DIFF_HSTL_I_18  [get_ports "phy_sgmii_tx_p"]
set_property PACKAGE_PIN M24             [get_ports "phy_sgmii_tx_n"]
set_property IOSTANDARD  DIFF_HSTL_I_18  [get_ports "phy_sgmii_tx_n"]

# SGMII RX (from PHY to FPGA)
set_property PACKAGE_PIN P24             [get_ports "phy_sgmii_rx_p"]
set_property IOSTANDARD  DIFF_HSTL_I_18  [get_ports "phy_sgmii_rx_p"]
set_property PACKAGE_PIN P25             [get_ports "phy_sgmii_rx_n"]
set_property IOSTANDARD  DIFF_HSTL_I_18  [get_ports "phy_sgmii_rx_n"]

# SGMII Clock from PHY (125 MHz reference)
set_property PACKAGE_PIN P26             [get_ports "phy_sgmii_clk_p"]
set_property IOSTANDARD  LVDS_25         [get_ports "phy_sgmii_clk_p"]
set_property PACKAGE_PIN N26             [get_ports "phy_sgmii_clk_n"]
set_property IOSTANDARD  LVDS_25         [get_ports "phy_sgmii_clk_n"]
#set_property -dict {LOC J23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_reset_n]
# Create clock constraint for SGMII reference clock
create_clock -period 1.600 -name sgmii_refclk_125mhz [get_ports phy_sgmii_clk_p]

# ==============================================================================
# ETHERNET - PHY MANAGEMENT INTERFACE
# ==============================================================================

# MDIO Clock
#set_property PACKAGE_PIN L25             [get_ports "phy_mdc"]
#set_property IOSTANDARD  LVCMOS18        [get_ports "phy_mdc"]

# MDIO Data (bidirectional)
#set_property PACKAGE_PIN H26             [get_ports "phy_mdio"]
#set_property IOSTANDARD  LVCMOS18        [get_ports "phy_mdio"]

# PHY Interrupt (input)
set_property PACKAGE_PIN K25             [get_ports "phy_int_n"]
set_property IOSTANDARD  LVCMOS18        [get_ports "phy_int_n"]

# PHY Reset (output, active low)
set_property PACKAGE_PIN J23             [get_ports "phy_reset_n"]
set_property IOSTANDARD  LVCMOS18        [get_ports "phy_reset_n"]

# Dummy port for constraint satisfaction
#set_property PACKAGE_PIN J21             [get_ports "dummy_port_in"]
#set_property IOSTANDARD  LVCMOSxx        [get_ports "dummy_port_in"]

# Timing constraints for management interface
#set_false_path -to [get_ports {phy_reset_n phy_mdio phy_mdc}]
#set_output_delay 0 [get_ports {phy_reset_n phy_mdio phy_mdc}]
#set_false_path -from [get_ports {phy_int_n phy_mdio}]
#set_input_delay 0 [get_ports {phy_int_n phy_mdio}]
set_false_path -to [get_ports {phy_reset_n}]
set_output_delay 0 [get_ports {phy_reset_n}]
set_false_path -from [get_ports {phy_int_n}]
set_input_delay 0 [get_ports {phy_int_n}]
# ==============================================================================
# CLOCK DOMAIN CROSSING CONSTRAINTS FOR ETHERNET
# ==============================================================================
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] -to [get_clocks -include_generated_clocks clk125_i]
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk125_i] -to [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]

set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_80] -to [get_clocks -include_generated_clocks mmcm_clkout0]
set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks mmcm_clkout0] -to [get_clocks -include_generated_clocks clk_out1_clk_wiz_80]

# 2. 80MHz processor <-> 125MHz Ethernet MAC
# Max delay set to the period of the faster clock (8ns) to ensure tight placement.
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_80] -to [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] -to [get_clocks -include_generated_clocks clk_out1_clk_wiz_80]

# 3. 100MHz processor <-> 80MHz DRAM (mmcm_clkout0)
#set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out2_clk_wiz_80] -to [get_clocks -include_generated_clocks mmcm_clkout0]
#set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks mmcm_clkout0] -to [get_clocks -include_generated_clocks clk_out2_clk_wiz_80]

# 4. 100MHz processor <-> 125MHz Ethernet MAC
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out2_clk_wiz_80] -to [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] -to [get_clocks -include_generated_clocks clk_out2_clk_wiz_80]

# 5. 125MHz Ethernet MAC <-> 80MHz DRAM (mmcm_clkout0)
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] -to [get_clocks -include_generated_clocks mmcm_clkout0]
set_max_delay 8.0 -datapath_only -from [get_clocks -include_generated_clocks mmcm_clkout0] -to [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]

# 6. 80MHz processor <-> 100MHz processor
set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_80] -to [get_clocks -include_generated_clocks clk_out2_clk_wiz_80]
set_max_delay 10.0 -datapath_only -from [get_clocks -include_generated_clocks clk_out2_clk_wiz_80] -to [get_clocks -include_generated_clocks clk_out1_clk_wiz_80]
