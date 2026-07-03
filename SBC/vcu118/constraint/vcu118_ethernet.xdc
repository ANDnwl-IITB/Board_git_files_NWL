##################################################################################################
## Bitstream / Configuration
##################################################################################################
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

##################################################################################################
## 1. System / General ports  (pin locations from KCU105 XDC -- KEEP AS-IS, same board section)
##################################################################################################

# Reset button (clk_rst) -- Bank 64, LVCMOS18
set_property PACKAGE_PIN L19      [get_ports {clk_rst}]
set_property IOSTANDARD  LVCMOS12 [get_ports {clk_rst}]

# CPU_MODE LEDs
#set_property PACKAGE_PIN AT32      [get_ports {CPU_MODE[0]}]
#set_property IOSTANDARD  LVCMOS12 [get_ports {CPU_MODE[0]}]
#set_property PACKAGE_PIN AV34      [get_ports {CPU_MODE[1]}]
#set_property IOSTANDARD  LVCMOS12 [get_ports {CPU_MODE[1]}]
# LEDs
set_property -dict {LOC AT32 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[0]}]
set_property -dict {LOC AV34 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[1]}]
set_property -dict {LOC AY30 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[2]}]
set_property -dict {LOC BB32 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[3]}]
set_property -dict {LOC BF32 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[4]}]
set_property -dict {LOC AU37 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[5]}]
set_property -dict {LOC AV36 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[6]}]
set_property -dict {LOC BA37 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[7]}]
set_false_path -to [get_ports {led[*]}]
set_output_delay 0 [get_ports {led[*]}]
##################################################################################################
## 2. Clocks
##################################################################################################

# 80 MHz clock wizard input (differential) -- from KCU105 XDC
set_property PACKAGE_PIN G31      [get_ports {clk_in_p}]
set_property IOSTANDARD  LVDS     [get_ports {clk_in_p}]
set_property PACKAGE_PIN F31      [get_ports {clk_in_n}]
set_property IOSTANDARD  LVDS     [get_ports {clk_in_n}]

# 300 MHz DDR4 system clock (differential) -- VCU118 bank location
set_property PACKAGE_PIN E12      [get_ports {c0_sys_clk_p}]
set_property IOSTANDARD  DIFF_SSTL12 [get_ports {c0_sys_clk_p}]
set_property PACKAGE_PIN D12      [get_ports {c0_sys_clk_n}]
set_property IOSTANDARD  DIFF_SSTL12 [get_ports {c0_sys_clk_n}]

# 125 MHz
set_property -dict {LOC AY24 IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property -dict {LOC AY23 IOSTANDARD LVDS} [get_ports clk_125mhz_n]
create_clock -period 8.000 -name clk_125mhz [get_ports clk_125mhz_p]

##################################################################################################
## 3. UARTs  (pin locations from KCU105 XDC)
##################################################################################################

## Debug UART (uart0)
set_property PACKAGE_PIN AW25      [get_ports {DEBUG_UART_RX[0]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {DEBUG_UART_RX[0]}]
set_property PACKAGE_PIN BB21      [get_ports {DEBUG_UART_TX[0]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {DEBUG_UART_TX[0]}]

## Serial UART (uart1)
set_property PACKAGE_PIN AY14     [get_ports {SERIAL_UART_RX[0]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {SERIAL_UART_RX[0]}]
set_property PACKAGE_PIN AY15     [get_ports {SERIAL_UART_TX[0]}]
set_property IOSTANDARD  LVCMOS18 [get_ports {SERIAL_UART_TX[0]}]

##################################################################################################
## 4. DDR4  (pin locations from VCU118 example XDC -- doc 3)
##          NOTE: Your MIG is configured for 64-bit data width (no ECC).
##          The VCU118 on-board SODIMM is 72-bit (ECC). The extra dq[64:79],
##          dm_dbi_n[8:9], dqs_c/t[8:9] pins are NOT in your top-level entity
##          and are intentionally omitted here.
##################################################################################################

set_property PACKAGE_PIN E13      [get_ports {c0_ddr4_act_n}]

set_property PACKAGE_PIN D14      [get_ports {c0_ddr4_adr[0]}]
set_property PACKAGE_PIN B15      [get_ports {c0_ddr4_adr[1]}]
set_property PACKAGE_PIN B16      [get_ports {c0_ddr4_adr[2]}]
set_property PACKAGE_PIN C14      [get_ports {c0_ddr4_adr[3]}]
set_property PACKAGE_PIN C15      [get_ports {c0_ddr4_adr[4]}]
set_property PACKAGE_PIN A13      [get_ports {c0_ddr4_adr[5]}]
set_property PACKAGE_PIN A14      [get_ports {c0_ddr4_adr[6]}]
set_property PACKAGE_PIN A15      [get_ports {c0_ddr4_adr[7]}]
set_property PACKAGE_PIN A16      [get_ports {c0_ddr4_adr[8]}]
set_property PACKAGE_PIN B12      [get_ports {c0_ddr4_adr[9]}]
set_property PACKAGE_PIN C12      [get_ports {c0_ddr4_adr[10]}]
set_property PACKAGE_PIN B13      [get_ports {c0_ddr4_adr[11]}]
set_property PACKAGE_PIN C13      [get_ports {c0_ddr4_adr[12]}]
set_property PACKAGE_PIN D15      [get_ports {c0_ddr4_adr[13]}]
set_property PACKAGE_PIN H14      [get_ports {c0_ddr4_adr[14]}]
set_property PACKAGE_PIN H15      [get_ports {c0_ddr4_adr[15]}]
set_property PACKAGE_PIN F15      [get_ports {c0_ddr4_adr[16]}]

set_property PACKAGE_PIN G15      [get_ports {c0_ddr4_ba[0]}]
set_property PACKAGE_PIN G13      [get_ports {c0_ddr4_ba[1]}]

set_property PACKAGE_PIN H13      [get_ports {c0_ddr4_bg[0]}]

set_property PACKAGE_PIN E14      [get_ports {c0_ddr4_ck_c[0]}]
set_property PACKAGE_PIN F14      [get_ports {c0_ddr4_ck_t[0]}]
set_property PACKAGE_PIN A10      [get_ports {c0_ddr4_cke[0]}]
set_property PACKAGE_PIN F13      [get_ports {c0_ddr4_cs_n[0]}]
set_property PACKAGE_PIN C8       [get_ports {c0_ddr4_odt[0]}]
set_property PACKAGE_PIN N20      [get_ports {c0_ddr4_reset_n}]

# DM/DBI -- 8 bits (your design width)
set_property PACKAGE_PIN G11      [get_ports {c0_ddr4_dm_dbi_n[0]}]
set_property PACKAGE_PIN R18      [get_ports {c0_ddr4_dm_dbi_n[1]}]
set_property PACKAGE_PIN K17      [get_ports {c0_ddr4_dm_dbi_n[2]}]
set_property PACKAGE_PIN G18      [get_ports {c0_ddr4_dm_dbi_n[3]}]
set_property PACKAGE_PIN B18      [get_ports {c0_ddr4_dm_dbi_n[4]}]
set_property PACKAGE_PIN P20      [get_ports {c0_ddr4_dm_dbi_n[5]}]
set_property PACKAGE_PIN L23      [get_ports {c0_ddr4_dm_dbi_n[6]}]
set_property PACKAGE_PIN G22      [get_ports {c0_ddr4_dm_dbi_n[7]}]

# DQ -- 64 bits (your design width)
set_property PACKAGE_PIN F11      [get_ports {c0_ddr4_dq[0]}]
set_property PACKAGE_PIN E11      [get_ports {c0_ddr4_dq[1]}]
set_property PACKAGE_PIN F10      [get_ports {c0_ddr4_dq[2]}]
set_property PACKAGE_PIN F9       [get_ports {c0_ddr4_dq[3]}]
set_property PACKAGE_PIN H12      [get_ports {c0_ddr4_dq[4]}]
set_property PACKAGE_PIN G12      [get_ports {c0_ddr4_dq[5]}]
set_property PACKAGE_PIN E9       [get_ports {c0_ddr4_dq[6]}]
set_property PACKAGE_PIN D9       [get_ports {c0_ddr4_dq[7]}]
set_property PACKAGE_PIN R19      [get_ports {c0_ddr4_dq[8]}]
set_property PACKAGE_PIN P19      [get_ports {c0_ddr4_dq[9]}]
set_property PACKAGE_PIN M18      [get_ports {c0_ddr4_dq[10]}]
set_property PACKAGE_PIN M17      [get_ports {c0_ddr4_dq[11]}]
set_property PACKAGE_PIN N19      [get_ports {c0_ddr4_dq[12]}]
set_property PACKAGE_PIN N18      [get_ports {c0_ddr4_dq[13]}]
set_property PACKAGE_PIN N17      [get_ports {c0_ddr4_dq[14]}]
set_property PACKAGE_PIN M16      [get_ports {c0_ddr4_dq[15]}]
set_property PACKAGE_PIN L16      [get_ports {c0_ddr4_dq[16]}]
set_property PACKAGE_PIN K16      [get_ports {c0_ddr4_dq[17]}]
set_property PACKAGE_PIN L18      [get_ports {c0_ddr4_dq[18]}]
set_property PACKAGE_PIN K18      [get_ports {c0_ddr4_dq[19]}]
set_property PACKAGE_PIN J17      [get_ports {c0_ddr4_dq[20]}]
set_property PACKAGE_PIN H17      [get_ports {c0_ddr4_dq[21]}]
set_property PACKAGE_PIN H19      [get_ports {c0_ddr4_dq[22]}]
set_property PACKAGE_PIN H18      [get_ports {c0_ddr4_dq[23]}]
set_property PACKAGE_PIN F19      [get_ports {c0_ddr4_dq[24]}]
set_property PACKAGE_PIN F18      [get_ports {c0_ddr4_dq[25]}]
set_property PACKAGE_PIN E19      [get_ports {c0_ddr4_dq[26]}]
set_property PACKAGE_PIN E18      [get_ports {c0_ddr4_dq[27]}]
set_property PACKAGE_PIN G20      [get_ports {c0_ddr4_dq[28]}]
set_property PACKAGE_PIN F20      [get_ports {c0_ddr4_dq[29]}]
set_property PACKAGE_PIN E17      [get_ports {c0_ddr4_dq[30]}]
set_property PACKAGE_PIN D16      [get_ports {c0_ddr4_dq[31]}]
set_property PACKAGE_PIN D17      [get_ports {c0_ddr4_dq[32]}]
set_property PACKAGE_PIN C17      [get_ports {c0_ddr4_dq[33]}]
set_property PACKAGE_PIN C19      [get_ports {c0_ddr4_dq[34]}]
set_property PACKAGE_PIN C18      [get_ports {c0_ddr4_dq[35]}]
set_property PACKAGE_PIN D20      [get_ports {c0_ddr4_dq[36]}]
set_property PACKAGE_PIN D19      [get_ports {c0_ddr4_dq[37]}]
set_property PACKAGE_PIN C20      [get_ports {c0_ddr4_dq[38]}]
set_property PACKAGE_PIN B20      [get_ports {c0_ddr4_dq[39]}]
set_property PACKAGE_PIN N23      [get_ports {c0_ddr4_dq[40]}]
set_property PACKAGE_PIN M23      [get_ports {c0_ddr4_dq[41]}]
set_property PACKAGE_PIN R21      [get_ports {c0_ddr4_dq[42]}]
set_property PACKAGE_PIN P21      [get_ports {c0_ddr4_dq[43]}]
set_property PACKAGE_PIN R22      [get_ports {c0_ddr4_dq[44]}]
set_property PACKAGE_PIN P22      [get_ports {c0_ddr4_dq[45]}]
set_property PACKAGE_PIN T23      [get_ports {c0_ddr4_dq[46]}]
set_property PACKAGE_PIN R23      [get_ports {c0_ddr4_dq[47]}]
set_property PACKAGE_PIN K24      [get_ports {c0_ddr4_dq[48]}]
set_property PACKAGE_PIN J24      [get_ports {c0_ddr4_dq[49]}]
set_property PACKAGE_PIN M21      [get_ports {c0_ddr4_dq[50]}]
set_property PACKAGE_PIN L21      [get_ports {c0_ddr4_dq[51]}]
set_property PACKAGE_PIN K21      [get_ports {c0_ddr4_dq[52]}]
set_property PACKAGE_PIN J21      [get_ports {c0_ddr4_dq[53]}]
set_property PACKAGE_PIN K22      [get_ports {c0_ddr4_dq[54]}]
set_property PACKAGE_PIN J22      [get_ports {c0_ddr4_dq[55]}]
set_property PACKAGE_PIN H23      [get_ports {c0_ddr4_dq[56]}]
set_property PACKAGE_PIN H22      [get_ports {c0_ddr4_dq[57]}]
set_property PACKAGE_PIN E23      [get_ports {c0_ddr4_dq[58]}]
set_property PACKAGE_PIN E22      [get_ports {c0_ddr4_dq[59]}]
set_property PACKAGE_PIN F21      [get_ports {c0_ddr4_dq[60]}]
set_property PACKAGE_PIN E21      [get_ports {c0_ddr4_dq[61]}]
set_property PACKAGE_PIN F24      [get_ports {c0_ddr4_dq[62]}]
set_property PACKAGE_PIN F23      [get_ports {c0_ddr4_dq[63]}]

# DQS -- 8 pairs (your design width)
set_property PACKAGE_PIN D10      [get_ports {c0_ddr4_dqs_c[0]}]
set_property PACKAGE_PIN P16      [get_ports {c0_ddr4_dqs_c[1]}]
set_property PACKAGE_PIN J19      [get_ports {c0_ddr4_dqs_c[2]}]
set_property PACKAGE_PIN E16      [get_ports {c0_ddr4_dqs_c[3]}]
set_property PACKAGE_PIN A18      [get_ports {c0_ddr4_dqs_c[4]}]
set_property PACKAGE_PIN M22      [get_ports {c0_ddr4_dqs_c[5]}]
set_property PACKAGE_PIN L20      [get_ports {c0_ddr4_dqs_c[6]}]
set_property PACKAGE_PIN G23      [get_ports {c0_ddr4_dqs_c[7]}]

set_property PACKAGE_PIN D11      [get_ports {c0_ddr4_dqs_t[0]}]
set_property PACKAGE_PIN P17      [get_ports {c0_ddr4_dqs_t[1]}]
set_property PACKAGE_PIN K19      [get_ports {c0_ddr4_dqs_t[2]}]
set_property PACKAGE_PIN F16      [get_ports {c0_ddr4_dqs_t[3]}]
set_property PACKAGE_PIN A19      [get_ports {c0_ddr4_dqs_t[4]}]
set_property PACKAGE_PIN N22      [get_ports {c0_ddr4_dqs_t[5]}]
set_property PACKAGE_PIN M20      [get_ports {c0_ddr4_dqs_t[6]}]
set_property PACKAGE_PIN H24      [get_ports {c0_ddr4_dqs_t[7]}]

##################################################################################################
## 5. DDR4 IOSTANDARD assignments (VCU118)
##################################################################################################

set_property IOSTANDARD POD12_DCI       [get_ports {c0_ddr4_dq[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {c0_ddr4_dm_dbi_n[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {c0_ddr4_dqs_c[*]}]
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {c0_ddr4_dqs_t[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_adr[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_ba[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_bg[0]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_act_n}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_cke[0]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_cs_n[0]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {c0_ddr4_odt[0]}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {c0_ddr4_ck_c[0]}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {c0_ddr4_ck_t[0]}]
set_property IOSTANDARD LVCMOS12        [get_ports {c0_ddr4_reset_n}]
###################################################################################################
## 6. Ethernet
###################################################################################################
# Gigabit Ethernet SGMII PHY
set_property -dict {LOC AU24 IOSTANDARD LVDS} [get_ports phy_sgmii_rx_p]
set_property -dict {LOC AV24 IOSTANDARD LVDS} [get_ports phy_sgmii_rx_n]
set_property -dict {LOC AU21 IOSTANDARD LVDS} [get_ports phy_sgmii_tx_p]
set_property -dict {LOC AV21 IOSTANDARD LVDS} [get_ports phy_sgmii_tx_n]
set_property -dict {LOC AT22 IOSTANDARD LVDS} [get_ports phy_sgmii_clk_p]
set_property -dict {LOC AU22 IOSTANDARD LVDS} [get_ports phy_sgmii_clk_n]
set_property -dict {LOC BA21 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_reset_n]
set_property -dict {LOC AR24 IOSTANDARD LVCMOS18} [get_ports phy_int_n]
set_property -dict {LOC AR23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_mdio]
set_property -dict {LOC AV23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_mdc]

set_false_path -to [get_ports {phy_reset_n}]
set_output_delay 0 [get_ports {phy_reset_n}]
set_false_path -from [get_ports {phy_int_n}]
set_input_delay 0 [get_ports {phy_int_n}]


# ==============================================================================
# CLOCK DOMAIN CROSSING CONSTRAINTS FOR VCU118
# ==============================================================================
# Clock summary:
#   clk_out1_clk_wiz_0   : 80 MHz  - processor + DRAM bridge (clk_wiz_0 clk_out1)
#   clk_125mhz_mmcm_out  : 125 MHz - Ethernet MAC (MMCM inside fpga_top_vcu118)
#   clk125_i             : 125 MHz - PCS/PMA recovered clock (gig_ethernet_pcs_pma_0)
#   mmcm_clkout0         : 80 MHz  - MIG ui_clk (DDR4 controller)
#   phy_sgmii_clk        : 625 MHz - SGMII refclk (primary input clock)
#   clk_in_p             : input   - clk_wiz_0 source

# ------------------------------------------------------------------------------
# 1. 80MHz processor (clk_wiz) <-> 125MHz Ethernet MAC (MMCM)
#    Max delay = period of faster clock (8ns)
# ------------------------------------------------------------------------------
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_0] \
    -to   [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] \
    -to   [get_clocks -include_generated_clocks clk_out1_clk_wiz_0]

# ------------------------------------------------------------------------------
# 2. 125MHz Ethernet MAC (MMCM) <-> 125MHz PCS/PMA recovered clock
#    Both nominally 125MHz but from different PLLs so async to each other
# ------------------------------------------------------------------------------
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] \
    -to   [get_clocks -include_generated_clocks IntRx_ClkOut0]
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks IntRx_ClkOut0] \
    -to   [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]

# ------------------------------------------------------------------------------
# 3. 80MHz processor (clk_wiz) <-> 80MHz MIG ui_clk (DDR4)
#    Both 80MHz but from different PLLs
# ------------------------------------------------------------------------------
set_max_delay 10.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_0] \
    -to   [get_clocks -include_generated_clocks mmcm_clkout0]
set_max_delay 10.0 -datapath_only \
    -from [get_clocks -include_generated_clocks mmcm_clkout0] \
    -to   [get_clocks -include_generated_clocks clk_out1_clk_wiz_0]

# ------------------------------------------------------------------------------
# 4. 125MHz Ethernet MAC (MMCM) <-> 80MHz MIG ui_clk (DDR4)
# ------------------------------------------------------------------------------
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_125mhz_mmcm_out] \
    -to   [get_clocks -include_generated_clocks mmcm_clkout0]
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks mmcm_clkout0] \
    -to   [get_clocks -include_generated_clocks clk_125mhz_mmcm_out]

# ------------------------------------------------------------------------------
# 5. 125MHz PCS/PMA recovered clock <-> 80MHz MIG ui_clk (DDR4)
# ------------------------------------------------------------------------------
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks IntRx_ClkOut0] \
    -to   [get_clocks -include_generated_clocks mmcm_clkout0]
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks mmcm_clkout0] \
    -to   [get_clocks -include_generated_clocks IntRx_ClkOut0]

# ------------------------------------------------------------------------------
# 6. 125MHz PCS/PMA recovered clock <-> 80MHz processor (clk_wiz)
# ------------------------------------------------------------------------------
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks IntRx_ClkOut0] \
    -to   [get_clocks -include_generated_clocks clk_out1_clk_wiz_0]
set_max_delay 8.0 -datapath_only \
    -from [get_clocks -include_generated_clocks clk_out1_clk_wiz_0] \
    -to   [get_clocks -include_generated_clocks IntRx_ClkOut0]
