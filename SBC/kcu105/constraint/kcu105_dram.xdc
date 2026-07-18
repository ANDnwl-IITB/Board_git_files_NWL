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
set_property PACKAGE_PIN AP8     [get_ports {CPU_MODE[0]}] ;
set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[0]}] ;
set_property PACKAGE_PIN H23     [get_ports {CPU_MODE[1]}] ;
set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[1]}] ;



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

########################################################################################################
## 1. ETHERNET related ports.
########################################################################################################

# Gigabit Ethernet SGMII PHY
set_property PACKAGE_PIN M24     [get_ports {phy_sgmii_tx_n}] ;# ENET_SGMII_IN_N Bank  67 VCCO - VCC1V8   - IO_L23N_T3U_N9_67
set_property IOSTANDARD  DIFF_HSTL_I_18     [get_ports {phy_sgmii_tx_n}] ;# ENET_SGMII_IN_N Bank  67 VCCO - VCC1V8   - IO_L23N_T3U_N9_67
set_property PACKAGE_PIN N24     [get_ports {phy_sgmii_tx_p}] ;# ENET_SGMII_IN_P Bank  67 VCCO - VCC1V8   - IO_L23P_T3U_N8_67
set_property IOSTANDARD  DIFF_HSTL_I_18     [get_ports {phy_sgmii_tx_p}] ;# ENET_SGMII_IN_P Bank  67 VCCO - VCC1V8   - IO_L23P_T3U_N8_67
set_property PACKAGE_PIN P25     [get_ports {phy_sgmii_rx_n}] ;# ENET_SGMII_OUT_N Bank  67 VCCO - VCC1V8   - IO_L21N_T3L_N5_AD8N_67
set_property IOSTANDARD  DIFF_HSTL_I_18     [get_ports {phy_sgmii_rx_n}] ;# ENET_SGMII_OUT_N Bank  67 VCCO - VCC1V8   - IO_L21N_T3L_N5_AD8N_67
set_property PACKAGE_PIN P24     [get_ports {phy_sgmii_rx_p}] ;# ENET_SGMII_OUT_P Bank  67 VCCO - VCC1V8   - IO_L21P_T3L_N4_AD8P_67
set_property IOSTANDARD  DIFF_HSTL_I_18     [get_ports {phy_sgmii_rx_p}] ;# ENET_SGMII_OUT_P Bank  67 VCCO - VCC1V8   - IO_L21P_T3L_N4_AD8P_67
set_property PACKAGE_PIN N26     [get_ports {phy_sgmii_clk_n}] ;# ENET_SGMII_CLK_N Bank  67 VCCO - VCC1V8   - IO_L12N_T1U_N11_GC_67
set_property IOSTANDARD  LVDS_25     [get_ports {phy_sgmii_clk_n}] ;# ENET_SGMII_CLK_N Bank  67 VCCO - VCC1V8   - IO_L12N_T1U_N11_GC_67
set_property PACKAGE_PIN P26     [get_ports {phy_sgmii_clk_p}] ;# ENET_SGMII_CLK_P Bank  67 VCCO - VCC1V8   - IO_L12P_T1U_N10_GC_67
set_property IOSTANDARD  LVDS_25     [get_ports {phy_sgmii_clk_p}] ;# ENET_SGMII_CLK_P Bank  67 VCCO - VCC1V8   - IO_L12P_T1U_N10_GC_67
set_property PACKAGE_PIN K25     [get_ports {phy_int_n}] ;# ENET_PDWN_B_I_INT_B_O Bank  67 VCCO - VCC1V8   - IO_L24P_T3U_N10_67
set_property IOSTANDARD  LVCMOS18 [get_ports {phy_int_n}] ;# ENET_PDWN_B_I_INT_B_O Bank  67 VCCO - VCC1V8   - IO_L24P_T3U_N10_67
set_property PACKAGE_PIN H26     [get_ports {phy_mdio}] ;# ENET_MDIO Bank  67 VCCO - VCC1V8   - IO_T3U_N12_67
set_property IOSTANDARD  LVCMOS18 [get_ports {phy_mdio}] ;# ENET_MDIO Bank  67 VCCO - VCC1V8   - IO_T3U_N12_67
set_property PACKAGE_PIN L25     [get_ports {phy_mdc}] ;# ENET_MDC Bank  67 VCCO - VCC1V8   - IO_T1U_N12_67
set_property IOSTANDARD  LVCMOS18 [get_ports {phy_mdc}] ;# ENET_MDC Bank  67 VCCO - VCC1V8   - IO_T1U_N12_67
set_property PACKAGE_PIN A22     [get_ports dummy_port_in] ;# Bank  67 VCCO - VCC1V8   - IO_L19P_T3L_N0_DBC_AD9P_67
set_property IOSTANDARD  LVCMOSxx [get_ports dummy_port_in] ;# Bank  67 VCCO - VCC1V8   - IO_L19P_T3L_N0_DBC_AD9P_67
#set_property PACKAGE_PIN BJ23     [get_ports "ENET_CLKOUT"] ;# Bank  67 VCCO - VCC1V8   - IO_L14N_T2L_N3_GC_67
#set_property IOSTANDARD  LVCMOS18 [get_ports "ENET_CLKOUT"] ;# Bank  67 VCCO - VCC1V8   - IO_L14N_T2L_N3_GC_67
#set_property PACKAGE_PIN BP27     [get_ports "ENET_COL_GPIO"] ;# Bank  67 VCCO - VCC1V8   - IO_T0U_N12_VRP_67
#set_property IOSTANDARD  LVCMOS18 [get_ports "ENET_COL_GPIO"] ;# Bank  67 VCCO - VCC1V8   - IO_T0U_N12_VRP_67

set_false_path -to [get_ports {phy_reset_n phy_mdio phy_mdc}]
set_output_delay 0 [get_ports {phy_reset_n phy_mdio phy_mdc}]
set_false_path -from [get_ports {phy_int_n phy_mdio}]
set_input_delay 0 [get_ports {phy_int_n phy_mdio}]

# Reset button

set_property PACKAGE_PIN AN8      [get_ports {clk_rst}] ;# Bank  64 VCCO - DDR4_VDDQ_1V2 - IO_L1N_T0L_N1_DBC_64
set_property IOSTANDARD  LVCMOS18  [get_ports {clk_rst}] ;# Bank  64 VCCO - DDR4_VDDQ_1V2 - IO_L1N_T0L_N1_DBC_64





