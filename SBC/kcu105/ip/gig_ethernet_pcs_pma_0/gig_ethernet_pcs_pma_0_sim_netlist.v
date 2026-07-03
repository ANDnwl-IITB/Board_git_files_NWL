// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Apr 21 16:15:05 2026
// Host        : vivado running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madhav/ethernet_kcu105/ethernet_kcu105.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_0
   (txp,
    txn,
    rxp,
    rxn,
    refclk625_p,
    refclk625_n,
    clk125_out,
    idelay_rdy_out,
    clk625_out,
    clk312_out,
    rst_125_out,
    mmcm_locked_out,
    sgmii_clk_r,
    sgmii_clk_f,
    sgmii_clk_en,
    speed_is_10_100,
    speed_is_100,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    status_vector,
    reset,
    signal_detect);
  output txp;
  output txn;
  input rxp;
  input rxn;
  input refclk625_p;
  input refclk625_n;
  output clk125_out;
  output idelay_rdy_out;
  output clk625_out;
  output clk312_out;
  output rst_125_out;
  output mmcm_locked_out;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input speed_is_10_100;
  input speed_is_100;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;

  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire clk125_out;
  wire clk312_out;
  wire clk625_out;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire idelay_rdy_out;
  wire mmcm_locked_out;
  (* IBUF_LOW_PWR = 0 *) wire refclk625_n;
  (* IBUF_LOW_PWR = 0 *) wire refclk625_p;
  wire reset;
  wire rst_125_out;
  (* IBUF_LOW_PWR = 0 *) wire rxn;
  (* IBUF_LOW_PWR = 0 *) wire rxp;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [15:0]status_vector;
  (* SLEW = "SLOW" *) wire txn;
  (* SLEW = "SLOW" *) wire txp;

  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* X_CORE_INFO = "gig_ethernet_pcs_pma_v16_1_7,Vivado 2019.2" *) 
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support inst
       (.an_adv_config_vector(an_adv_config_vector),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .clk125_out(clk125_out),
        .clk312_out(clk312_out),
        .clk625_out(clk625_out),
        .configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .idelay_rdy_out(idelay_rdy_out),
        .mmcm_locked_out(mmcm_locked_out),
        .refclk625_n(refclk625_n),
        .refclk625_p(refclk625_p),
        .reset(reset),
        .rst_125_out(rst_125_out),
        .rxn(rxn),
        .rxp(rxp),
        .sgmii_clk_en(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .signal_detect(signal_detect),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .status_vector(status_vector),
        .txn(txn),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block
   (mgt_tx_reset,
    gmii_isolate,
    an_interrupt,
    status_vector,
    txp,
    txn,
    sgmii_clk_r,
    sgmii_clk_en_reg,
    gmii_rx_dv,
    gmii_rx_er,
    sgmii_clk_f,
    gmii_rxd,
    rst_125_out,
    signal_detect,
    data_sync_reg1,
    an_adv_config_vector,
    an_restart_config,
    configuration_vector,
    CLK,
    rxp,
    rxn,
    \mdataouta_reg[3] ,
    not_rxclk,
    gmii_tx_en,
    gmii_tx_er,
    mmcm_locked_out,
    speed_is_10_100,
    speed_is_100,
    tx_rst,
    gmii_txd);
  output mgt_tx_reset;
  output gmii_isolate;
  output an_interrupt;
  output [12:0]status_vector;
  output txp;
  output txn;
  output sgmii_clk_r;
  output sgmii_clk_en_reg;
  output gmii_rx_dv;
  output gmii_rx_er;
  output sgmii_clk_f;
  output [7:0]gmii_rxd;
  input rst_125_out;
  input signal_detect;
  input data_sync_reg1;
  input [0:0]an_adv_config_vector;
  input an_restart_config;
  input [4:0]configuration_vector;
  input CLK;
  input rxp;
  input rxn;
  input \mdataouta_reg[3] ;
  input not_rxclk;
  input gmii_tx_en;
  input gmii_tx_er;
  input mmcm_locked_out;
  input speed_is_10_100;
  input speed_is_100;
  input tx_rst;
  input [7:0]gmii_txd;

  wire CLK;
  wire [0:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire data_sync_reg1;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_dv_int;
  wire gmii_rx_er;
  wire gmii_rx_er_int;
  wire [7:0]gmii_rxd;
  wire [7:0]gmii_rxd_int;
  wire gmii_tx_en;
  wire gmii_tx_en_int;
  wire gmii_tx_er;
  wire gmii_tx_er_int;
  wire [7:0]gmii_txd;
  wire [7:0]gmii_txd_int;
  wire \mdataouta_reg[3] ;
  wire mgt_tx_reset;
  wire mmcm_locked_out;
  wire mmcm_locked_sync_125;
  wire not_rxclk;
  wire rst_125_out;
  wire rx_rst;
  wire rxchariscomma;
  wire rxcharisk;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxp;
  wire rxrundisp;
  wire sgmii_clk_en_reg;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [12:0]status_vector;
  wire tx_rst;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txp;
  wire NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_enablealign_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mgt_rx_reset_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_powerdown_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED;
  wire [15:8]NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED;

  (* B_SHIFTER_ADDR = "10'b0101001110" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_AN = "TRUE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "TRUE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "TRUE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "FALSE" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 gig_ethernet_pcs_pma_0_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,an_adv_config_vector,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(mmcm_locked_sync_125),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED),
        .enablealign(NLW_gig_ethernet_pcs_pma_0_core_enablealign_UNCONNECTED),
        .ewrap(NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv_int),
        .gmii_rx_er(gmii_rx_er_int),
        .gmii_rxd(gmii_rxd_int),
        .gmii_tx_en(gmii_tx_en_int),
        .gmii_tx_er(gmii_tx_er_int),
        .gmii_txd(gmii_txd_int),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(NLW_gig_ethernet_pcs_pma_0_core_mgt_rx_reset_UNCONNECTED),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(NLW_gig_ethernet_pcs_pma_0_core_powerdown_UNCONNECTED),
        .reset(rst_125_out),
        .reset_done(1'b1),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({1'b0,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,1'b0,1'b0}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(rxrundisp),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED[15:14],status_vector[12:8],NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED[8],status_vector[7:0]}),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(1'b0),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(data_sync_reg1));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8 lvds_transceiver_mw
       (.CLK(CLK),
        .\loop0[0].dataout_reg[9] (data_sync_reg1),
        .\mdataouta_reg[3] (\mdataouta_reg[3] ),
        .not_rxclk(not_rxclk),
        .reset_in(rx_rst),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxp(rxp),
        .rxrundisp(rxrundisp),
        .tx_rst(tx_rst),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .txn(txn),
        .txp(txp));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer reset_wtd_timer
       (.reset_in(rx_rst),
        .reset_reg_0(data_sync_reg1),
        .reset_sync5(mgt_tx_reset),
        .rst_125_out(rst_125_out),
        .status_vector(status_vector[1]));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt sgmii_logic
       (.D(gmii_rxd_int),
        .Q(gmii_txd_int),
        .gmii_rx_dv(gmii_rx_dv_int),
        .gmii_rx_dv_out_reg(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er_int),
        .gmii_rx_er_out_reg(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en_int),
        .gmii_tx_en_out_reg(data_sync_reg1),
        .gmii_tx_en_out_reg_0(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er_int),
        .gmii_tx_er_out_reg(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .reset_in(mgt_tx_reset),
        .sgmii_clk_en_reg(sgmii_clk_en_reg),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block sync_block_mmcm_locked
       (.data_out(mmcm_locked_sync_125),
        .data_sync_reg1_0(data_sync_reg1),
        .mmcm_locked_out(mmcm_locked_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_clk_gen" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen
   (sgmii_clk_r,
    sgmii_clk_en_reg_0,
    sgmii_clk_f,
    reg4_reg,
    reset_out,
    data_out,
    speed_is_10_100_fall_reg_0);
  output sgmii_clk_r;
  output sgmii_clk_en_reg_0;
  output sgmii_clk_f;
  input reg4_reg;
  input reset_out;
  input data_out;
  input speed_is_10_100_fall_reg_0;

  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_div1_n_3;
  wire clk_en_12_5_fall;
  wire clk_en_12_5_fall0;
  wire clk_en_12_5_rise;
  wire clk_en_12_5_rise0;
  wire clk_en_1_25_fall;
  wire clk_en_1_25_fall0;
  wire data_out;
  wire reg4_reg;
  wire reset_fall;
  wire reset_out;
  wire sgmii_clk_en_i_1_n_0;
  wire sgmii_clk_en_reg_0;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire sgmii_clk_r0_out;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;
  wire speed_is_10_100_fall_reg_0;

  FDRE clk12_5_reg_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk12_5),
        .Q(clk12_5_reg),
        .R(reset_out));
  FDRE clk1_25_reg_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk1_25),
        .Q(clk1_25_reg),
        .R(reset_out));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr clk_div1
       (.clk12_5(clk12_5),
        .clk12_5_reg(clk12_5_reg),
        .clk1_25(clk1_25),
        .clk_en_12_5_fall0(clk_en_12_5_fall0),
        .clk_en_12_5_rise0(clk_en_12_5_rise0),
        .reg4_reg_0(reg4_reg),
        .reset_fall(reset_fall),
        .reset_out(reset_out),
        .speed_is_100_fall(speed_is_100_fall),
        .speed_is_10_100_fall(speed_is_10_100_fall),
        .speed_is_10_100_fall_reg(clk_div1_n_3));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2 clk_div2
       (.clk12_5(clk12_5),
        .clk1_25(clk1_25),
        .clk1_25_reg(clk1_25_reg),
        .clk_en_12_5_rise(clk_en_12_5_rise),
        .clk_en_1_25_fall0(clk_en_1_25_fall0),
        .data_out(data_out),
        .reg4_reg_0(reg4_reg),
        .reset_out(reset_out),
        .sgmii_clk_r0_out(sgmii_clk_r0_out),
        .sgmii_clk_r_reg(speed_is_10_100_fall_reg_0));
  FDRE clk_en_12_5_fall_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk_en_12_5_fall0),
        .Q(clk_en_12_5_fall),
        .R(reset_out));
  FDRE clk_en_12_5_rise_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk_en_12_5_rise0),
        .Q(clk_en_12_5_rise),
        .R(reset_out));
  FDRE clk_en_1_25_fall_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk_en_1_25_fall0),
        .Q(clk_en_1_25_fall),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    reset_fall_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(reset_out),
        .Q(reset_fall),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    sgmii_clk_en_i_1
       (.I0(clk_en_1_25_fall),
        .I1(data_out),
        .I2(clk_en_12_5_fall),
        .I3(speed_is_10_100_fall_reg_0),
        .O(sgmii_clk_en_i_1_n_0));
  FDRE sgmii_clk_en_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(sgmii_clk_en_i_1_n_0),
        .Q(sgmii_clk_en_reg_0),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sgmii_clk_f_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(clk_div1_n_3),
        .Q(sgmii_clk_f),
        .R(1'b0));
  FDRE sgmii_clk_r_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(sgmii_clk_r0_out),
        .Q(sgmii_clk_r),
        .R(reset_out));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_100_fall_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(data_out),
        .Q(speed_is_100_fall),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    speed_is_10_100_fall_reg
       (.C(reg4_reg),
        .CE(1'b1),
        .D(speed_is_10_100_fall_reg_0),
        .Q(speed_is_10_100_fall),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_decode_8b10b_lut_base" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base
   (rxcharisk,
    rxnotintable,
    rxrundisp,
    rxdisperr,
    rxdata,
    k,
    \grdni.run_disp_i_reg_0 ,
    code_err_i,
    \grdni.run_disp_i_reg_1 ,
    \gdeni.disp_err_reg_0 ,
    b3,
    out);
  output [0:0]rxcharisk;
  output [0:0]rxnotintable;
  output [0:0]rxrundisp;
  output [0:0]rxdisperr;
  output [7:0]rxdata;
  input k;
  input \grdni.run_disp_i_reg_0 ;
  input code_err_i;
  input \grdni.run_disp_i_reg_1 ;
  input \gdeni.disp_err_reg_0 ;
  input [7:5]b3;
  input [4:0]out;

  wire [7:5]b3;
  wire code_err_i;
  wire \gdeni.disp_err_reg_0 ;
  wire \grdni.run_disp_i_reg_0 ;
  wire \grdni.run_disp_i_reg_1 ;
  wire k;
  wire [4:0]out;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire [0:0]rxrundisp;

  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[0] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(out[0]),
        .Q(rxdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[1] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(out[1]),
        .Q(rxdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[2] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(out[2]),
        .Q(rxdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[3] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(out[3]),
        .Q(rxdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[4] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(out[4]),
        .Q(rxdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[5] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(b3[5]),
        .Q(rxdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[6] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(b3[6]),
        .Q(rxdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_i_reg[7] 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(b3[7]),
        .Q(rxdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gcerr.code_err_reg 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(code_err_i),
        .Q(rxnotintable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gdeni.disp_err_reg 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(\gdeni.disp_err_reg_0 ),
        .Q(rxdisperr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \grdni.run_disp_i_reg 
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(\grdni.run_disp_i_reg_1 ),
        .Q(rxrundisp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    kout_i_reg
       (.C(\grdni.run_disp_i_reg_0 ),
        .CE(1'b1),
        .D(k),
        .Q(rxcharisk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_delay_controller_wrap" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap
   (pd_min,
    pd_max,
    meq_max,
    meq_min_reg_0,
    upd_flag_reg_0,
    delay_change_reg_0,
    dec_run_reg_0,
    inc_run_reg_0,
    sload,
    data_mux_reg_0,
    pd_min_reg_0,
    s_ovflw12_out,
    Q,
    m_delay_val_int142_out,
    \s_state_reg[3]_0 ,
    s_ovflw1,
    \msxor_ctd_reg[1]_0 ,
    \msxor_cti_reg[1]_0 ,
    \m_delay_val_int_reg[1]_0 ,
    \s_state_reg[2]_0 ,
    \s_state_reg[1]_0 ,
    \s_state_reg[3]_1 ,
    \s_state_reg[2]_1 ,
    dec_run,
    mload,
    \s_delay_val_int_reg[6]_0 ,
    \data_out_reg[3]_0 ,
    E,
    CLK,
    upd_flag_reg_1,
    reset_out,
    delay_change_reg_1,
    dec_run_reg_1,
    inc_run_reg_1,
    data_mux_reg_1,
    sload_reg_0,
    \m_delay_val_int_reg[5]_0 ,
    \sdataoutc_reg[3]_0 ,
    D,
    \m_delay_val_int_reg[1]_1 ,
    \sdataouta_reg[3]_0 ,
    \action_reg[1]_0 );
  output pd_min;
  output pd_max;
  output meq_max;
  output meq_min_reg_0;
  output upd_flag_reg_0;
  output delay_change_reg_0;
  output dec_run_reg_0;
  output inc_run_reg_0;
  output sload;
  output data_mux_reg_0;
  output pd_min_reg_0;
  output s_ovflw12_out;
  output [6:0]Q;
  output m_delay_val_int142_out;
  output [0:0]\s_state_reg[3]_0 ;
  output s_ovflw1;
  output [1:0]\msxor_ctd_reg[1]_0 ;
  output [1:0]\msxor_cti_reg[1]_0 ;
  output \m_delay_val_int_reg[1]_0 ;
  output \s_state_reg[2]_0 ;
  output \s_state_reg[1]_0 ;
  output \s_state_reg[3]_1 ;
  output \s_state_reg[2]_1 ;
  output dec_run;
  output mload;
  output [6:0]\s_delay_val_int_reg[6]_0 ;
  output [3:0]\data_out_reg[3]_0 ;
  input [0:0]E;
  input CLK;
  input upd_flag_reg_1;
  input reset_out;
  input delay_change_reg_1;
  input dec_run_reg_1;
  input inc_run_reg_1;
  input data_mux_reg_1;
  input sload_reg_0;
  input [6:0]\m_delay_val_int_reg[5]_0 ;
  input [0:0]\sdataoutc_reg[3]_0 ;
  input [3:0]D;
  input [0:0]\m_delay_val_int_reg[1]_1 ;
  input [3:0]\sdataouta_reg[3]_0 ;
  input [0:0]\action_reg[1]_0 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \action[0]_i_1_n_0 ;
  wire [0:0]\action_reg[1]_0 ;
  wire \action_reg_n_0_[0] ;
  wire data_mux_reg_0;
  wire data_mux_reg_1;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire [3:0]\data_out_reg[3]_0 ;
  wire dec_run;
  wire dec_run_reg_0;
  wire dec_run_reg_1;
  wire delay_change_reg_0;
  wire delay_change_reg_1;
  wire inc_run_reg_0;
  wire inc_run_reg_1;
  wire \m_delay_mux[0]_i_1_n_0 ;
  wire \m_delay_mux[1]_i_1_n_0 ;
  wire \m_delay_mux[1]_i_2_n_0 ;
  wire \m_delay_mux[1]_i_3_n_0 ;
  wire \m_delay_mux_reg_n_0_[0] ;
  wire \m_delay_mux_reg_n_0_[1] ;
  wire m_delay_val_int;
  wire [5:5]m_delay_val_int00_in;
  wire m_delay_val_int1;
  wire m_delay_val_int142_out;
  wire \m_delay_val_int[0]_i_1_n_0 ;
  wire \m_delay_val_int[0]_i_2_n_0 ;
  wire \m_delay_val_int[2]_i_1_n_0 ;
  wire \m_delay_val_int[2]_i_2_n_0 ;
  wire \m_delay_val_int[2]_i_3_n_0 ;
  wire \m_delay_val_int[3]_i_1_n_0 ;
  wire \m_delay_val_int[3]_i_2_n_0 ;
  wire \m_delay_val_int[3]_i_3_n_0 ;
  wire \m_delay_val_int[4]_i_1_n_0 ;
  wire \m_delay_val_int[4]_i_2_n_0 ;
  wire \m_delay_val_int[4]_i_3_n_0 ;
  wire \m_delay_val_int[4]_i_4_n_0 ;
  wire \m_delay_val_int[5]_i_1_n_0 ;
  wire \m_delay_val_int[5]_i_3_n_0 ;
  wire \m_delay_val_int[6]_i_10_n_0 ;
  wire \m_delay_val_int[6]_i_1_n_0 ;
  wire \m_delay_val_int[6]_i_2_n_0 ;
  wire \m_delay_val_int[6]_i_8_n_0 ;
  wire \m_delay_val_int[6]_i_9_n_0 ;
  wire \m_delay_val_int_reg[1]_0 ;
  wire [0:0]\m_delay_val_int_reg[1]_1 ;
  wire [6:0]\m_delay_val_int_reg[5]_0 ;
  wire \mdataouta_reg_n_0_[0] ;
  wire mdataoutb;
  wire [3:0]mdataoutc;
  wire \mdataoutc[0]_i_1_n_0 ;
  wire \mdataoutc[1]_i_1_n_0 ;
  wire \mdataoutc[2]_i_1_n_0 ;
  wire \mdataoutc[3]_i_1_n_0 ;
  wire meq_max;
  wire meq_max_i_1_n_0;
  wire meq_max_i_2_n_0;
  wire meq_max_i_3_n_0;
  wire meq_min_i_1_n_0;
  wire meq_min_i_2_n_0;
  wire meq_min_reg_0;
  wire mload;
  wire mload_0;
  wire mload_i_2_n_0;
  wire \msxor_ctd[0]_i_1_n_0 ;
  wire \msxor_ctd[1]_i_1_n_0 ;
  wire [1:0]\msxor_ctd_reg[1]_0 ;
  wire \msxor_cti[0]_i_1_n_0 ;
  wire \msxor_cti[1]_i_1_n_0 ;
  wire [1:0]\msxor_cti_reg[1]_0 ;
  wire p_0_in;
  wire [7:1]p_0_in1_in;
  wire p_0_in25_in;
  wire p_0_in28_in;
  wire p_0_in32_in;
  wire p_0_in43_in;
  wire p_0_in62_in;
  wire p_0_in74_in;
  wire p_0_in86_in;
  wire [3:0]p_14_out;
  wire [3:0]p_15_out;
  wire \pd_hold[1]_i_1_n_0 ;
  wire \pd_hold[2]_i_1_n_0 ;
  wire \pd_hold[3]_i_1_n_0 ;
  wire \pd_hold[4]_i_1_n_0 ;
  wire \pd_hold[5]_i_1_n_0 ;
  wire \pd_hold[6]_i_1_n_0 ;
  wire \pd_hold[7]_i_1_n_0 ;
  wire \pd_hold[7]_i_2_n_0 ;
  wire pd_max;
  wire pd_max0;
  wire pd_max238_in;
  wire pd_min;
  wire pd_min0;
  wire pd_min237_in;
  wire pd_min_reg_0;
  wire pdcount1;
  wire \pdcount[0]_i_1_n_0 ;
  wire \pdcount[1]_i_1_n_0 ;
  wire \pdcount[2]_i_1_n_0 ;
  wire \pdcount[3]_i_1_n_0 ;
  wire \pdcount[4]_i_1_n_0 ;
  wire \pdcount[5]_i_1_n_0 ;
  wire \pdcount[5]_i_2_n_0 ;
  wire \pdcount[5]_i_3_n_0 ;
  wire \pdcount[5]_i_4_n_0 ;
  wire \pdcount[5]_i_5_n_0 ;
  wire [5:0]pdcount_reg;
  wire reset_out;
  wire \s_delay_mux[1]_i_1_n_0 ;
  wire \s_delay_mux[1]_i_2_n_0 ;
  wire \s_delay_mux_reg_n_0_[0] ;
  wire \s_delay_mux_reg_n_0_[1] ;
  wire \s_delay_val_int[0]_i_1_n_0 ;
  wire \s_delay_val_int[1]_i_1_n_0 ;
  wire \s_delay_val_int[1]_i_2_n_0 ;
  wire \s_delay_val_int[1]_i_3_n_0 ;
  wire \s_delay_val_int[2]_i_1_n_0 ;
  wire \s_delay_val_int[2]_i_2_n_0 ;
  wire \s_delay_val_int[2]_i_3_n_0 ;
  wire \s_delay_val_int[3]_i_1_n_0 ;
  wire \s_delay_val_int[3]_i_2_n_0 ;
  wire \s_delay_val_int[3]_i_3_n_0 ;
  wire \s_delay_val_int[4]_i_1_n_0 ;
  wire \s_delay_val_int[4]_i_2_n_0 ;
  wire \s_delay_val_int[4]_i_3_n_0 ;
  wire \s_delay_val_int[5]_i_1_n_0 ;
  wire \s_delay_val_int[5]_i_2_n_0 ;
  wire \s_delay_val_int[5]_i_3_n_0 ;
  wire \s_delay_val_int[6]_i_10_n_0 ;
  wire \s_delay_val_int[6]_i_11_n_0 ;
  wire \s_delay_val_int[6]_i_12_n_0 ;
  wire \s_delay_val_int[6]_i_1_n_0 ;
  wire \s_delay_val_int[6]_i_2_n_0 ;
  wire \s_delay_val_int[6]_i_3_n_0 ;
  wire \s_delay_val_int[6]_i_5_n_0 ;
  wire \s_delay_val_int[6]_i_6_n_0 ;
  wire \s_delay_val_int[6]_i_7_n_0 ;
  wire \s_delay_val_int[6]_i_8_n_0 ;
  wire \s_delay_val_int[6]_i_9_n_0 ;
  wire [6:0]\s_delay_val_int_reg[6]_0 ;
  wire \s_delay_val_int_reg[6]_i_4_n_5 ;
  wire \s_delay_val_int_reg[6]_i_4_n_6 ;
  wire \s_delay_val_int_reg[6]_i_4_n_7 ;
  wire s_ovflw0;
  wire s_ovflw1;
  wire s_ovflw12_out;
  wire s_ovflw_i_1_n_0;
  wire s_ovflw_reg_n_0;
  wire [2:0]s_state;
  wire \s_state[0]_i_1_n_0 ;
  wire \s_state[1]_i_1_n_0 ;
  wire \s_state[2]_i_1_n_0 ;
  wire \s_state[3]_i_1_n_0 ;
  wire \s_state[3]_i_2_n_0 ;
  wire \s_state_reg[1]_0 ;
  wire \s_state_reg[2]_0 ;
  wire \s_state_reg[2]_1 ;
  wire [0:0]\s_state_reg[3]_0 ;
  wire \s_state_reg[3]_1 ;
  wire [3:0]\sdataouta_reg[3]_0 ;
  wire \sdataouta_reg_n_0_[0] ;
  wire sdataoutb;
  wire [3:0]sdataoutc;
  wire \sdataoutc[0]_i_1_n_0 ;
  wire \sdataoutc[1]_i_1_n_0 ;
  wire \sdataoutc[2]_i_1_n_0 ;
  wire \sdataoutc[3]_i_1_n_0 ;
  wire [0:0]\sdataoutc_reg[3]_0 ;
  wire sload;
  wire sload_i_1_n_0;
  wire sload_i_3_n_0;
  wire sload_i_4_n_0;
  wire sload_reg_0;
  wire upd_flag;
  wire upd_flag_reg_0;
  wire upd_flag_reg_1;
  wire [7:4]\NLW_s_delay_val_int_reg[6]_i_4_CO_UNCONNECTED ;
  wire [7:0]\NLW_s_delay_val_int_reg[6]_i_4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4D44)) 
    \action[0]_i_1 
       (.I0(\msxor_ctd_reg[1]_0 [1]),
        .I1(\msxor_cti_reg[1]_0 [1]),
        .I2(\msxor_ctd_reg[1]_0 [0]),
        .I3(\msxor_cti_reg[1]_0 [0]),
        .O(\action[0]_i_1_n_0 ));
  FDRE \action_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\action[0]_i_1_n_0 ),
        .Q(\action_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \action_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\action_reg[1]_0 ),
        .Q(p_0_in43_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    data_mux_i_2
       (.I0(pd_min),
        .I1(delay_change_reg_0),
        .I2(meq_min_reg_0),
        .I3(dec_run_reg_0),
        .O(pd_min_reg_0));
  FDRE data_mux_reg
       (.C(CLK),
        .CE(1'b1),
        .D(data_mux_reg_1),
        .Q(data_mux_reg_0),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_1 
       (.I0(sdataoutc[0]),
        .I1(data_mux_reg_0),
        .I2(mdataoutc[0]),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_1 
       (.I0(sdataoutc[1]),
        .I1(data_mux_reg_0),
        .I2(mdataoutc[1]),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_1 
       (.I0(sdataoutc[2]),
        .I1(data_mux_reg_0),
        .I2(mdataoutc[2]),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_1 
       (.I0(sdataoutc[3]),
        .I1(data_mux_reg_0),
        .I2(mdataoutc[3]),
        .O(\data_out[3]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(\data_out_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\data_out_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\data_out_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\data_out_reg[3]_0 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    dec_run_i_2
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .I2(\s_state_reg[3]_0 ),
        .O(dec_run));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF3DF)) 
    dec_run_i_3
       (.I0(\s_state_reg[3]_0 ),
        .I1(s_state[2]),
        .I2(s_state[0]),
        .I3(s_state[1]),
        .O(\s_state_reg[3]_1 ));
  FDRE dec_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dec_run_reg_1),
        .Q(dec_run_reg_0),
        .R(reset_out));
  FDRE delay_change_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delay_change_reg_1),
        .Q(delay_change_reg_0),
        .R(reset_out));
  FDRE inc_run_reg
       (.C(CLK),
        .CE(1'b1),
        .D(inc_run_reg_1),
        .Q(inc_run_reg_0),
        .R(reset_out));
  LUT1 #(
    .INIT(2'h1)) 
    \m_delay_mux[0]_i_1 
       (.I0(\m_delay_mux_reg_n_0_[0] ),
        .O(\m_delay_mux[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7474744400000000)) 
    \m_delay_mux[1]_i_1 
       (.I0(m_delay_val_int142_out),
        .I1(s_ovflw12_out),
        .I2(s_ovflw1),
        .I3(dec_run_reg_0),
        .I4(meq_min_reg_0),
        .I5(\m_delay_mux[1]_i_3_n_0 ),
        .O(\m_delay_mux[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h9A996566)) 
    \m_delay_mux[1]_i_2 
       (.I0(\m_delay_mux_reg_n_0_[0] ),
        .I1(inc_run_reg_0),
        .I2(delay_change_reg_0),
        .I3(pd_max),
        .I4(\m_delay_mux_reg_n_0_[1] ),
        .O(\m_delay_mux[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_delay_mux[1]_i_3 
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .I2(\s_state_reg[3]_0 ),
        .I3(s_state[0]),
        .O(\m_delay_mux[1]_i_3_n_0 ));
  FDSE \m_delay_mux_reg[0] 
       (.C(CLK),
        .CE(\m_delay_mux[1]_i_1_n_0 ),
        .D(\m_delay_mux[0]_i_1_n_0 ),
        .Q(\m_delay_mux_reg_n_0_[0] ),
        .S(reset_out));
  FDRE \m_delay_mux_reg[1] 
       (.C(CLK),
        .CE(\m_delay_mux[1]_i_1_n_0 ),
        .D(\m_delay_mux[1]_i_2_n_0 ),
        .Q(\m_delay_mux_reg_n_0_[1] ),
        .R(reset_out));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \m_delay_val_int[0]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [1]),
        .I1(reset_out),
        .I2(m_delay_val_int142_out),
        .I3(Q[0]),
        .I4(s_ovflw12_out),
        .I5(\m_delay_val_int[0]_i_2_n_0 ),
        .O(\m_delay_val_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD01)) 
    \m_delay_val_int[0]_i_2 
       (.I0(Q[0]),
        .I1(dec_run_reg_0),
        .I2(meq_min_reg_0),
        .I3(\m_delay_val_int_reg[5]_0 [0]),
        .O(\m_delay_val_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h38833BB338830880)) 
    \m_delay_val_int[1]_i_2 
       (.I0(m_delay_val_int142_out),
        .I1(s_ovflw12_out),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_delay_val_int1),
        .I5(\m_delay_val_int_reg[5]_0 [1]),
        .O(\m_delay_val_int_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_delay_val_int[2]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [3]),
        .I1(reset_out),
        .I2(\m_delay_val_int[2]_i_2_n_0 ),
        .I3(s_ovflw12_out),
        .I4(\m_delay_val_int[2]_i_3_n_0 ),
        .O(\m_delay_val_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h01101010)) 
    \m_delay_val_int[2]_i_2 
       (.I0(inc_run_reg_0),
        .I1(meq_max),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\m_delay_val_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE1000000E1)) 
    \m_delay_val_int[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(dec_run_reg_0),
        .I4(meq_min_reg_0),
        .I5(\m_delay_val_int_reg[5]_0 [2]),
        .O(\m_delay_val_int[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_delay_val_int[3]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [4]),
        .I1(reset_out),
        .I2(\m_delay_val_int[3]_i_2_n_0 ),
        .I3(s_ovflw12_out),
        .I4(\m_delay_val_int[3]_i_3_n_0 ),
        .O(\m_delay_val_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    \m_delay_val_int[3]_i_2 
       (.I0(inc_run_reg_0),
        .I1(meq_max),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\m_delay_val_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \m_delay_val_int[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_delay_val_int1),
        .I5(\m_delay_val_int_reg[5]_0 [3]),
        .O(\m_delay_val_int[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_delay_val_int[4]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [5]),
        .I1(reset_out),
        .I2(\m_delay_val_int[4]_i_2_n_0 ),
        .I3(s_ovflw12_out),
        .I4(\m_delay_val_int[4]_i_3_n_0 ),
        .O(\m_delay_val_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \m_delay_val_int[4]_i_2 
       (.I0(m_delay_val_int142_out),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\m_delay_val_int[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF90009)) 
    \m_delay_val_int[4]_i_3 
       (.I0(\m_delay_val_int[4]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(dec_run_reg_0),
        .I3(meq_min_reg_0),
        .I4(\m_delay_val_int_reg[5]_0 [4]),
        .O(\m_delay_val_int[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_delay_val_int[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\m_delay_val_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \m_delay_val_int[5]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [6]),
        .I1(reset_out),
        .I2(m_delay_val_int142_out),
        .I3(m_delay_val_int00_in),
        .I4(s_ovflw12_out),
        .I5(\m_delay_val_int[5]_i_3_n_0 ),
        .O(\m_delay_val_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \m_delay_val_int[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(m_delay_val_int00_in));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFF90009)) 
    \m_delay_val_int[5]_i_3 
       (.I0(\m_delay_val_int[6]_i_10_n_0 ),
        .I1(Q[5]),
        .I2(dec_run_reg_0),
        .I3(meq_min_reg_0),
        .I4(\m_delay_val_int_reg[5]_0 [5]),
        .O(\m_delay_val_int[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFAFAFEAA)) 
    \m_delay_val_int[6]_i_1 
       (.I0(reset_out),
        .I1(m_delay_val_int1),
        .I2(m_delay_val_int),
        .I3(s_ovflw1),
        .I4(s_ovflw12_out),
        .I5(m_delay_val_int142_out),
        .O(\m_delay_val_int[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_delay_val_int[6]_i_10 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\m_delay_val_int[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EE22222)) 
    \m_delay_val_int[6]_i_2 
       (.I0(\m_delay_val_int[6]_i_8_n_0 ),
        .I1(s_ovflw12_out),
        .I2(\m_delay_val_int[6]_i_9_n_0 ),
        .I3(Q[6]),
        .I4(m_delay_val_int142_out),
        .I5(reset_out),
        .O(\m_delay_val_int[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[6]_i_3 
       (.I0(dec_run_reg_0),
        .I1(meq_min_reg_0),
        .O(m_delay_val_int1));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_delay_val_int[6]_i_4 
       (.I0(\s_state_reg[3]_0 ),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(s_state[1]),
        .O(m_delay_val_int));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_delay_val_int[6]_i_5 
       (.I0(dec_run_reg_0),
        .I1(delay_change_reg_0),
        .I2(pd_min),
        .O(s_ovflw1));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_delay_val_int[6]_i_6 
       (.I0(inc_run_reg_0),
        .I1(delay_change_reg_0),
        .I2(pd_max),
        .O(s_ovflw12_out));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_delay_val_int[6]_i_7 
       (.I0(meq_max),
        .I1(inc_run_reg_0),
        .O(m_delay_val_int142_out));
  LUT6 #(
    .INIT(64'hFFFFFFE1000000E1)) 
    \m_delay_val_int[6]_i_8 
       (.I0(Q[5]),
        .I1(\m_delay_val_int[6]_i_10_n_0 ),
        .I2(Q[6]),
        .I3(dec_run_reg_0),
        .I4(meq_min_reg_0),
        .I5(\m_delay_val_int_reg[5]_0 [6]),
        .O(\m_delay_val_int[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_delay_val_int[6]_i_9 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\m_delay_val_int[6]_i_9_n_0 ));
  FDRE \m_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int_reg[1]_1 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[5] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_delay_val_int_reg[6] 
       (.C(CLK),
        .CE(\m_delay_val_int[6]_i_1_n_0 ),
        .D(\m_delay_val_int[6]_i_2_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \mdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\mdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in25_in),
        .R(1'b0));
  FDRE \mdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDRE \mdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_0_in32_in),
        .R(1'b0));
  FDRE mdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in32_in),
        .Q(mdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \mdataoutc[0]_i_1 
       (.I0(mdataoutb),
        .I1(\mdataouta_reg_n_0_[0] ),
        .I2(\m_delay_mux_reg_n_0_[1] ),
        .I3(\m_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in25_in),
        .O(\mdataoutc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \mdataoutc[1]_i_1 
       (.I0(\mdataouta_reg_n_0_[0] ),
        .I1(p_0_in25_in),
        .I2(\m_delay_mux_reg_n_0_[1] ),
        .I3(\m_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in28_in),
        .O(\mdataoutc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \mdataoutc[2]_i_1 
       (.I0(p_0_in25_in),
        .I1(p_0_in28_in),
        .I2(\m_delay_mux_reg_n_0_[1] ),
        .I3(\m_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in32_in),
        .O(\mdataoutc[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \mdataoutc[3]_i_1 
       (.I0(p_0_in28_in),
        .I1(p_0_in32_in),
        .I2(\m_delay_mux_reg_n_0_[1] ),
        .I3(\m_delay_mux_reg_n_0_[0] ),
        .I4(D[0]),
        .O(\mdataoutc[3]_i_1_n_0 ));
  FDRE \mdataoutc_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[0]_i_1_n_0 ),
        .Q(mdataoutc[0]),
        .R(1'b0));
  FDRE \mdataoutc_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[1]_i_1_n_0 ),
        .Q(mdataoutc[1]),
        .R(1'b0));
  FDRE \mdataoutc_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[2]_i_1_n_0 ),
        .Q(mdataoutc[2]),
        .R(1'b0));
  FDRE \mdataoutc_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\mdataoutc[3]_i_1_n_0 ),
        .Q(mdataoutc[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    meq_max_i_1
       (.I0(Q[6]),
        .I1(\m_delay_val_int_reg[5]_0 [6]),
        .I2(meq_max_i_2_n_0),
        .I3(meq_max_i_3_n_0),
        .O(meq_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    meq_max_i_2
       (.I0(Q[3]),
        .I1(\m_delay_val_int_reg[5]_0 [3]),
        .I2(\m_delay_val_int_reg[5]_0 [5]),
        .I3(Q[5]),
        .I4(\m_delay_val_int_reg[5]_0 [4]),
        .I5(Q[4]),
        .O(meq_max_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    meq_max_i_3
       (.I0(Q[0]),
        .I1(\m_delay_val_int_reg[5]_0 [0]),
        .I2(\m_delay_val_int_reg[5]_0 [2]),
        .I3(Q[2]),
        .I4(\m_delay_val_int_reg[5]_0 [1]),
        .I5(Q[1]),
        .O(meq_max_i_3_n_0));
  FDRE meq_max_reg
       (.C(CLK),
        .CE(E),
        .D(meq_max_i_1_n_0),
        .Q(meq_max),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h888888888888888B)) 
    meq_min_i_1
       (.I0(meq_min_reg_0),
        .I1(reset_out),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(meq_min_i_2_n_0),
        .O(meq_min_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    meq_min_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(meq_min_i_2_n_0));
  FDRE meq_min_reg
       (.C(CLK),
        .CE(1'b1),
        .D(meq_min_i_1_n_0),
        .Q(meq_min_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFAAAEAAAAAAAE)) 
    mload_i_1
       (.I0(reset_out),
        .I1(s_ovflw1),
        .I2(dec_run_reg_0),
        .I3(meq_min_reg_0),
        .I4(s_ovflw12_out),
        .I5(m_delay_val_int142_out),
        .O(upd_flag));
  LUT6 #(
    .INIT(64'hBBBBBBF088888800)) 
    mload_i_2
       (.I0(\s_state_reg[1]_0 ),
        .I1(mload_0),
        .I2(upd_flag_reg_0),
        .I3(s_ovflw12_out),
        .I4(s_ovflw1),
        .I5(mload),
        .O(mload_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h08)) 
    mload_i_3
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[0]),
        .O(\s_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7B7E)) 
    mload_i_4
       (.I0(s_state[2]),
        .I1(\s_state_reg[3]_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(mload_0));
  FDSE mload_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mload_i_2_n_0),
        .Q(mload),
        .S(upd_flag));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hE996)) 
    \msxor_ctd[0]_i_1 
       (.I0(p_15_out[0]),
        .I1(p_15_out[1]),
        .I2(p_15_out[3]),
        .I3(p_15_out[2]),
        .O(\msxor_ctd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \msxor_ctd[1]_i_1 
       (.I0(p_15_out[2]),
        .I1(p_15_out[3]),
        .I2(p_15_out[1]),
        .I3(p_15_out[0]),
        .O(\msxor_ctd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h04B00780)) 
    \msxor_ctd[1]_i_2 
       (.I0(p_0_in74_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in25_in),
        .I3(p_0_in28_in),
        .I4(p_0_in62_in),
        .O(p_15_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h04B00780)) 
    \msxor_ctd[1]_i_3 
       (.I0(p_0_in86_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in28_in),
        .I3(p_0_in32_in),
        .I4(p_0_in74_in),
        .O(p_15_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h04B00780)) 
    \msxor_ctd[1]_i_4 
       (.I0(p_0_in62_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\mdataouta_reg_n_0_[0] ),
        .I3(p_0_in25_in),
        .I4(\sdataouta_reg_n_0_[0] ),
        .O(p_15_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h0047B800)) 
    \msxor_ctd[1]_i_5 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(p_15_out[0]));
  FDRE \msxor_ctd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[0]_i_1_n_0 ),
        .Q(\msxor_ctd_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \msxor_ctd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_ctd[1]_i_1_n_0 ),
        .Q(\msxor_ctd_reg[1]_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hE996)) 
    \msxor_cti[0]_i_1 
       (.I0(p_14_out[0]),
        .I1(p_14_out[1]),
        .I2(p_14_out[3]),
        .I3(p_14_out[2]),
        .O(\msxor_cti[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \msxor_cti[1]_i_1 
       (.I0(p_14_out[2]),
        .I1(p_14_out[3]),
        .I2(p_14_out[1]),
        .I3(p_14_out[0]),
        .O(\msxor_cti[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_2 
       (.I0(p_0_in74_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in62_in),
        .I3(p_0_in25_in),
        .I4(p_0_in28_in),
        .O(p_14_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_3 
       (.I0(p_0_in86_in),
        .I1(s_ovflw_reg_n_0),
        .I2(p_0_in74_in),
        .I3(p_0_in28_in),
        .I4(p_0_in32_in),
        .O(p_14_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_4 
       (.I0(p_0_in62_in),
        .I1(s_ovflw_reg_n_0),
        .I2(\sdataouta_reg_n_0_[0] ),
        .I3(\mdataouta_reg_n_0_[0] ),
        .I4(p_0_in25_in),
        .O(p_14_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00B84700)) 
    \msxor_cti[1]_i_5 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(s_ovflw_reg_n_0),
        .I2(sdataoutb),
        .I3(mdataoutb),
        .I4(\mdataouta_reg_n_0_[0] ),
        .O(p_14_out[0]));
  FDRE \msxor_cti_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[0]_i_1_n_0 ),
        .Q(\msxor_cti_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \msxor_cti_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\msxor_cti[1]_i_1_n_0 ),
        .Q(\msxor_cti_reg[1]_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pd_hold[0]_i_1 
       (.I0(delay_change_reg_0),
        .I1(inc_run_reg_0),
        .I2(dec_run_reg_0),
        .O(pdcount1));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[1]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[2]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[3]_i_1 
       (.I0(p_0_in1_in[3]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[4]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[5]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[6]_i_1 
       (.I0(p_0_in1_in[6]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[7]_i_1 
       (.I0(p_0_in),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pd_hold[7]_i_2 
       (.I0(p_0_in1_in[7]),
        .I1(dec_run_reg_0),
        .I2(inc_run_reg_0),
        .I3(delay_change_reg_0),
        .O(\pd_hold[7]_i_2_n_0 ));
  FDRE \pd_hold_reg[0] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(pdcount1),
        .Q(p_0_in1_in[1]),
        .R(reset_out));
  FDRE \pd_hold_reg[1] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[1]_i_1_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(reset_out));
  FDRE \pd_hold_reg[2] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[2]_i_1_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(reset_out));
  FDRE \pd_hold_reg[3] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[3]_i_1_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(reset_out));
  FDRE \pd_hold_reg[4] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[4]_i_1_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(reset_out));
  FDRE \pd_hold_reg[5] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[5]_i_1_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(reset_out));
  FDRE \pd_hold_reg[6] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[6]_i_1_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(reset_out));
  FDRE \pd_hold_reg[7] 
       (.C(CLK),
        .CE(\pd_hold[7]_i_1_n_0 ),
        .D(\pd_hold[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pd_max_i_1
       (.I0(pd_max238_in),
        .I1(delay_change_reg_0),
        .I2(pd_max),
        .O(pd_max0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pd_max_i_2
       (.I0(pdcount_reg[5]),
        .I1(pdcount_reg[4]),
        .I2(pdcount_reg[1]),
        .I3(pdcount_reg[0]),
        .I4(pdcount_reg[3]),
        .I5(pdcount_reg[2]),
        .O(pd_max238_in));
  FDRE pd_max_reg
       (.C(CLK),
        .CE(E),
        .D(pd_max0),
        .Q(pd_max),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    pd_min_i_2
       (.I0(pd_min237_in),
        .I1(delay_change_reg_0),
        .I2(pd_min),
        .O(pd_min0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pd_min_i_3
       (.I0(pdcount_reg[5]),
        .I1(pdcount_reg[4]),
        .I2(pdcount_reg[1]),
        .I3(pdcount_reg[0]),
        .I4(pdcount_reg[3]),
        .I5(pdcount_reg[2]),
        .O(pd_min237_in));
  FDRE pd_min_reg
       (.C(CLK),
        .CE(E),
        .D(pd_min0),
        .Q(pd_min),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pdcount[0]_i_1 
       (.I0(pdcount_reg[0]),
        .O(\pdcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \pdcount[1]_i_1 
       (.I0(pdcount_reg[0]),
        .I1(\pdcount[5]_i_4_n_0 ),
        .I2(pdcount_reg[1]),
        .O(\pdcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \pdcount[2]_i_1 
       (.I0(pdcount_reg[0]),
        .I1(\pdcount[5]_i_4_n_0 ),
        .I2(pdcount_reg[2]),
        .I3(pdcount_reg[1]),
        .O(\pdcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \pdcount[3]_i_1 
       (.I0(\pdcount[5]_i_4_n_0 ),
        .I1(pdcount_reg[0]),
        .I2(pdcount_reg[1]),
        .I3(pdcount_reg[3]),
        .I4(pdcount_reg[2]),
        .O(\pdcount[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \pdcount[4]_i_1 
       (.I0(pdcount_reg[1]),
        .I1(pdcount_reg[0]),
        .I2(\pdcount[5]_i_4_n_0 ),
        .I3(pdcount_reg[2]),
        .I4(pdcount_reg[4]),
        .I5(pdcount_reg[3]),
        .O(\pdcount[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pdcount[5]_i_1 
       (.I0(reset_out),
        .I1(p_0_in),
        .I2(delay_change_reg_0),
        .I3(inc_run_reg_0),
        .I4(dec_run_reg_0),
        .O(\pdcount[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \pdcount[5]_i_2 
       (.I0(\pdcount[5]_i_4_n_0 ),
        .I1(pd_min237_in),
        .I2(p_0_in43_in),
        .O(\pdcount[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h78E1)) 
    \pdcount[5]_i_3 
       (.I0(\pdcount[5]_i_5_n_0 ),
        .I1(pdcount_reg[3]),
        .I2(pdcount_reg[5]),
        .I3(pdcount_reg[4]),
        .O(\pdcount[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pdcount[5]_i_4 
       (.I0(\action_reg_n_0_[0] ),
        .I1(pd_max238_in),
        .O(\pdcount[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hD5555554)) 
    \pdcount[5]_i_5 
       (.I0(pdcount_reg[3]),
        .I1(pdcount_reg[2]),
        .I2(\pdcount[5]_i_4_n_0 ),
        .I3(pdcount_reg[0]),
        .I4(pdcount_reg[1]),
        .O(\pdcount[5]_i_5_n_0 ));
  FDRE \pdcount_reg[0] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[0]_i_1_n_0 ),
        .Q(pdcount_reg[0]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[1] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[1]_i_1_n_0 ),
        .Q(pdcount_reg[1]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[2] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[2]_i_1_n_0 ),
        .Q(pdcount_reg[2]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[3] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[3]_i_1_n_0 ),
        .Q(pdcount_reg[3]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDRE \pdcount_reg[4] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[4]_i_1_n_0 ),
        .Q(pdcount_reg[4]),
        .R(\pdcount[5]_i_1_n_0 ));
  FDSE \pdcount_reg[5] 
       (.C(CLK),
        .CE(\pdcount[5]_i_2_n_0 ),
        .D(\pdcount[5]_i_3_n_0 ),
        .Q(pdcount_reg[5]),
        .S(\pdcount[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7474744400000000)) 
    \s_delay_mux[1]_i_1 
       (.I0(m_delay_val_int142_out),
        .I1(s_ovflw12_out),
        .I2(s_ovflw1),
        .I3(dec_run_reg_0),
        .I4(meq_min_reg_0),
        .I5(\s_delay_mux[1]_i_2_n_0 ),
        .O(\s_delay_mux[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_delay_mux[1]_i_2 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(\s_state_reg[3]_0 ),
        .O(\s_delay_mux[1]_i_2_n_0 ));
  FDSE \s_delay_mux_reg[0] 
       (.C(CLK),
        .CE(\s_delay_mux[1]_i_1_n_0 ),
        .D(\m_delay_mux_reg_n_0_[0] ),
        .Q(\s_delay_mux_reg_n_0_[0] ),
        .S(reset_out));
  FDRE \s_delay_mux_reg[1] 
       (.C(CLK),
        .CE(\s_delay_mux[1]_i_1_n_0 ),
        .D(\m_delay_mux_reg_n_0_[1] ),
        .Q(\s_delay_mux_reg_n_0_[1] ),
        .R(reset_out));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \s_delay_val_int[0]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [0]),
        .I1(s_ovflw12_out),
        .I2(\m_delay_val_int_reg[5]_0 [1]),
        .I3(Q[0]),
        .I4(s_ovflw1),
        .O(\s_delay_val_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[1]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [1]),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[1]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\s_delay_val_int[1]_i_3_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_int[1]_i_2 
       (.I0(s_ovflw0),
        .I1(\m_delay_val_int_reg[5]_0 [2]),
        .O(\s_delay_val_int[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \s_delay_val_int[1]_i_3 
       (.I0(\m_delay_val_int_reg[5]_0 [1]),
        .I1(s_ovflw0),
        .I2(Q[0]),
        .O(\s_delay_val_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[2]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [2]),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\s_delay_val_int[2]_i_3_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_int[2]_i_2 
       (.I0(s_ovflw0),
        .I1(\m_delay_val_int_reg[5]_0 [3]),
        .O(\s_delay_val_int[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hBE28B8B8)) 
    \s_delay_val_int[2]_i_3 
       (.I0(Q[1]),
        .I1(\m_delay_val_int_reg[5]_0 [2]),
        .I2(s_ovflw0),
        .I3(Q[0]),
        .I4(\m_delay_val_int_reg[5]_0 [1]),
        .O(\s_delay_val_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[3]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [3]),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[3]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\s_delay_val_int[3]_i_3_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_int[3]_i_2 
       (.I0(s_ovflw0),
        .I1(\m_delay_val_int_reg[5]_0 [4]),
        .O(\s_delay_val_int[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBE28)) 
    \s_delay_val_int[3]_i_3 
       (.I0(Q[2]),
        .I1(\m_delay_val_int_reg[5]_0 [3]),
        .I2(s_ovflw0),
        .I3(\s_delay_val_int[2]_i_3_n_0 ),
        .O(\s_delay_val_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[4]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [4]),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[4]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(\s_delay_val_int[4]_i_3_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_int[4]_i_2 
       (.I0(s_ovflw0),
        .I1(\m_delay_val_int_reg[5]_0 [5]),
        .O(\s_delay_val_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \s_delay_val_int[4]_i_3 
       (.I0(Q[3]),
        .I1(\m_delay_val_int_reg[5]_0 [4]),
        .I2(s_ovflw0),
        .I3(\s_delay_val_int[2]_i_3_n_0 ),
        .I4(\m_delay_val_int_reg[5]_0 [3]),
        .I5(Q[2]),
        .O(\s_delay_val_int[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[5]_i_1 
       (.I0(\m_delay_val_int_reg[5]_0 [5]),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[5]_i_2_n_0 ),
        .I3(Q[5]),
        .I4(\s_delay_val_int[5]_i_3_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_delay_val_int[5]_i_2 
       (.I0(s_ovflw0),
        .I1(\m_delay_val_int_reg[5]_0 [6]),
        .O(\s_delay_val_int[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBE28)) 
    \s_delay_val_int[5]_i_3 
       (.I0(Q[4]),
        .I1(\m_delay_val_int_reg[5]_0 [5]),
        .I2(s_ovflw0),
        .I3(\s_delay_val_int[4]_i_3_n_0 ),
        .O(\s_delay_val_int[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4070404040707373)) 
    \s_delay_val_int[6]_i_1 
       (.I0(m_delay_val_int142_out),
        .I1(s_ovflw12_out),
        .I2(\s_delay_val_int[6]_i_3_n_0 ),
        .I3(m_delay_val_int1),
        .I4(s_ovflw1),
        .I5(upd_flag_reg_0),
        .O(\s_delay_val_int[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_delay_val_int[6]_i_10 
       (.I0(Q[4]),
        .I1(\m_delay_val_int_reg[5]_0 [5]),
        .I2(Q[5]),
        .I3(\m_delay_val_int_reg[5]_0 [6]),
        .O(\s_delay_val_int[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_delay_val_int[6]_i_11 
       (.I0(Q[2]),
        .I1(\m_delay_val_int_reg[5]_0 [3]),
        .I2(Q[3]),
        .I3(\m_delay_val_int_reg[5]_0 [4]),
        .O(\s_delay_val_int[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_delay_val_int[6]_i_12 
       (.I0(Q[0]),
        .I1(\m_delay_val_int_reg[5]_0 [1]),
        .I2(Q[1]),
        .I3(\m_delay_val_int_reg[5]_0 [2]),
        .O(\s_delay_val_int[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B88B8BB8)) 
    \s_delay_val_int[6]_i_2 
       (.I0(\m_delay_val_int_reg[5]_0 [6]),
        .I1(s_ovflw12_out),
        .I2(s_ovflw0),
        .I3(Q[6]),
        .I4(\s_delay_val_int[6]_i_5_n_0 ),
        .I5(s_ovflw1),
        .O(\s_delay_val_int[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_delay_val_int[6]_i_3 
       (.I0(s_state[2]),
        .I1(\s_state_reg[3]_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(\s_delay_val_int[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \s_delay_val_int[6]_i_5 
       (.I0(Q[5]),
        .I1(\m_delay_val_int_reg[5]_0 [6]),
        .I2(s_ovflw0),
        .I3(\s_delay_val_int[4]_i_3_n_0 ),
        .I4(\m_delay_val_int_reg[5]_0 [5]),
        .I5(Q[4]),
        .O(\s_delay_val_int[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \s_delay_val_int[6]_i_6 
       (.I0(Q[4]),
        .I1(\m_delay_val_int_reg[5]_0 [5]),
        .I2(\m_delay_val_int_reg[5]_0 [6]),
        .I3(Q[5]),
        .O(\s_delay_val_int[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \s_delay_val_int[6]_i_7 
       (.I0(Q[2]),
        .I1(\m_delay_val_int_reg[5]_0 [3]),
        .I2(\m_delay_val_int_reg[5]_0 [4]),
        .I3(Q[3]),
        .O(\s_delay_val_int[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \s_delay_val_int[6]_i_8 
       (.I0(Q[0]),
        .I1(\m_delay_val_int_reg[5]_0 [1]),
        .I2(\m_delay_val_int_reg[5]_0 [2]),
        .I3(Q[1]),
        .O(\s_delay_val_int[6]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_delay_val_int[6]_i_9 
       (.I0(Q[6]),
        .O(\s_delay_val_int[6]_i_9_n_0 ));
  FDRE \s_delay_val_int_reg[0] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[0]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [0]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[1] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[1]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [1]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[2] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[2]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [2]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[3] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[3]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [3]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[4] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[4]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [4]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[5] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[5]_i_1_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [5]),
        .R(reset_out));
  FDRE \s_delay_val_int_reg[6] 
       (.C(CLK),
        .CE(\s_delay_val_int[6]_i_1_n_0 ),
        .D(\s_delay_val_int[6]_i_2_n_0 ),
        .Q(\s_delay_val_int_reg[6]_0 [6]),
        .R(reset_out));
  CARRY8 \s_delay_val_int_reg[6]_i_4 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_s_delay_val_int_reg[6]_i_4_CO_UNCONNECTED [7:4],s_ovflw0,\s_delay_val_int_reg[6]_i_4_n_5 ,\s_delay_val_int_reg[6]_i_4_n_6 ,\s_delay_val_int_reg[6]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,Q[6],\s_delay_val_int[6]_i_6_n_0 ,\s_delay_val_int[6]_i_7_n_0 ,\s_delay_val_int[6]_i_8_n_0 }),
        .O(\NLW_s_delay_val_int_reg[6]_i_4_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\s_delay_val_int[6]_i_9_n_0 ,\s_delay_val_int[6]_i_10_n_0 ,\s_delay_val_int[6]_i_11_n_0 ,\s_delay_val_int[6]_i_12_n_0 }));
  LUT6 #(
    .INIT(64'h00000000AAAAA8AB)) 
    s_ovflw_i_1
       (.I0(s_ovflw_reg_n_0),
        .I1(upd_flag_reg_0),
        .I2(s_ovflw12_out),
        .I3(s_ovflw0),
        .I4(s_ovflw1),
        .I5(reset_out),
        .O(s_ovflw_i_1_n_0));
  FDRE s_ovflw_reg
       (.C(CLK),
        .CE(1'b1),
        .D(s_ovflw_i_1_n_0),
        .Q(s_ovflw_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_state[0]_i_1 
       (.I0(s_state[0]),
        .O(\s_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_state[1]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .O(\s_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_state[2]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .O(\s_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFE0EFE0E0E0)) 
    \s_state[3]_i_1 
       (.I0(inc_run_reg_0),
        .I1(meq_max),
        .I2(s_ovflw12_out),
        .I3(s_ovflw1),
        .I4(meq_min_reg_0),
        .I5(dec_run_reg_0),
        .O(\s_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_state[3]_i_2 
       (.I0(s_state[1]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(\s_state_reg[3]_0 ),
        .O(\s_state[3]_i_2_n_0 ));
  FDRE \s_state_reg[0] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[0]_i_1_n_0 ),
        .Q(s_state[0]),
        .R(reset_out));
  FDRE \s_state_reg[1] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[1]_i_1_n_0 ),
        .Q(s_state[1]),
        .R(reset_out));
  FDRE \s_state_reg[2] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[2]_i_1_n_0 ),
        .Q(s_state[2]),
        .R(reset_out));
  FDRE \s_state_reg[3] 
       (.C(CLK),
        .CE(\s_state[3]_i_1_n_0 ),
        .D(\s_state[3]_i_2_n_0 ),
        .Q(\s_state_reg[3]_0 ),
        .R(reset_out));
  FDRE \sdataouta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sdataouta_reg[3]_0 [0]),
        .Q(\sdataouta_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sdataouta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sdataouta_reg[3]_0 [1]),
        .Q(p_0_in62_in),
        .R(1'b0));
  FDRE \sdataouta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sdataouta_reg[3]_0 [2]),
        .Q(p_0_in74_in),
        .R(1'b0));
  FDRE \sdataouta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sdataouta_reg[3]_0 [3]),
        .Q(p_0_in86_in),
        .R(1'b0));
  FDRE sdataoutb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in86_in),
        .Q(sdataoutb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \sdataoutc[0]_i_1 
       (.I0(sdataoutb),
        .I1(\sdataouta_reg_n_0_[0] ),
        .I2(\s_delay_mux_reg_n_0_[1] ),
        .I3(\s_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in62_in),
        .O(\sdataoutc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \sdataoutc[1]_i_1 
       (.I0(\sdataouta_reg_n_0_[0] ),
        .I1(p_0_in62_in),
        .I2(\s_delay_mux_reg_n_0_[1] ),
        .I3(\s_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in74_in),
        .O(\sdataoutc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \sdataoutc[2]_i_1 
       (.I0(p_0_in62_in),
        .I1(p_0_in74_in),
        .I2(\s_delay_mux_reg_n_0_[1] ),
        .I3(\s_delay_mux_reg_n_0_[0] ),
        .I4(p_0_in86_in),
        .O(\sdataoutc[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCC0ACCFA)) 
    \sdataoutc[3]_i_1 
       (.I0(p_0_in74_in),
        .I1(p_0_in86_in),
        .I2(\s_delay_mux_reg_n_0_[1] ),
        .I3(\s_delay_mux_reg_n_0_[0] ),
        .I4(\sdataoutc_reg[3]_0 ),
        .O(\sdataoutc[3]_i_1_n_0 ));
  FDRE \sdataoutc_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[0]_i_1_n_0 ),
        .Q(sdataoutc[0]),
        .R(1'b0));
  FDRE \sdataoutc_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[1]_i_1_n_0 ),
        .Q(sdataoutc[1]),
        .R(1'b0));
  FDRE \sdataoutc_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[2]_i_1_n_0 ),
        .Q(sdataoutc[2]),
        .R(1'b0));
  FDRE \sdataoutc_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\sdataoutc[3]_i_1_n_0 ),
        .Q(sdataoutc[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    sload_i_1
       (.I0(sload),
        .I1(sload_reg_0),
        .I2(sload_i_3_n_0),
        .I3(sload_i_4_n_0),
        .I4(reset_out),
        .O(sload_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    sload_i_3
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .I3(\s_state_reg[3]_0 ),
        .I4(s_ovflw1),
        .I5(s_ovflw12_out),
        .O(sload_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000003030001)) 
    sload_i_4
       (.I0(pd_min),
        .I1(dec_run_reg_0),
        .I2(upd_flag_reg_0),
        .I3(pd_max),
        .I4(delay_change_reg_0),
        .I5(inc_run_reg_0),
        .O(sload_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h5DBF)) 
    sload_i_5
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(\s_state_reg[3]_0 ),
        .I3(s_state[1]),
        .O(\s_state_reg[2]_1 ));
  FDRE sload_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sload_i_1_n_0),
        .Q(sload),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6F76)) 
    upd_flag_i_2
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .I2(\s_state_reg[3]_0 ),
        .I3(s_state[0]),
        .O(\s_state_reg[2]_0 ));
  FDRE upd_flag_reg
       (.C(CLK),
        .CE(1'b1),
        .D(upd_flag_reg_1),
        .Q(upd_flag_reg_0),
        .R(upd_flag));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_encode_8b10b_lut_base" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base
   (tx_data_10b,
    \ngdb.disp_run_reg_0 ,
    txchardispval,
    txchardispmode,
    txdata,
    txcharisk);
  output [9:0]tx_data_10b;
  input \ngdb.disp_run_reg_0 ;
  input txchardispval;
  input txchardispmode;
  input [7:0]txdata;
  input txcharisk;

  wire [3:0]b4;
  wire [5:0]b6;
  wire disp_in_i__0;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[5]_i_2_n_0 ;
  wire \dout[9]_i_2_n_0 ;
  wire \dout[9]_i_4_n_0 ;
  wire \dout[9]_i_5_n_0 ;
  wire k28__4;
  wire \ngdb.disp_run_i_3_n_0 ;
  wire \ngdb.disp_run_reg_0 ;
  wire \ngdb.disp_run_reg_n_0 ;
  wire pdes4;
  wire pdes6__13;
  wire [9:0]tx_data_10b;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[0]_i_1 
       (.I0(txchardispval),
        .I1(txchardispmode),
        .I2(\ngdb.disp_run_reg_n_0 ),
        .I3(k28__4),
        .I4(b6[0]),
        .O(\dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2D807F017F01FE4B)) 
    \dout[0]_i_2 
       (.I0(txdata[3]),
        .I1(txdata[4]),
        .I2(disp_in_i__0),
        .I3(txdata[0]),
        .I4(txdata[1]),
        .I5(txdata[2]),
        .O(b6[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dout[1]_i_1 
       (.I0(txchardispval),
        .I1(txchardispmode),
        .I2(\ngdb.disp_run_reg_n_0 ),
        .I3(k28__4),
        .I4(b6[1]),
        .O(\dout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h987170F170F171E6)) 
    \dout[1]_i_2 
       (.I0(txdata[0]),
        .I1(disp_in_i__0),
        .I2(txdata[1]),
        .I3(txdata[2]),
        .I4(txdata[4]),
        .I5(txdata[3]),
        .O(b6[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[1]_i_3 
       (.I0(txchardispval),
        .I1(txchardispmode),
        .I2(\ngdb.disp_run_reg_n_0 ),
        .O(disp_in_i__0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dout[2]_i_1 
       (.I0(b6[2]),
        .I1(k28__4),
        .O(\dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h47807F09BF01FE16)) 
    \dout[2]_i_2 
       (.I0(txdata[4]),
        .I1(txdata[3]),
        .I2(txdata[1]),
        .I3(txdata[2]),
        .I4(txdata[0]),
        .I5(disp_in_i__0),
        .O(b6[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dout[3]_i_1 
       (.I0(b6[3]),
        .I1(k28__4),
        .O(\dout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB44C4CCD4CCDCED1)) 
    \dout[3]_i_2 
       (.I0(txdata[4]),
        .I1(txdata[3]),
        .I2(txdata[0]),
        .I3(disp_in_i__0),
        .I4(txdata[1]),
        .I5(txdata[2]),
        .O(b6[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dout[4]_i_1 
       (.I0(b6[4]),
        .I1(k28__4),
        .O(\dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F6F08107FEF9061)) 
    \dout[4]_i_2 
       (.I0(txdata[2]),
        .I1(txdata[1]),
        .I2(disp_in_i__0),
        .I3(txdata[0]),
        .I4(txdata[4]),
        .I5(txdata[3]),
        .O(b6[4]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \dout[5]_i_1 
       (.I0(k28__4),
        .I1(\ngdb.disp_run_reg_n_0 ),
        .I2(txchardispmode),
        .I3(txchardispval),
        .O(\dout[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dout[5]_i_2 
       (.I0(b6[5]),
        .I1(k28__4),
        .O(\dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h59969660A117177F)) 
    \dout[5]_i_3 
       (.I0(txdata[3]),
        .I1(txdata[4]),
        .I2(txdata[2]),
        .I3(txdata[1]),
        .I4(txdata[0]),
        .I5(disp_in_i__0),
        .O(b6[5]));
  LUT6 #(
    .INIT(64'h8F8F0000B0BFFF0F)) 
    \dout[6]_i_1 
       (.I0(\dout[9]_i_2_n_0 ),
        .I1(txdata[7]),
        .I2(txdata[6]),
        .I3(k28__4),
        .I4(txdata[5]),
        .I5(pdes6__13),
        .O(b4[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h5B5B0D58)) 
    \dout[7]_i_1 
       (.I0(txdata[5]),
        .I1(k28__4),
        .I2(pdes6__13),
        .I3(txdata[7]),
        .I4(txdata[6]),
        .O(b4[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h66AA9A59)) 
    \dout[8]_i_1 
       (.I0(txdata[7]),
        .I1(txdata[6]),
        .I2(k28__4),
        .I3(txdata[5]),
        .I4(pdes6__13),
        .O(b4[2]));
  LUT6 #(
    .INIT(64'h737330304C43CF3F)) 
    \dout[9]_i_1 
       (.I0(\dout[9]_i_2_n_0 ),
        .I1(txdata[7]),
        .I2(txdata[6]),
        .I3(k28__4),
        .I4(txdata[5]),
        .I5(pdes6__13),
        .O(b4[3]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \dout[9]_i_2 
       (.I0(pdes6__13),
        .I1(\dout[9]_i_4_n_0 ),
        .I2(\dout[9]_i_5_n_0 ),
        .I3(txcharisk),
        .O(\dout[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \dout[9]_i_3 
       (.I0(txdata[2]),
        .I1(txdata[1]),
        .I2(txcharisk),
        .I3(txdata[0]),
        .I4(txdata[3]),
        .I5(txdata[4]),
        .O(k28__4));
  LUT6 #(
    .INIT(64'h0040400040000000)) 
    \dout[9]_i_4 
       (.I0(txdata[4]),
        .I1(disp_in_i__0),
        .I2(txdata[3]),
        .I3(txdata[2]),
        .I4(txdata[0]),
        .I5(txdata[1]),
        .O(\dout[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400040400)) 
    \dout[9]_i_5 
       (.I0(disp_in_i__0),
        .I1(txdata[4]),
        .I2(txdata[3]),
        .I3(txdata[2]),
        .I4(txdata[0]),
        .I5(txdata[1]),
        .O(\dout[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[0]_i_1_n_0 ),
        .Q(tx_data_10b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \dout_reg[1] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[1]_i_1_n_0 ),
        .Q(tx_data_10b[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[2]_i_1_n_0 ),
        .Q(tx_data_10b[2]),
        .S(\dout[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[3] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[3]_i_1_n_0 ),
        .Q(tx_data_10b[3]),
        .S(\dout[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[4]_i_1_n_0 ),
        .Q(tx_data_10b[4]),
        .S(\dout[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \dout_reg[5] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(\dout[5]_i_2_n_0 ),
        .Q(tx_data_10b[5]),
        .S(\dout[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(b4[0]),
        .Q(tx_data_10b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \dout_reg[7] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(b4[1]),
        .Q(tx_data_10b[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[8] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(b4[2]),
        .Q(tx_data_10b[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \dout_reg[9] 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(b4[3]),
        .Q(tx_data_10b[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7C83)) 
    \ngdb.disp_run_i_1 
       (.I0(txdata[7]),
        .I1(txdata[6]),
        .I2(txdata[5]),
        .I3(pdes6__13),
        .O(pdes4));
  LUT5 #(
    .INIT(32'h303FAAAA)) 
    \ngdb.disp_run_i_2 
       (.I0(\ngdb.disp_run_i_3_n_0 ),
        .I1(txchardispval),
        .I2(txchardispmode),
        .I3(\ngdb.disp_run_reg_n_0 ),
        .I4(k28__4),
        .O(pdes6__13));
  LUT6 #(
    .INIT(64'h56696AA96AA9A995)) 
    \ngdb.disp_run_i_3 
       (.I0(disp_in_i__0),
        .I1(txdata[2]),
        .I2(txdata[1]),
        .I3(txdata[0]),
        .I4(txdata[4]),
        .I5(txdata[3]),
        .O(\ngdb.disp_run_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ngdb.disp_run_reg 
       (.C(\ngdb.disp_run_reg_0 ),
        .CE(1'b1),
        .D(pdes4),
        .Q(\ngdb.disp_run_reg_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_gearbox_10_to_4" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4
   (Q,
    read_enable_reg_0,
    tx_data_10b,
    CLK,
    reset_out);
  output [3:0]Q;
  input read_enable_reg_0;
  input [9:0]tx_data_10b;
  input CLK;
  input reset_out;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]dataout;
  wire [1:0]dummya;
  wire [1:0]dummyb;
  wire \loop0[0].dataout[0]_i_2_n_0 ;
  wire \loop0[0].dataout[1]_i_2_n_0 ;
  wire \loop0[0].dataout[2]_i_2_n_0 ;
  wire \loop0[0].dataout[3]_i_2_n_0 ;
  wire [3:0]p_0_in__2;
  wire [1:0]r_state;
  wire \r_state[0]_i_1_n_0 ;
  wire [5:1]r_state_0;
  wire [11:0]ram_out;
  wire [3:0]read_addra;
  wire [3:0]read_addrb;
  wire \read_addrb[0]_i_1_n_0 ;
  wire \read_addrb[1]_i_1_n_0 ;
  wire \read_addrb[2]_i_1_n_0 ;
  wire \read_addrb[3]_i_1__0_n_0 ;
  wire read_enable_dom_ch;
  wire read_enable_i_1__0_n_0;
  wire read_enable_reg_0;
  wire read_enable_reg_n_0;
  wire reset_out;
  wire reset_sync_output_clk_n_0;
  wire [9:0]tx_data_10b;
  wire [3:0]write_addr_reg;

  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \loop0[0].dataout[0]_i_1 
       (.I0(\loop0[0].dataout[0]_i_2_n_0 ),
        .I1(r_state[1]),
        .I2(read_addra[0]),
        .I3(ram_out[6]),
        .I4(r_state[0]),
        .I5(ram_out[2]),
        .O(dataout[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \loop0[0].dataout[0]_i_2 
       (.I0(ram_out[6]),
        .I1(ram_out[8]),
        .I2(r_state[1]),
        .I3(ram_out[4]),
        .I4(r_state[0]),
        .I5(ram_out[0]),
        .O(\loop0[0].dataout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \loop0[0].dataout[1]_i_1 
       (.I0(\loop0[0].dataout[1]_i_2_n_0 ),
        .I1(r_state[1]),
        .I2(read_addra[0]),
        .I3(ram_out[7]),
        .I4(r_state[0]),
        .I5(ram_out[3]),
        .O(dataout[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \loop0[0].dataout[1]_i_2 
       (.I0(ram_out[7]),
        .I1(ram_out[9]),
        .I2(r_state[1]),
        .I3(ram_out[5]),
        .I4(r_state[0]),
        .I5(ram_out[1]),
        .O(\loop0[0].dataout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \loop0[0].dataout[2]_i_1 
       (.I0(\loop0[0].dataout[2]_i_2_n_0 ),
        .I1(r_state[1]),
        .I2(read_addra[0]),
        .I3(ram_out[8]),
        .I4(r_state[0]),
        .I5(ram_out[4]),
        .O(dataout[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \loop0[0].dataout[2]_i_2 
       (.I0(ram_out[8]),
        .I1(ram_out[10]),
        .I2(r_state[1]),
        .I3(ram_out[6]),
        .I4(r_state[0]),
        .I5(ram_out[2]),
        .O(\loop0[0].dataout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \loop0[0].dataout[3]_i_1 
       (.I0(\loop0[0].dataout[3]_i_2_n_0 ),
        .I1(r_state[1]),
        .I2(read_addra[0]),
        .I3(ram_out[9]),
        .I4(r_state[0]),
        .I5(ram_out[5]),
        .O(dataout[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \loop0[0].dataout[3]_i_2 
       (.I0(ram_out[9]),
        .I1(ram_out[11]),
        .I2(r_state[1]),
        .I3(ram_out[7]),
        .I4(r_state[0]),
        .I5(ram_out[3]),
        .O(\loop0[0].dataout[3]_i_2_n_0 ));
  FDRE \loop0[0].dataout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataout[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst0 
       (.ADDRA({1'b0,read_addra}),
        .ADDRB({1'b0,read_addra}),
        .ADDRC({1'b0,read_addra}),
        .ADDRD({1'b0,write_addr_reg}),
        .DIA(tx_data_10b[1:0]),
        .DIB(tx_data_10b[3:2]),
        .DIC(tx_data_10b[5:4]),
        .DID(dummya),
        .DOA(ram_out[1:0]),
        .DOB(ram_out[3:2]),
        .DOC(ram_out[5:4]),
        .DOD(dummya),
        .WCLK(read_enable_reg_0),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst1 
       (.ADDRA({1'b0,read_addra}),
        .ADDRB({1'b0,read_addra}),
        .ADDRC({1'b0,read_addrb}),
        .ADDRD({1'b0,write_addr_reg}),
        .DIA(tx_data_10b[7:6]),
        .DIB(tx_data_10b[9:8]),
        .DIC(tx_data_10b[1:0]),
        .DID(dummyb),
        .DOA(ram_out[7:6]),
        .DOB(ram_out[9:8]),
        .DOC(ram_out[11:10]),
        .DOD(dummyb),
        .WCLK(read_enable_reg_0),
        .WE(1'b1));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \r_state[0]_i_1 
       (.I0(r_state[1]),
        .I1(read_addra[0]),
        .I2(r_state[0]),
        .O(\r_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \r_state[1]_i_1 
       (.I0(r_state[1]),
        .I1(read_addra[0]),
        .I2(r_state[0]),
        .O(r_state_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \r_state[2]_i_1 
       (.I0(r_state[0]),
        .I1(read_addra[0]),
        .I2(r_state[1]),
        .O(r_state_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_state[3]_i_1 
       (.I0(r_state[0]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .O(r_state_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_state[4]_i_1 
       (.I0(r_state[0]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .I3(read_addra[2]),
        .O(r_state_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_state[5]_i_2 
       (.I0(r_state[0]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .I3(read_addra[2]),
        .I4(read_addra[3]),
        .O(r_state_0[5]));
  FDRE \r_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\r_state[0]_i_1_n_0 ),
        .Q(r_state[0]),
        .R(reset_sync_output_clk_n_0));
  FDRE \r_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(r_state_0[1]),
        .Q(r_state[1]),
        .R(reset_sync_output_clk_n_0));
  FDRE \r_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(r_state_0[2]),
        .Q(read_addra[0]),
        .R(reset_sync_output_clk_n_0));
  FDRE \r_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(r_state_0[3]),
        .Q(read_addra[1]),
        .R(reset_sync_output_clk_n_0));
  FDRE \r_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(r_state_0[4]),
        .Q(read_addra[2]),
        .R(reset_sync_output_clk_n_0));
  FDRE \r_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(r_state_0[5]),
        .Q(read_addra[3]),
        .R(reset_sync_output_clk_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_addrb[0]_i_1 
       (.I0(read_addra[0]),
        .O(\read_addrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_addrb[1]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[1]),
        .O(\read_addrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_addrb[2]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[1]),
        .I2(read_addra[2]),
        .O(\read_addrb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_addrb[3]_i_1__0 
       (.I0(read_addra[1]),
        .I1(read_addra[0]),
        .I2(read_addra[2]),
        .I3(read_addra[3]),
        .O(\read_addrb[3]_i_1__0_n_0 ));
  FDRE \read_addrb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\read_addrb[0]_i_1_n_0 ),
        .Q(read_addrb[0]),
        .R(1'b0));
  FDRE \read_addrb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\read_addrb[1]_i_1_n_0 ),
        .Q(read_addrb[1]),
        .R(1'b0));
  FDRE \read_addrb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\read_addrb[2]_i_1_n_0 ),
        .Q(read_addrb[2]),
        .R(1'b0));
  FDRE \read_addrb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\read_addrb[3]_i_1__0_n_0 ),
        .Q(read_addrb[3]),
        .R(1'b0));
  FDRE read_enable_dom_ch_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_enable_reg_n_0),
        .Q(read_enable_dom_ch),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    read_enable_i_1__0
       (.I0(write_addr_reg[2]),
        .I1(write_addr_reg[3]),
        .I2(write_addr_reg[1]),
        .I3(write_addr_reg[0]),
        .I4(read_enable_reg_n_0),
        .O(read_enable_i_1__0_n_0));
  FDRE read_enable_reg
       (.C(read_enable_reg_0),
        .CE(1'b1),
        .D(read_enable_i_1__0_n_0),
        .Q(read_enable_reg_n_0),
        .R(reset_out));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8 reset_sync_output_clk
       (.CLK(CLK),
        .SR(reset_sync_output_clk_n_0),
        .read_enable_dom_ch(read_enable_dom_ch),
        .reset_out(reset_out));
  LUT1 #(
    .INIT(2'h1)) 
    \write_addr[0]_i_1 
       (.I0(write_addr_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_addr[1]_i_1 
       (.I0(write_addr_reg[0]),
        .I1(write_addr_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_addr[2]_i_1 
       (.I0(write_addr_reg[0]),
        .I1(write_addr_reg[1]),
        .I2(write_addr_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_addr[3]_i_1 
       (.I0(write_addr_reg[1]),
        .I1(write_addr_reg[0]),
        .I2(write_addr_reg[2]),
        .I3(write_addr_reg[3]),
        .O(p_0_in__2[3]));
  FDRE \write_addr_reg[0] 
       (.C(read_enable_reg_0),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(write_addr_reg[0]),
        .R(reset_out));
  FDRE \write_addr_reg[1] 
       (.C(read_enable_reg_0),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(write_addr_reg[1]),
        .R(reset_out));
  FDRE \write_addr_reg[2] 
       (.C(read_enable_reg_0),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .Q(write_addr_reg[2]),
        .R(reset_out));
  FDRE \write_addr_reg[3] 
       (.C(read_enable_reg_0),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(write_addr_reg[3]),
        .R(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_gearbox_4_to_10" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10
   (Q,
    CLK,
    \loop0[0].dataout_reg[3]_0 ,
    \loop0[0].dataout_reg[9]_0 ,
    reset_out);
  output [9:0]Q;
  input CLK;
  input [3:0]\loop0[0].dataout_reg[3]_0 ;
  input \loop0[0].dataout_reg[9]_0 ;
  input reset_out;

  wire CLK;
  wire [9:0]Q;
  wire [1:0]dummy_0;
  wire [1:0]dummy_2;
  wire \loop0[0].dataout[0]_i_1_n_0 ;
  wire \loop0[0].dataout[1]_i_1_n_0 ;
  wire \loop0[0].dataout[2]_i_1_n_0 ;
  wire \loop0[0].dataout[3]_i_1_n_0 ;
  wire \loop0[0].dataout[4]_i_1_n_0 ;
  wire \loop0[0].dataout[5]_i_1_n_0 ;
  wire \loop0[0].dataout[6]_i_1_n_0 ;
  wire \loop0[0].dataout[7]_i_1_n_0 ;
  wire \loop0[0].dataout[8]_i_1_n_0 ;
  wire \loop0[0].dataout[9]_i_1_n_0 ;
  wire [3:0]\loop0[0].dataout_reg[3]_0 ;
  wire \loop0[0].dataout_reg[9]_0 ;
  wire [0:0]mux;
  wire \mux[0]_i_1_n_0 ;
  wire [1:0]p_0_out;
  wire [1:0]p_1_out;
  wire [1:0]p_3_out;
  wire [1:0]p_4_out;
  wire [3:0]ramouta;
  wire [3:0]read_addra;
  wire \read_addra[0]_i_1_n_0 ;
  wire \read_addra[1]_i_1_n_0 ;
  wire \read_addra[2]_i_1_n_0 ;
  wire \read_addra[3]_i_1_n_0 ;
  wire \read_addra[3]_i_2_n_0 ;
  wire [3:0]read_addrb;
  wire \read_addrb[0]_i_1_n_0 ;
  wire \read_addrb[1]_i_1_n_0 ;
  wire \read_addrb[2]_i_1_n_0 ;
  wire \read_addrb[3]_i_1_n_0 ;
  wire [2:1]read_addrc;
  wire \read_addrc[1]_i_1_n_0 ;
  wire \read_addrc[2]_i_1_n_0 ;
  wire read_enable;
  wire read_enable_i_1_n_0;
  wire read_enabler;
  wire reset_out;
  wire [4:0]write_addr;
  wire write_addr0_n_0;
  wire \write_addr[0]_i_1__0_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire \write_addr[4]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[0]_i_1 
       (.I0(ramouta[0]),
        .I1(mux),
        .I2(ramouta[2]),
        .O(\loop0[0].dataout[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[1]_i_1 
       (.I0(ramouta[1]),
        .I1(mux),
        .I2(ramouta[3]),
        .O(\loop0[0].dataout[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[2]_i_1 
       (.I0(ramouta[2]),
        .I1(mux),
        .I2(p_4_out[0]),
        .O(\loop0[0].dataout[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[3]_i_1 
       (.I0(ramouta[3]),
        .I1(mux),
        .I2(p_4_out[1]),
        .O(\loop0[0].dataout[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[4]_i_1 
       (.I0(p_4_out[0]),
        .I1(mux),
        .I2(p_1_out[0]),
        .O(\loop0[0].dataout[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[5]_i_1 
       (.I0(p_4_out[1]),
        .I1(mux),
        .I2(p_1_out[1]),
        .O(\loop0[0].dataout[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[6]_i_1 
       (.I0(p_1_out[0]),
        .I1(mux),
        .I2(p_3_out[0]),
        .O(\loop0[0].dataout[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[7]_i_1 
       (.I0(p_1_out[1]),
        .I1(mux),
        .I2(p_3_out[1]),
        .O(\loop0[0].dataout[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[8]_i_1 
       (.I0(p_3_out[0]),
        .I1(mux),
        .I2(p_0_out[0]),
        .O(\loop0[0].dataout[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \loop0[0].dataout[9]_i_1 
       (.I0(p_3_out[1]),
        .I1(mux),
        .I2(p_0_out[1]),
        .O(\loop0[0].dataout[9]_i_1_n_0 ));
  FDRE \loop0[0].dataout_reg[0] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[1] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[2] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[3] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[4] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[5] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[6] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[7] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[8] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \loop0[0].dataout_reg[9] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\loop0[0].dataout[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[0].ram_inst 
       (.ADDRA({1'b0,read_addra}),
        .ADDRB({1'b0,read_addrb}),
        .ADDRC({1'b0,read_addrb[3],read_addrc,read_addra[0]}),
        .ADDRD(write_addr),
        .DIA(\loop0[0].dataout_reg[3]_0 [1:0]),
        .DIB(\loop0[0].dataout_reg[3]_0 [1:0]),
        .DIC(\loop0[0].dataout_reg[3]_0 [1:0]),
        .DID(dummy_0),
        .DOA(ramouta[1:0]),
        .DOB(p_4_out),
        .DOC(p_3_out),
        .DOD(dummy_0),
        .WCLK(CLK),
        .WE(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \loop2[1].ram_inst 
       (.ADDRA({1'b0,read_addra}),
        .ADDRB({1'b0,read_addrb}),
        .ADDRC({1'b0,read_addrb[3],read_addrc,read_addra[0]}),
        .ADDRD(write_addr),
        .DIA(\loop0[0].dataout_reg[3]_0 [3:2]),
        .DIB(\loop0[0].dataout_reg[3]_0 [3:2]),
        .DIC(\loop0[0].dataout_reg[3]_0 [3:2]),
        .DID(dummy_2),
        .DOA(ramouta[3:2]),
        .DOB(p_1_out),
        .DOC(p_0_out),
        .DOD(dummy_2),
        .WCLK(CLK),
        .WE(1'b1));
  LUT6 #(
    .INIT(64'h1009FFFF10090000)) 
    \mux[0]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .I2(read_addra[3]),
        .I3(read_addra[1]),
        .I4(read_enabler),
        .I5(mux),
        .O(\mux[0]_i_1_n_0 ));
  FDRE \mux_reg[0] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\mux[0]_i_1_n_0 ),
        .Q(mux),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h1004)) 
    \read_addra[0]_i_1 
       (.I0(read_addra[3]),
        .I1(read_addra[1]),
        .I2(read_addra[2]),
        .I3(read_addra[0]),
        .O(\read_addra[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h00A1)) 
    \read_addra[1]_i_1 
       (.I0(read_addra[2]),
        .I1(read_addra[1]),
        .I2(read_addra[0]),
        .I3(read_addra[3]),
        .O(\read_addra[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0430)) 
    \read_addra[2]_i_1 
       (.I0(read_addra[3]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .I3(read_addra[2]),
        .O(\read_addra[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_addra[3]_i_1 
       (.I0(read_enabler),
        .O(\read_addra[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0820)) 
    \read_addra[3]_i_2 
       (.I0(read_addra[1]),
        .I1(read_addra[2]),
        .I2(read_addra[3]),
        .I3(read_addra[0]),
        .O(\read_addra[3]_i_2_n_0 ));
  FDRE \read_addra_reg[0] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addra[0]_i_1_n_0 ),
        .Q(read_addra[0]),
        .R(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addra_reg[1] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addra[1]_i_1_n_0 ),
        .Q(read_addra[1]),
        .R(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addra_reg[2] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addra[2]_i_1_n_0 ),
        .Q(read_addra[2]),
        .R(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addra_reg[3] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addra[3]_i_2_n_0 ),
        .Q(read_addra[3]),
        .R(\read_addra[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \read_addrb[0]_i_1 
       (.I0(read_addra[3]),
        .I1(read_addra[0]),
        .I2(read_addra[1]),
        .I3(read_addra[2]),
        .O(\read_addrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \read_addrb[1]_i_1 
       (.I0(read_addra[3]),
        .I1(read_addra[2]),
        .I2(read_addra[0]),
        .I3(read_addra[1]),
        .O(\read_addrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \read_addrb[2]_i_1 
       (.I0(read_addra[1]),
        .I1(read_addra[2]),
        .I2(read_addra[0]),
        .O(\read_addrb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h1088)) 
    \read_addrb[3]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .I2(read_addra[1]),
        .I3(read_addra[3]),
        .O(\read_addrb[3]_i_1_n_0 ));
  FDSE \read_addrb_reg[0] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrb[0]_i_1_n_0 ),
        .Q(read_addrb[0]),
        .S(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addrb_reg[1] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrb[1]_i_1_n_0 ),
        .Q(read_addrb[1]),
        .R(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addrb_reg[2] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrb[2]_i_1_n_0 ),
        .Q(read_addrb[2]),
        .R(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addrb_reg[3] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrb[3]_i_1_n_0 ),
        .Q(read_addrb[3]),
        .R(\read_addra[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hAFFE)) 
    \read_addrc[1]_i_1 
       (.I0(read_addra[3]),
        .I1(read_addra[1]),
        .I2(read_addra[2]),
        .I3(read_addra[0]),
        .O(\read_addrc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h1091)) 
    \read_addrc[2]_i_1 
       (.I0(read_addra[0]),
        .I1(read_addra[2]),
        .I2(read_addra[1]),
        .I3(read_addra[3]),
        .O(\read_addrc[2]_i_1_n_0 ));
  FDSE \read_addrc_reg[1] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrc[1]_i_1_n_0 ),
        .Q(read_addrc[1]),
        .S(\read_addra[3]_i_1_n_0 ));
  FDRE \read_addrc_reg[2] 
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(\read_addrc[2]_i_1_n_0 ),
        .Q(read_addrc[2]),
        .R(\read_addra[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444F44)) 
    read_enable_i_1
       (.I0(reset_out),
        .I1(read_enable),
        .I2(write_addr[2]),
        .I3(write_addr0_n_0),
        .I4(write_addr[4]),
        .I5(write_addr[3]),
        .O(read_enable_i_1_n_0));
  FDRE read_enable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(read_enable_i_1_n_0),
        .Q(read_enable),
        .R(1'b0));
  FDRE read_enabler_reg
       (.C(\loop0[0].dataout_reg[9]_0 ),
        .CE(1'b1),
        .D(read_enable),
        .Q(read_enabler),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_addr0
       (.I0(write_addr[1]),
        .I1(write_addr[0]),
        .O(write_addr0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    \write_addr[0]_i_1__0 
       (.I0(write_addr[1]),
        .I1(write_addr[3]),
        .I2(write_addr[2]),
        .I3(write_addr[4]),
        .I4(write_addr[0]),
        .O(\write_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h5555AA2A)) 
    \write_addr[1]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[3]),
        .I2(write_addr[2]),
        .I3(write_addr[4]),
        .I4(write_addr[0]),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h5A5AF070)) 
    \write_addr[2]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[3]),
        .I2(write_addr[2]),
        .I3(write_addr[4]),
        .I4(write_addr[0]),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h6C6CCC4C)) 
    \write_addr[3]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[3]),
        .I2(write_addr[2]),
        .I3(write_addr[4]),
        .I4(write_addr[0]),
        .O(\write_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \write_addr[4]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[3]),
        .I2(write_addr[2]),
        .I3(write_addr[4]),
        .I4(write_addr[0]),
        .O(\write_addr[4]_i_1_n_0 ));
  FDRE \write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[0]_i_1__0_n_0 ),
        .Q(write_addr[0]),
        .R(reset_out));
  FDRE \write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]),
        .R(reset_out));
  FDRE \write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]),
        .R(reset_out));
  FDRE \write_addr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]),
        .R(reset_out));
  FDRE \write_addr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\write_addr[4]_i_1_n_0 ),
        .Q(write_addr[4]),
        .R(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_johnson_cntr" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr
   (clk12_5,
    clk_en_12_5_fall0,
    clk_en_12_5_rise0,
    speed_is_10_100_fall_reg,
    reg4_reg_0,
    reset_out,
    clk12_5_reg,
    speed_is_10_100_fall,
    speed_is_100_fall,
    clk1_25,
    reset_fall);
  output clk12_5;
  output clk_en_12_5_fall0;
  output clk_en_12_5_rise0;
  output speed_is_10_100_fall_reg;
  input reg4_reg_0;
  input reset_out;
  input clk12_5_reg;
  input speed_is_10_100_fall;
  input speed_is_100_fall;
  input clk1_25;
  input reset_fall;

  wire clk12_5;
  wire clk12_5_reg;
  wire clk1_25;
  wire clk_en_12_5_fall0;
  wire clk_en_12_5_rise0;
  wire reg1;
  wire reg1_i_1_n_0;
  wire reg2;
  wire reg4;
  wire reg4_reg_0;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_fall;
  wire reset_out;
  wire speed_is_100_fall;
  wire speed_is_10_100_fall;
  wire speed_is_10_100_fall_reg;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_fall_i_1
       (.I0(clk12_5_reg),
        .I1(clk12_5),
        .O(clk_en_12_5_fall0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_12_5_rise_i_1
       (.I0(clk12_5),
        .I1(clk12_5_reg),
        .O(clk_en_12_5_rise0));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1
       (.I0(reg5_reg_n_0),
        .O(reg1_i_1_n_0));
  FDRE reg1_reg
       (.C(reg4_reg_0),
        .CE(1'b1),
        .D(reg1_i_1_n_0),
        .Q(reg1),
        .R(reg5));
  FDRE reg2_reg
       (.C(reg4_reg_0),
        .CE(1'b1),
        .D(reg1),
        .Q(reg2),
        .R(reg5));
  FDRE reg3_reg
       (.C(reg4_reg_0),
        .CE(1'b1),
        .D(reg2),
        .Q(clk12_5),
        .R(reg5));
  FDRE reg4_reg
       (.C(reg4_reg_0),
        .CE(1'b1),
        .D(clk12_5),
        .Q(reg4),
        .R(reg5));
  LUT3 #(
    .INIT(8'hF4)) 
    reg5_i_1
       (.I0(reg4),
        .I1(reg5_reg_n_0),
        .I2(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(reg4_reg_0),
        .CE(1'b1),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  LUT5 #(
    .INIT(32'hFFFFDFD5)) 
    sgmii_clk_f_i_1
       (.I0(speed_is_10_100_fall),
        .I1(clk12_5),
        .I2(speed_is_100_fall),
        .I3(clk1_25),
        .I4(reset_fall),
        .O(speed_is_10_100_fall_reg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_johnson_cntr" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2
   (clk1_25,
    sgmii_clk_r0_out,
    clk_en_1_25_fall0,
    clk_en_12_5_rise,
    reg4_reg_0,
    reset_out,
    sgmii_clk_r_reg,
    data_out,
    clk12_5,
    clk1_25_reg);
  output clk1_25;
  output sgmii_clk_r0_out;
  output clk_en_1_25_fall0;
  input clk_en_12_5_rise;
  input reg4_reg_0;
  input reset_out;
  input sgmii_clk_r_reg;
  input data_out;
  input clk12_5;
  input clk1_25_reg;

  wire clk12_5;
  wire clk1_25;
  wire clk1_25_reg;
  wire clk_en_12_5_rise;
  wire clk_en_1_25_fall0;
  wire data_out;
  wire reg1_i_1__0_n_0;
  wire reg1_reg_n_0;
  wire reg2_reg_n_0;
  wire reg4;
  wire reg4_reg_0;
  wire reg5;
  wire reg5_reg_n_0;
  wire reset_out;
  wire sgmii_clk_r0_out;
  wire sgmii_clk_r_reg;

  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_en_1_25_fall_i_1
       (.I0(clk1_25_reg),
        .I1(clk1_25),
        .O(clk_en_1_25_fall0));
  LUT1 #(
    .INIT(2'h1)) 
    reg1_i_1__0
       (.I0(reg5_reg_n_0),
        .O(reg1_i_1__0_n_0));
  FDRE reg1_reg
       (.C(reg4_reg_0),
        .CE(clk_en_12_5_rise),
        .D(reg1_i_1__0_n_0),
        .Q(reg1_reg_n_0),
        .R(reg5));
  FDRE reg2_reg
       (.C(reg4_reg_0),
        .CE(clk_en_12_5_rise),
        .D(reg1_reg_n_0),
        .Q(reg2_reg_n_0),
        .R(reg5));
  FDRE reg3_reg
       (.C(reg4_reg_0),
        .CE(clk_en_12_5_rise),
        .D(reg2_reg_n_0),
        .Q(clk1_25),
        .R(reg5));
  FDRE reg4_reg
       (.C(reg4_reg_0),
        .CE(clk_en_12_5_rise),
        .D(clk1_25),
        .Q(reg4),
        .R(reg5));
  LUT4 #(
    .INIT(16'hFF40)) 
    reg5_i_1__0
       (.I0(reg4),
        .I1(clk_en_12_5_rise),
        .I2(reg5_reg_n_0),
        .I3(reset_out),
        .O(reg5));
  FDRE reg5_reg
       (.C(reg4_reg_0),
        .CE(clk_en_12_5_rise),
        .D(reg4),
        .Q(reg5_reg_n_0),
        .R(reg5));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    sgmii_clk_r_i_1
       (.I0(sgmii_clk_r_reg),
        .I1(clk1_25),
        .I2(data_out),
        .I3(clk12_5),
        .O(sgmii_clk_r0_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_lvds_transceiver_ser8" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8
   (txp,
    txn,
    rxchariscomma,
    rxcharisk,
    rxnotintable,
    rxrundisp,
    rxdisperr,
    rxdata,
    CLK,
    rxp,
    rxn,
    \mdataouta_reg[3] ,
    not_rxclk,
    \loop0[0].dataout_reg[9] ,
    reset_in,
    tx_rst,
    txchardispval,
    txchardispmode,
    txdata,
    txcharisk);
  output txp;
  output txn;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxnotintable;
  output [0:0]rxrundisp;
  output [0:0]rxdisperr;
  output [7:0]rxdata;
  input CLK;
  input rxp;
  input rxn;
  input \mdataouta_reg[3] ;
  input not_rxclk;
  input \loop0[0].dataout_reg[9] ;
  input reset_in;
  input tx_rst;
  input txchardispval;
  input txchardispmode;
  input [7:0]txdata;
  input txcharisk;

  wire CLK;
  wire [7:5]b3;
  wire code_err_i;
  wire comma;
  wire k;
  wire \loop0[0].dataout_reg[9] ;
  wire \mdataouta_reg[3] ;
  wire not_rxclk;
  wire reset_in;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire rxn;
  wire [0:0]rxnotintable;
  wire rxp;
  wire [0:0]rxrundisp;
  wire serdes_1_to_10_ser8_i_n_1;
  wire serdes_1_to_10_ser8_i_n_2;
  wire serdes_1_to_10_ser8_i_n_3;
  wire serdes_1_to_10_ser8_i_n_4;
  wire serdes_1_to_10_ser8_i_n_5;
  wire serdes_1_to_10_ser8_i_n_6;
  wire serdes_1_to_10_ser8_i_n_7;
  wire [9:0]tx_data_10b;
  wire tx_rst;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txp;

  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base decode_8b10b
       (.b3(b3),
        .code_err_i(code_err_i),
        .\gdeni.disp_err_reg_0 (serdes_1_to_10_ser8_i_n_7),
        .\grdni.run_disp_i_reg_0 (\loop0[0].dataout_reg[9] ),
        .\grdni.run_disp_i_reg_1 (serdes_1_to_10_ser8_i_n_6),
        .k(k),
        .out({serdes_1_to_10_ser8_i_n_1,serdes_1_to_10_ser8_i_n_2,serdes_1_to_10_ser8_i_n_3,serdes_1_to_10_ser8_i_n_4,serdes_1_to_10_ser8_i_n_5}),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxrundisp(rxrundisp));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base encode_8b10b
       (.\ngdb.disp_run_reg_0 (\loop0[0].dataout_reg[9] ),
        .tx_data_10b(tx_data_10b),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata));
  FDRE rxchariscomma_reg
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(comma),
        .Q(rxchariscomma),
        .R(1'b0));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8 serdes_10_to_1_ser8_i
       (.CLK(CLK),
        .reset_sync6(\loop0[0].dataout_reg[9] ),
        .tx_data_10b(tx_data_10b),
        .tx_rst(tx_rst),
        .txn(txn),
        .txp(txp),
        .txp_0(\mdataouta_reg[3] ));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8 serdes_1_to_10_ser8_i
       (.CLK(CLK),
        .b3(b3),
        .code_err_i(code_err_i),
        .comma(comma),
        .\grdni.run_disp_i_reg (serdes_1_to_10_ser8_i_n_6),
        .\grdni.run_disp_i_reg_0 (serdes_1_to_10_ser8_i_n_7),
        .k(k),
        .\loop0[0].dataout_reg[9] (\loop0[0].dataout_reg[9] ),
        .\mdataouta_reg[3] (\mdataouta_reg[3] ),
        .not_rxclk(not_rxclk),
        .out({serdes_1_to_10_ser8_i_n_1,serdes_1_to_10_ser8_i_n_2,serdes_1_to_10_ser8_i_n_3,serdes_1_to_10_ser8_i_n_4,serdes_1_to_10_ser8_i_n_5}),
        .reset_in(reset_in),
        .rxn(rxn),
        .rxp(rxp),
        .rxrundisp(rxrundisp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync
   (reset_out,
    reset_sync6_0,
    reset_in);
  output reset_out;
  input reset_sync6_0;
  input reset_in;

  wire reset_in;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire reset_sync6_0;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_in),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_in),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_in),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_in),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3
   (reset_sync6_0,
    CLK,
    reset_out);
  output reset_sync6_0;
  input CLK;
  input reset_out;

  wire CLK;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire reset_sync6_0;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_out),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_out),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_out),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_out),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_out),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_sync6_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4
   (reset_out,
    CLK,
    reset_in);
  output reset_out;
  input CLK;
  input reset_in;

  wire CLK;
  wire reset_in;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_in),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_in),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_in),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_in),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5
   (reset_sync6_0,
    CLK,
    reset_out);
  output reset_sync6_0;
  input CLK;
  input reset_out;

  wire CLK;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire reset_sync6_0;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_out),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_out),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_out),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_out),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_out),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_sync6_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6
   (rxclk_r_reg,
    reset_out,
    rxclk_r_reg_0,
    E,
    SR,
    \bt_val_rawa_reg[3] ,
    reset_sync6_0,
    rxclk_r,
    rxclk_int,
    rxclk_rd_1,
    rxclk_rd,
    Q,
    phase,
    \count_in_reg[0] ,
    \m_delay_val_int_reg[1] ,
    \m_delay_val_int_reg[1]_0 ,
    CLK,
    reset_in);
  output rxclk_r_reg;
  output reset_out;
  output rxclk_r_reg_0;
  output [0:0]E;
  output [0:0]SR;
  output [0:0]\bt_val_rawa_reg[3] ;
  output [0:0]reset_sync6_0;
  input rxclk_r;
  input rxclk_int;
  input rxclk_rd_1;
  input rxclk_rd;
  input [3:0]Q;
  input phase;
  input \count_in_reg[0] ;
  input [0:0]\m_delay_val_int_reg[1] ;
  input \m_delay_val_int_reg[1]_0 ;
  input CLK;
  input reset_in;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]\bt_val_rawa_reg[3] ;
  wire \count_in_reg[0] ;
  wire [0:0]\m_delay_val_int_reg[1] ;
  wire \m_delay_val_int_reg[1]_0 ;
  wire phase;
  wire reset_in;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire [0:0]reset_sync6_0;
  wire rxclk_int;
  wire rxclk_r;
  wire rxclk_r_reg;
  wire rxclk_r_reg_0;
  wire rxclk_rd;
  wire rxclk_rd_1;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hAEEAAAAA)) 
    \count_in[8]_i_1 
       (.I0(reset_out),
        .I1(\count_in_reg[0] ),
        .I2(rxclk_r),
        .I3(rxclk_rd),
        .I4(rxclk_rd_1),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_delay_val_int[1]_i_1 
       (.I0(\m_delay_val_int_reg[1] ),
        .I1(reset_out),
        .I2(\m_delay_val_int_reg[1]_0 ),
        .O(\bt_val_rawa_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    pd_min_i_1
       (.I0(reset_out),
        .O(reset_sync6_0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_in),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_in),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_in),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_in),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
  LUT3 #(
    .INIT(8'hB8)) 
    rxclk_r_i_1
       (.I0(rxclk_r),
        .I1(reset_out),
        .I2(rxclk_int),
        .O(rxclk_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    rxclk_rd_i_1
       (.I0(rxclk_r),
        .I1(rxclk_rd_1),
        .I2(reset_out),
        .I3(rxclk_rd),
        .O(rxclk_r_reg_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \temp[7]_i_1 
       (.I0(reset_out),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(phase),
        .O(E));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7
   (reset_out,
    reset_sync6_0,
    tx_rst);
  output reset_out;
  input reset_sync6_0;
  input tx_rst;

  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire reset_sync6_0;
  wire tx_rst;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(tx_rst),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(tx_rst),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(tx_rst),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(tx_rst),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(tx_rst),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(reset_sync6_0),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8
   (SR,
    read_enable_dom_ch,
    CLK,
    reset_out);
  output [0:0]SR;
  input read_enable_dom_ch;
  input CLK;
  input reset_out;

  wire CLK;
  wire [0:0]SR;
  wire local_reset;
  wire read_enable_dom_ch;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

  LUT2 #(
    .INIT(4'hB)) 
    \r_state[5]_i_1 
       (.I0(local_reset),
        .I1(read_enable_dom_ch),
        .O(SR));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_out),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_out),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_out),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_out),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_out),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(local_reset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_wtd_timer" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer
   (reset_in,
    reset_reg_0,
    rst_125_out,
    reset_sync5,
    status_vector);
  output reset_in;
  input reset_reg_0;
  input rst_125_out;
  input reset_sync5;
  input [0:0]status_vector;

  wire \counter_stg1[2]_i_1_n_0 ;
  wire \counter_stg1[5]_i_1_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire counter_stg1_roll;
  wire counter_stg20_carry__0_n_6;
  wire counter_stg20_carry__0_n_7;
  wire counter_stg20_carry_n_0;
  wire counter_stg20_carry_n_1;
  wire counter_stg20_carry_n_2;
  wire counter_stg20_carry_n_3;
  wire counter_stg20_carry_n_4;
  wire counter_stg20_carry_n_5;
  wire counter_stg20_carry_n_6;
  wire counter_stg20_carry_n_7;
  wire [11:0]counter_stg2_reg;
  wire counter_stg30;
  wire counter_stg30_carry__0_n_6;
  wire counter_stg30_carry__0_n_7;
  wire counter_stg30_carry_n_0;
  wire counter_stg30_carry_n_1;
  wire counter_stg30_carry_n_2;
  wire counter_stg30_carry_n_3;
  wire counter_stg30_carry_n_4;
  wire counter_stg30_carry_n_5;
  wire counter_stg30_carry_n_6;
  wire counter_stg30_carry_n_7;
  wire \counter_stg3[11]_i_2_n_0 ;
  wire \counter_stg3[11]_i_3_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire [5:0]p_0_in;
  wire [11:0]p_0_in__0;
  wire [11:0]p_0_in__1;
  wire p_3_in;
  wire reset0;
  wire reset_i_3_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire reset_in;
  wire reset_reg_0;
  wire reset_sync5;
  wire rst_125_out;
  wire [0:0]status_vector;
  wire three_sec_timeout0;
  wire wtd_reset;
  wire [7:2]NLW_counter_stg20_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_counter_stg20_carry__0_O_UNCONNECTED;
  wire [7:2]NLW_counter_stg30_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_counter_stg30_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[2]),
        .O(\counter_stg1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[3]),
        .I4(counter_stg1_reg__0[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter_stg1[5]_i_1 
       (.I0(status_vector),
        .I1(counter_stg1_roll),
        .I2(p_3_in),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .I5(counter_stg1_reg),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(\counter_stg1[2]_i_1_n_0 ),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY8 counter_stg20_carry
       (.CI(counter_stg2_reg[0]),
        .CI_TOP(1'b0),
        .CO({counter_stg20_carry_n_0,counter_stg20_carry_n_1,counter_stg20_carry_n_2,counter_stg20_carry_n_3,counter_stg20_carry_n_4,counter_stg20_carry_n_5,counter_stg20_carry_n_6,counter_stg20_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S(counter_stg2_reg[8:1]));
  CARRY8 counter_stg20_carry__0
       (.CI(counter_stg20_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_stg20_carry__0_CO_UNCONNECTED[7:2],counter_stg20_carry__0_n_6,counter_stg20_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_stg20_carry__0_O_UNCONNECTED[7:3],p_0_in__0[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,counter_stg2_reg[11:9]}));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg2_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[11]_i_1 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg),
        .I2(counter_stg1_reg__0[4]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[1]),
        .O(counter_stg1_roll));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[0]),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[10]),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[11]),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[1]),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[2]),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[3]),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[4]),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[5]),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[6]),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[7]),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[8]),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(reset_reg_0),
        .CE(counter_stg1_roll),
        .D(p_0_in__0[9]),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  CARRY8 counter_stg30_carry
       (.CI(counter_stg3_reg[0]),
        .CI_TOP(1'b0),
        .CO({counter_stg30_carry_n_0,counter_stg30_carry_n_1,counter_stg30_carry_n_2,counter_stg30_carry_n_3,counter_stg30_carry_n_4,counter_stg30_carry_n_5,counter_stg30_carry_n_6,counter_stg30_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__1[8:1]),
        .S(counter_stg3_reg[8:1]));
  CARRY8 counter_stg30_carry__0
       (.CI(counter_stg30_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_stg30_carry__0_CO_UNCONNECTED[7:2],counter_stg30_carry__0_n_6,counter_stg30_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_stg30_carry__0_O_UNCONNECTED[7:3],p_0_in__1[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,counter_stg3_reg[11:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_1 
       (.I0(counter_stg3_reg[0]),
        .O(p_0_in__1[0]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \counter_stg3[11]_i_1 
       (.I0(\counter_stg3[11]_i_2_n_0 ),
        .I1(counter_stg2_reg[11]),
        .I2(counter_stg2_reg[10]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg2_reg[9]),
        .I5(counter_stg1_roll),
        .O(counter_stg30));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter_stg3[11]_i_2 
       (.I0(counter_stg2_reg[5]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[7]),
        .I3(counter_stg2_reg[6]),
        .I4(\counter_stg3[11]_i_3_n_0 ),
        .O(\counter_stg3[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[11]_i_3 
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg2_reg[3]),
        .I2(counter_stg2_reg[0]),
        .I3(counter_stg2_reg[1]),
        .O(\counter_stg3[11]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[0]),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[10]),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[11]),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[1]),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[2]),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[3]),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[4]),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[5]),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[6]),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[7]),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[8]),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(reset_reg_0),
        .CE(counter_stg30),
        .D(p_0_in__1[9]),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    reset_i_1
       (.I0(p_3_in),
        .I1(counter_stg1_reg),
        .O(reset0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    reset_i_2
       (.I0(reset_i_3_n_0),
        .I1(counter_stg3_reg[11]),
        .I2(counter_stg3_reg[5]),
        .I3(counter_stg3_reg[0]),
        .I4(counter_stg3_reg[9]),
        .I5(three_sec_timeout0),
        .O(p_3_in));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    reset_i_3
       (.I0(counter_stg3_reg[10]),
        .I1(counter_stg3_reg[4]),
        .I2(counter_stg3_reg[3]),
        .I3(counter_stg3_reg[6]),
        .I4(reset_i_5_n_0),
        .O(reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reset_i_4
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[8]),
        .I2(counter_stg2_reg[10]),
        .I3(counter_stg2_reg[4]),
        .I4(\counter_stg3[11]_i_3_n_0 ),
        .I5(reset_i_6_n_0),
        .O(three_sec_timeout0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    reset_i_5
       (.I0(counter_stg3_reg[2]),
        .I1(counter_stg3_reg[7]),
        .I2(counter_stg3_reg[8]),
        .I3(counter_stg3_reg[1]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    reset_i_6
       (.I0(counter_stg2_reg[6]),
        .I1(counter_stg2_reg[7]),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg2_reg[11]),
        .O(reset_i_6_n_0));
  FDRE reset_reg
       (.C(reset_reg_0),
        .CE(1'b1),
        .D(reset0),
        .Q(wtd_reset),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    reset_sync1_i_1
       (.I0(rst_125_out),
        .I1(wtd_reset),
        .I2(reset_sync5),
        .O(reset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_rx_rate_adapt" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt
   (gmii_rx_dv_out_reg_0,
    gmii_rx_er_out_reg_0,
    gmii_rxd,
    reset_out,
    gmii_rx_er_out_reg_1,
    gmii_rx_dv,
    rx_er_aligned_reg_0,
    gmii_rx_er,
    D);
  output gmii_rx_dv_out_reg_0;
  output gmii_rx_er_out_reg_0;
  output [7:0]gmii_rxd;
  input reset_out;
  input gmii_rx_er_out_reg_1;
  input gmii_rx_dv;
  input rx_er_aligned_reg_0;
  input gmii_rx_er;
  input [7:0]D;

  wire [7:0]D;
  wire gmii_rx_dv;
  wire gmii_rx_dv_out_reg_0;
  wire gmii_rx_er;
  wire gmii_rx_er_out_reg_0;
  wire gmii_rx_er_out_reg_1;
  wire [7:0]gmii_rxd;
  wire muxsel;
  wire muxsel_i_1_n_0;
  wire [3:0]p_0_in;
  wire reset_out;
  wire rx_dv_aligned;
  wire rx_dv_aligned_i_1_n_0;
  wire rx_dv_reg1;
  wire rx_dv_reg2;
  wire rx_er_aligned;
  wire rx_er_aligned_0;
  wire rx_er_aligned_reg_0;
  wire rx_er_reg1;
  wire rx_er_reg2;
  wire [7:0]rxd_aligned;
  wire \rxd_aligned[0]_i_1_n_0 ;
  wire \rxd_aligned[1]_i_1_n_0 ;
  wire \rxd_aligned[2]_i_1_n_0 ;
  wire \rxd_aligned[3]_i_1_n_0 ;
  wire \rxd_aligned[4]_i_1_n_0 ;
  wire \rxd_aligned[5]_i_1_n_0 ;
  wire \rxd_aligned[6]_i_1_n_0 ;
  wire \rxd_aligned[7]_i_1_n_0 ;
  wire \rxd_reg1_reg_n_0_[0] ;
  wire \rxd_reg1_reg_n_0_[1] ;
  wire \rxd_reg1_reg_n_0_[2] ;
  wire \rxd_reg1_reg_n_0_[3] ;
  wire [7:0]rxd_reg2;
  wire sfd_enable;
  wire sfd_enable0;
  wire sfd_enable_i_1_n_0;
  wire sfd_enable_i_2_n_0;
  wire sfd_enable_i_4_n_0;
  wire sfd_enable_i_5_n_0;

  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_out_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_dv_aligned),
        .Q(gmii_rx_dv_out_reg_0),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_out_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_er_aligned),
        .Q(gmii_rx_er_out_reg_0),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[0] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[0]),
        .Q(gmii_rxd[0]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[1] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[1]),
        .Q(gmii_rxd[1]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[2] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[2]),
        .Q(gmii_rxd[2]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[3] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[3]),
        .Q(gmii_rxd[3]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[4] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[4]),
        .Q(gmii_rxd[4]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[5] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[5]),
        .Q(gmii_rxd[5]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[6] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[6]),
        .Q(gmii_rxd[6]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_out_reg[7] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rxd_aligned[7]),
        .Q(gmii_rxd[7]),
        .R(reset_out));
  LUT6 #(
    .INIT(64'h00000000CCCCA8CC)) 
    muxsel_i_1
       (.I0(sfd_enable_i_5_n_0),
        .I1(muxsel),
        .I2(sfd_enable_i_2_n_0),
        .I3(sfd_enable),
        .I4(sfd_enable_i_4_n_0),
        .I5(reset_out),
        .O(muxsel_i_1_n_0));
  FDRE muxsel_reg
       (.C(rx_er_aligned_reg_0),
        .CE(1'b1),
        .D(muxsel_i_1_n_0),
        .Q(muxsel),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    rx_dv_aligned_i_1
       (.I0(rx_dv_reg1),
        .I1(muxsel),
        .I2(rx_dv_reg2),
        .O(rx_dv_aligned_i_1_n_0));
  FDRE rx_dv_aligned_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_dv_aligned_i_1_n_0),
        .Q(rx_dv_aligned),
        .R(reset_out));
  FDRE rx_dv_reg1_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(gmii_rx_dv),
        .Q(rx_dv_reg1),
        .R(reset_out));
  FDRE rx_dv_reg2_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_dv_reg1),
        .Q(rx_dv_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    rx_er_aligned_i_1
       (.I0(muxsel),
        .I1(rx_er_reg1),
        .I2(rx_er_reg2),
        .O(rx_er_aligned_0));
  FDRE rx_er_aligned_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_er_aligned_0),
        .Q(rx_er_aligned),
        .R(reset_out));
  FDRE rx_er_reg1_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(gmii_rx_er),
        .Q(rx_er_reg1),
        .R(reset_out));
  FDRE rx_er_reg2_reg
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(rx_er_reg1),
        .Q(rx_er_reg2),
        .R(reset_out));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[0]_i_1 
       (.I0(rxd_reg2[4]),
        .I1(muxsel),
        .I2(rxd_reg2[0]),
        .O(\rxd_aligned[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[1]_i_1 
       (.I0(rxd_reg2[5]),
        .I1(muxsel),
        .I2(rxd_reg2[1]),
        .O(\rxd_aligned[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[2]_i_1 
       (.I0(rxd_reg2[6]),
        .I1(muxsel),
        .I2(rxd_reg2[2]),
        .O(\rxd_aligned[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[3]_i_1 
       (.I0(rxd_reg2[7]),
        .I1(muxsel),
        .I2(rxd_reg2[3]),
        .O(\rxd_aligned[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[4]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[0] ),
        .I1(muxsel),
        .I2(rxd_reg2[4]),
        .O(\rxd_aligned[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[5]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[1] ),
        .I1(muxsel),
        .I2(rxd_reg2[5]),
        .O(\rxd_aligned[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[6]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[2] ),
        .I1(muxsel),
        .I2(rxd_reg2[6]),
        .O(\rxd_aligned[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxd_aligned[7]_i_1 
       (.I0(\rxd_reg1_reg_n_0_[3] ),
        .I1(muxsel),
        .I2(rxd_reg2[7]),
        .O(\rxd_aligned[7]_i_1_n_0 ));
  FDRE \rxd_aligned_reg[0] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[0]_i_1_n_0 ),
        .Q(rxd_aligned[0]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[1] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[1]_i_1_n_0 ),
        .Q(rxd_aligned[1]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[2] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[2]_i_1_n_0 ),
        .Q(rxd_aligned[2]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[3] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[3]_i_1_n_0 ),
        .Q(rxd_aligned[3]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[4] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[4]_i_1_n_0 ),
        .Q(rxd_aligned[4]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[5] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[5]_i_1_n_0 ),
        .Q(rxd_aligned[5]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[6] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[6]_i_1_n_0 ),
        .Q(rxd_aligned[6]),
        .R(reset_out));
  FDRE \rxd_aligned_reg[7] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_aligned[7]_i_1_n_0 ),
        .Q(rxd_aligned[7]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[0] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[0]),
        .Q(\rxd_reg1_reg_n_0_[0] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[1] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[1]),
        .Q(\rxd_reg1_reg_n_0_[1] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[2] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[2]),
        .Q(\rxd_reg1_reg_n_0_[2] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[3] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[3]),
        .Q(\rxd_reg1_reg_n_0_[3] ),
        .R(reset_out));
  FDRE \rxd_reg1_reg[4] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[4]),
        .Q(p_0_in[0]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[5] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[5]),
        .Q(p_0_in[1]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[6] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[6]),
        .Q(p_0_in[2]),
        .R(reset_out));
  FDRE \rxd_reg1_reg[7] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(D[7]),
        .Q(p_0_in[3]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[0] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_reg1_reg_n_0_[0] ),
        .Q(rxd_reg2[0]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[1] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_reg1_reg_n_0_[1] ),
        .Q(rxd_reg2[1]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[2] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_reg1_reg_n_0_[2] ),
        .Q(rxd_reg2[2]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[3] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(\rxd_reg1_reg_n_0_[3] ),
        .Q(rxd_reg2[3]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[4] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(p_0_in[0]),
        .Q(rxd_reg2[4]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[5] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(p_0_in[1]),
        .Q(rxd_reg2[5]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[6] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(p_0_in[2]),
        .Q(rxd_reg2[6]),
        .R(reset_out));
  FDRE \rxd_reg2_reg[7] 
       (.C(rx_er_aligned_reg_0),
        .CE(gmii_rx_er_out_reg_1),
        .D(p_0_in[3]),
        .Q(rxd_reg2[7]),
        .R(reset_out));
  LUT6 #(
    .INIT(64'hFFDDFFCCC0C8C0CC)) 
    sfd_enable_i_1
       (.I0(sfd_enable_i_2_n_0),
        .I1(sfd_enable0),
        .I2(gmii_rx_er_out_reg_1),
        .I3(sfd_enable_i_4_n_0),
        .I4(sfd_enable_i_5_n_0),
        .I5(sfd_enable),
        .O(sfd_enable_i_1_n_0));
  LUT5 #(
    .INIT(32'h04000000)) 
    sfd_enable_i_2
       (.I0(p_0_in[3]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(D[3]),
        .I4(D[2]),
        .O(sfd_enable_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sfd_enable_i_3
       (.I0(gmii_rx_dv),
        .I1(rx_dv_reg1),
        .O(sfd_enable0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    sfd_enable_i_4
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(gmii_rx_er_out_reg_1),
        .I3(p_0_in[2]),
        .O(sfd_enable_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    sfd_enable_i_5
       (.I0(\rxd_reg1_reg_n_0_[0] ),
        .I1(\rxd_reg1_reg_n_0_[3] ),
        .I2(p_0_in[3]),
        .I3(\rxd_reg1_reg_n_0_[2] ),
        .I4(\rxd_reg1_reg_n_0_[1] ),
        .O(sfd_enable_i_5_n_0));
  FDRE sfd_enable_reg
       (.C(rx_er_aligned_reg_0),
        .CE(1'b1),
        .D(sfd_enable_i_1_n_0),
        .Q(sfd_enable),
        .R(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8
   (txp,
    txn,
    reset_sync6,
    tx_data_10b,
    txp_0,
    CLK,
    tx_rst);
  output txp;
  output txn;
  input reset_sync6;
  input [9:0]tx_data_10b;
  input txp_0;
  input CLK;
  input tx_rst;

  wire CLK;
  wire [3:0]dataint;
  wire local_reset;
  wire reset_sync6;
  wire [9:0]tx_data_10b;
  wire tx_data_out;
  wire tx_rst;
  wire txn;
  wire txp;
  wire txp_0;
  wire NLW_oserdes_m_T_OUT_UNCONNECTED;

  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4 gb0
       (.CLK(CLK),
        .Q(dataint),
        .read_enable_reg_0(reset_sync6),
        .reset_out(local_reset),
        .tx_data_10b(tx_data_10b));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    io_data_out
       (.I(tx_data_out),
        .O(txp),
        .OB(txn));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE3 #(
    .DATA_WIDTH(4),
    .INIT(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .ODDR_MODE("FALSE"),
    .OSERDES_D_BYPASS("FALSE"),
    .OSERDES_T_BYPASS("FALSE"),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000)) 
    oserdes_m
       (.CLK(txp_0),
        .CLKDIV(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,dataint}),
        .OQ(tx_data_out),
        .RST(local_reset),
        .T(1'b0),
        .T_OUT(NLW_oserdes_m_T_OUT_UNCONNECTED));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7 reset_sync_inter_clk
       (.reset_out(local_reset),
        .reset_sync6_0(reset_sync6),
        .tx_rst(tx_rst));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8
   (comma,
    out,
    \grdni.run_disp_i_reg ,
    \grdni.run_disp_i_reg_0 ,
    k,
    code_err_i,
    b3,
    CLK,
    rxp,
    rxn,
    \mdataouta_reg[3] ,
    not_rxclk,
    \loop0[0].dataout_reg[9] ,
    reset_in,
    rxrundisp);
  output comma;
  output [4:0]out;
  output \grdni.run_disp_i_reg ;
  output \grdni.run_disp_i_reg_0 ;
  output k;
  output code_err_i;
  output [7:5]b3;
  input CLK;
  input rxp;
  input rxn;
  input \mdataouta_reg[3] ;
  input not_rxclk;
  input \loop0[0].dataout_reg[9] ;
  input reset_in;
  input [0:0]rxrundisp;

  wire CLK;
  wire [1:1]action;
  wire [9:0]al_rx_data;
  wire \al_rx_data[0]_i_2_n_0 ;
  wire \al_rx_data[0]_i_3_n_0 ;
  wire \al_rx_data[1]_i_2_n_0 ;
  wire \al_rx_data[1]_i_3_n_0 ;
  wire \al_rx_data[2]_i_2_n_0 ;
  wire \al_rx_data[2]_i_3_n_0 ;
  wire \al_rx_data[2]_i_4_n_0 ;
  wire \al_rx_data[3]_i_2_n_0 ;
  wire \al_rx_data[3]_i_3_n_0 ;
  wire \al_rx_data[3]_i_4_n_0 ;
  wire \al_rx_data[3]_i_5_n_0 ;
  wire \al_rx_data[3]_i_6_n_0 ;
  wire \al_rx_data[3]_i_7_n_0 ;
  wire \al_rx_data[4]_i_2_n_0 ;
  wire \al_rx_data[4]_i_3_n_0 ;
  wire \al_rx_data[4]_i_4_n_0 ;
  wire \al_rx_data[5]_i_2_n_0 ;
  wire \al_rx_data[5]_i_3_n_0 ;
  wire \al_rx_data[5]_i_4_n_0 ;
  wire \al_rx_data[6]_i_2_n_0 ;
  wire \al_rx_data[6]_i_3_n_0 ;
  wire \al_rx_data[7]_i_2_n_0 ;
  wire \al_rx_data[7]_i_3_n_0 ;
  wire \al_rx_data[8]_i_2_n_0 ;
  wire \al_rx_data[8]_i_3_n_0 ;
  wire \al_rx_data[9]_i_2_n_0 ;
  wire \al_rx_data[9]_i_3_n_0 ;
  wire \al_rx_data[9]_i_4_n_0 ;
  wire \al_rx_data[9]_i_5_n_0 ;
  wire [7:5]b3;
  wire [6:0]bt_val;
  wire bt_val_rawa;
  wire [7:1]bt_val_rawa0;
  wire bt_val_rawa0_carry_i_1_n_0;
  wire bt_val_rawa0_carry_i_2_n_0;
  wire bt_val_rawa0_carry_i_3_n_0;
  wire bt_val_rawa0_carry_i_4_n_0;
  wire bt_val_rawa0_carry_i_5_n_0;
  wire bt_val_rawa0_carry_i_6_n_0;
  wire bt_val_rawa0_carry_i_7_n_0;
  wire bt_val_rawa0_carry_i_8_n_0;
  wire bt_val_rawa0_carry_n_1;
  wire bt_val_rawa0_carry_n_2;
  wire bt_val_rawa0_carry_n_3;
  wire bt_val_rawa0_carry_n_4;
  wire bt_val_rawa0_carry_n_5;
  wire bt_val_rawa0_carry_n_6;
  wire bt_val_rawa0_carry_n_7;
  wire code_err_i;
  wire comma;
  wire comma_i_1_n_0;
  wire \count_in[0]_i_1_n_0 ;
  wire \count_in[3]_i_1_n_0 ;
  wire \count_in[8]_i_4_n_0 ;
  wire [8:0]count_in_reg;
  wire [9:0]data9;
  wire data_mux_i_1_n_0;
  wire [9:0]dataout;
  wire dc_inst_n_10;
  wire dc_inst_n_26;
  wire dc_inst_n_27;
  wire dc_inst_n_28;
  wire dc_inst_n_29;
  wire dc_inst_n_3;
  wire dc_inst_n_30;
  wire dc_inst_n_4;
  wire dc_inst_n_5;
  wire dc_inst_n_6;
  wire dc_inst_n_7;
  wire dc_inst_n_9;
  wire dec_run;
  wire dec_run_i_1_n_0;
  wire delay_change_i_1_n_0;
  wire \dout_i[7]_i_2_n_0 ;
  wire \dout_i[7]_i_3_n_0 ;
  wire g0_b0__0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b2__0_n_0;
  wire \gcerr.code_err_i_10_n_0 ;
  wire \gcerr.code_err_i_11_n_0 ;
  wire \gcerr.code_err_i_12_n_0 ;
  wire \gcerr.code_err_i_13_n_0 ;
  wire \gcerr.code_err_i_2_n_0 ;
  wire \gcerr.code_err_i_3_n_0 ;
  wire \gcerr.code_err_i_4_n_0 ;
  wire \gcerr.code_err_i_5_n_0 ;
  wire \gcerr.code_err_i_6_n_0 ;
  wire \gcerr.code_err_i_7_n_0 ;
  wire \gcerr.code_err_i_8_n_0 ;
  wire \gcerr.code_err_i_9_n_0 ;
  wire \gdeni.disp_err_i_4_n_0 ;
  wire \gdeni.disp_err_i_5_n_0 ;
  wire \gdeni.disp_err_i_6_n_0 ;
  wire \gdeni.disp_err_i_7_n_0 ;
  wire \gdeni.disp_err_reg_i_2_n_0 ;
  wire \gdeni.disp_err_reg_i_3_n_0 ;
  wire \grdni.run_disp_i_i_2_n_0 ;
  wire \grdni.run_disp_i_i_3_n_0 ;
  wire \grdni.run_disp_i_reg ;
  wire \grdni.run_disp_i_reg_0 ;
  wire inc_run_i_1_n_0;
  wire k;
  wire kout_i_i_2_n_0;
  wire kout_i_i_3_n_0;
  wire local_reset;
  wire \loop0[0].dataout_reg[9] ;
  wire [8:2]m_delay_val_in;
  wire m_delay_val_int142_out;
  wire [8:0]m_delay_val_out;
  wire \mdataouta_reg[3] ;
  wire [3:0]mdataoutd;
  wire meq_max;
  wire mload;
  wire [3:0]mpx;
  wire mpx0;
  wire \mpx[0]_i_1_n_0 ;
  wire \mpx[0]_i_2_n_0 ;
  wire \mpx[0]_i_4_n_0 ;
  wire \mpx[0]_i_5_n_0 ;
  wire \mpx[0]_i_6_n_0 ;
  wire \mpx[0]_i_7_n_0 ;
  wire \mpx[1]_i_10_n_0 ;
  wire \mpx[1]_i_11_n_0 ;
  wire \mpx[1]_i_12_n_0 ;
  wire \mpx[1]_i_13_n_0 ;
  wire \mpx[1]_i_14_n_0 ;
  wire \mpx[1]_i_15_n_0 ;
  wire \mpx[1]_i_16_n_0 ;
  wire \mpx[1]_i_17_n_0 ;
  wire \mpx[1]_i_18_n_0 ;
  wire \mpx[1]_i_1_n_0 ;
  wire \mpx[1]_i_4_n_0 ;
  wire \mpx[1]_i_5_n_0 ;
  wire \mpx[1]_i_6_n_0 ;
  wire \mpx[1]_i_9_n_0 ;
  wire \mpx[2]_i_1_n_0 ;
  wire \mpx[3]_i_10_n_0 ;
  wire \mpx[3]_i_12_n_0 ;
  wire \mpx[3]_i_13_n_0 ;
  wire \mpx[3]_i_14_n_0 ;
  wire \mpx[3]_i_15_n_0 ;
  wire \mpx[3]_i_16_n_0 ;
  wire \mpx[3]_i_17_n_0 ;
  wire \mpx[3]_i_18_n_0 ;
  wire \mpx[3]_i_19_n_0 ;
  wire \mpx[3]_i_20_n_0 ;
  wire \mpx[3]_i_21_n_0 ;
  wire \mpx[3]_i_22_n_0 ;
  wire \mpx[3]_i_23_n_0 ;
  wire \mpx[3]_i_24_n_0 ;
  wire \mpx[3]_i_2_n_0 ;
  wire \mpx[3]_i_5_n_0 ;
  wire \mpx[3]_i_6_n_0 ;
  wire \mpx[3]_i_7_n_0 ;
  wire \mpx[3]_i_9_n_0 ;
  wire [1:0]msxor_ctd;
  wire [1:0]msxor_cti;
  wire not_rxclk;
  wire [4:0]out;
  wire [3:0]p_0_in__3;
  wire [8:1]p_0_in__4;
  wire p_18_in;
  wire pd_max;
  wire pd_min;
  wire phase;
  wire phase_i_1_n_0;
  wire phase_reg_n_0;
  wire reset_in;
  wire reset_sync;
  wire reset_sync_1;
  wire reset_sync_2;
  wire reset_sync_rxclk_div4_n_0;
  wire reset_sync_rxclk_div4_n_2;
  wire reset_sync_rxclk_div4_n_4;
  wire reset_sync_rxclk_div4_n_5;
  wire [9:0]rx_data_10b;
  wire rx_data_in_md;
  wire rx_data_in_n;
  wire rx_data_in_p;
  wire rx_data_in_sd;
  wire rxclk_from_odelay;
  wire rxclk_idelay_out;
  wire rxclk_int;
  wire rxclk_r;
  wire rxclk_rd;
  wire rxclk_rd_1;
  wire \rxdh_reg_n_0_[0] ;
  wire \rxdh_reg_n_0_[19] ;
  wire \rxdh_reg_n_0_[1] ;
  wire \rxdh_reg_n_0_[2] ;
  wire \rxdh_reg_n_0_[3] ;
  wire \rxdh_reg_n_0_[4] ;
  wire \rxdh_reg_n_0_[5] ;
  wire \rxdh_reg_n_0_[6] ;
  wire \rxdh_reg_n_0_[7] ;
  wire \rxdh_reg_n_0_[8] ;
  wire rxn;
  wire rxp;
  wire [0:0]rxrundisp;
  wire [8:2]s_delay_val_in;
  wire [8:0]s_delay_val_out;
  wire s_ovflw1;
  wire s_ovflw12_out;
  wire [3:3]s_state;
  wire [3:0]sdataout;
  wire [8:0]sel0;
  wire [7:0]serdesm;
  wire [7:0]serdess;
  wire sload;
  wire sload_i_2_n_0;
  wire [3:0]small_count_reg;
  wire [7:0]temp;
  wire \temp[7]_i_3_n_0 ;
  wire \temp[7]_i_4_n_0 ;
  wire temp_0;
  wire upd_flag_i_1_n_0;
  wire [7:7]NLW_bt_val_rawa0_carry_CO_UNCONNECTED;
  wire [0:0]NLW_bt_val_rawa0_carry_O_UNCONNECTED;
  wire [8:0]NLW_idelay_cal_CNTVALUEOUT_UNCONNECTED;
  wire NLW_idelay_m_CASC_OUT_UNCONNECTED;
  wire NLW_idelay_m_CASC_RETURN_UNCONNECTED;
  wire NLW_idelay_s_CASC_OUT_UNCONNECTED;
  wire NLW_idelay_s_CASC_RETURN_UNCONNECTED;
  wire NLW_iserdes_m_FIFO_EMPTY_UNCONNECTED;
  wire NLW_iserdes_m_INTERNAL_DIVCLK_UNCONNECTED;
  wire NLW_iserdes_s_FIFO_EMPTY_UNCONNECTED;
  wire NLW_iserdes_s_INTERNAL_DIVCLK_UNCONNECTED;
  wire NLW_odelay_cal_CASC_OUT_UNCONNECTED;
  wire NLW_odelay_cal_ODATAIN_UNCONNECTED;
  wire [8:0]NLW_odelay_cal_CNTVALUEOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'h22B2)) 
    \action[1]_i_1 
       (.I0(msxor_ctd[1]),
        .I1(msxor_cti[1]),
        .I2(msxor_ctd[0]),
        .I3(msxor_cti[0]),
        .O(action));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \al_rx_data[0]_i_1 
       (.I0(\al_rx_data[0]_i_2_n_0 ),
        .I1(\rxdh_reg_n_0_[8] ),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(\al_rx_data[4]_i_3_n_0 ),
        .I4(\al_rx_data[3]_i_4_n_0 ),
        .I5(\al_rx_data[0]_i_3_n_0 ),
        .O(al_rx_data[0]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \al_rx_data[0]_i_2 
       (.I0(\rxdh_reg_n_0_[3] ),
        .I1(\rxdh_reg_n_0_[1] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(mpx[2]),
        .I5(mpx[3]),
        .O(\al_rx_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \al_rx_data[0]_i_3 
       (.I0(\al_rx_data[3]_i_6_n_0 ),
        .I1(\rxdh_reg_n_0_[0] ),
        .I2(\al_rx_data[3]_i_7_n_0 ),
        .I3(\rxdh_reg_n_0_[2] ),
        .I4(data9[0]),
        .I5(\al_rx_data[9]_i_5_n_0 ),
        .O(\al_rx_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \al_rx_data[1]_i_1 
       (.I0(\al_rx_data[1]_i_2_n_0 ),
        .I1(data9[0]),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(\al_rx_data[5]_i_3_n_0 ),
        .I4(\al_rx_data[3]_i_4_n_0 ),
        .I5(\al_rx_data[1]_i_3_n_0 ),
        .O(al_rx_data[1]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \al_rx_data[1]_i_2 
       (.I0(\rxdh_reg_n_0_[4] ),
        .I1(\rxdh_reg_n_0_[2] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(mpx[2]),
        .I5(mpx[3]),
        .O(\al_rx_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \al_rx_data[1]_i_3 
       (.I0(\al_rx_data[3]_i_6_n_0 ),
        .I1(\rxdh_reg_n_0_[1] ),
        .I2(\al_rx_data[3]_i_7_n_0 ),
        .I3(\rxdh_reg_n_0_[3] ),
        .I4(data9[1]),
        .I5(\al_rx_data[9]_i_5_n_0 ),
        .O(\al_rx_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \al_rx_data[2]_i_1 
       (.I0(\al_rx_data[2]_i_2_n_0 ),
        .I1(data9[1]),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(\al_rx_data[2]_i_3_n_0 ),
        .I4(\al_rx_data[3]_i_4_n_0 ),
        .I5(\al_rx_data[2]_i_4_n_0 ),
        .O(al_rx_data[2]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \al_rx_data[2]_i_2 
       (.I0(\rxdh_reg_n_0_[5] ),
        .I1(\rxdh_reg_n_0_[3] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(mpx[2]),
        .I5(mpx[3]),
        .O(\al_rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[2]_i_3 
       (.I0(\rxdh_reg_n_0_[7] ),
        .I1(data9[0]),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(\rxdh_reg_n_0_[6] ),
        .I5(\rxdh_reg_n_0_[8] ),
        .O(\al_rx_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \al_rx_data[2]_i_4 
       (.I0(\al_rx_data[3]_i_6_n_0 ),
        .I1(\rxdh_reg_n_0_[2] ),
        .I2(\al_rx_data[3]_i_7_n_0 ),
        .I3(\rxdh_reg_n_0_[4] ),
        .I4(data9[2]),
        .I5(\al_rx_data[9]_i_5_n_0 ),
        .O(\al_rx_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \al_rx_data[3]_i_1 
       (.I0(\al_rx_data[3]_i_2_n_0 ),
        .I1(data9[2]),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(\al_rx_data[3]_i_3_n_0 ),
        .I4(\al_rx_data[3]_i_4_n_0 ),
        .I5(\al_rx_data[3]_i_5_n_0 ),
        .O(al_rx_data[3]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \al_rx_data[3]_i_2 
       (.I0(\rxdh_reg_n_0_[6] ),
        .I1(\rxdh_reg_n_0_[4] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(mpx[2]),
        .I5(mpx[3]),
        .O(\al_rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[3]_i_3 
       (.I0(\rxdh_reg_n_0_[8] ),
        .I1(data9[1]),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(\rxdh_reg_n_0_[7] ),
        .I5(data9[0]),
        .O(\al_rx_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \al_rx_data[3]_i_4 
       (.I0(mpx[2]),
        .I1(mpx[3]),
        .O(\al_rx_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \al_rx_data[3]_i_5 
       (.I0(\al_rx_data[3]_i_6_n_0 ),
        .I1(\rxdh_reg_n_0_[3] ),
        .I2(\al_rx_data[3]_i_7_n_0 ),
        .I3(\rxdh_reg_n_0_[5] ),
        .I4(data9[3]),
        .I5(\al_rx_data[9]_i_5_n_0 ),
        .O(\al_rx_data[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \al_rx_data[3]_i_6 
       (.I0(mpx[1]),
        .I1(mpx[0]),
        .I2(mpx[2]),
        .I3(mpx[3]),
        .O(\al_rx_data[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \al_rx_data[3]_i_7 
       (.I0(mpx[0]),
        .I1(mpx[1]),
        .I2(mpx[2]),
        .I3(mpx[3]),
        .O(\al_rx_data[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \al_rx_data[4]_i_1 
       (.I0(\al_rx_data[4]_i_2_n_0 ),
        .I1(mpx[2]),
        .I2(mpx[3]),
        .I3(\al_rx_data[4]_i_3_n_0 ),
        .I4(\al_rx_data[4]_i_4_n_0 ),
        .O(al_rx_data[4]));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0C0)) 
    \al_rx_data[4]_i_2 
       (.I0(data9[4]),
        .I1(data9[3]),
        .I2(mpx[3]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(mpx[2]),
        .O(\al_rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[4]_i_3 
       (.I0(\rxdh_reg_n_0_[5] ),
        .I1(\rxdh_reg_n_0_[7] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(\rxdh_reg_n_0_[4] ),
        .I5(\rxdh_reg_n_0_[6] ),
        .O(\al_rx_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[4]_i_4 
       (.I0(data9[0]),
        .I1(data9[2]),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(\rxdh_reg_n_0_[8] ),
        .I5(data9[1]),
        .O(\al_rx_data[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \al_rx_data[5]_i_1 
       (.I0(\al_rx_data[5]_i_2_n_0 ),
        .I1(mpx[2]),
        .I2(mpx[3]),
        .I3(\al_rx_data[5]_i_3_n_0 ),
        .I4(\al_rx_data[5]_i_4_n_0 ),
        .O(al_rx_data[5]));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0C0)) 
    \al_rx_data[5]_i_2 
       (.I0(data9[5]),
        .I1(data9[4]),
        .I2(mpx[3]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(mpx[2]),
        .O(\al_rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[5]_i_3 
       (.I0(\rxdh_reg_n_0_[6] ),
        .I1(\rxdh_reg_n_0_[8] ),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(\rxdh_reg_n_0_[5] ),
        .I5(\rxdh_reg_n_0_[7] ),
        .O(\al_rx_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \al_rx_data[5]_i_4 
       (.I0(data9[1]),
        .I1(data9[3]),
        .I2(mpx[1]),
        .I3(mpx[0]),
        .I4(data9[0]),
        .I5(data9[2]),
        .O(\al_rx_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \al_rx_data[6]_i_1 
       (.I0(\al_rx_data[6]_i_2_n_0 ),
        .I1(\al_rx_data[6]_i_3_n_0 ),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(data9[5]),
        .I4(\al_rx_data[9]_i_5_n_0 ),
        .I5(data9[6]),
        .O(al_rx_data[6]));
  LUT6 #(
    .INIT(64'h000002020000FF00)) 
    \al_rx_data[6]_i_2 
       (.I0(data9[1]),
        .I1(mpx[1]),
        .I2(mpx[0]),
        .I3(\al_rx_data[2]_i_3_n_0 ),
        .I4(mpx[3]),
        .I5(mpx[2]),
        .O(\al_rx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAA0000000000)) 
    \al_rx_data[6]_i_3 
       (.I0(data9[3]),
        .I1(data9[2]),
        .I2(data9[4]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(\al_rx_data[3]_i_4_n_0 ),
        .O(\al_rx_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \al_rx_data[7]_i_1 
       (.I0(\al_rx_data[7]_i_2_n_0 ),
        .I1(\al_rx_data[7]_i_3_n_0 ),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(data9[6]),
        .I4(\al_rx_data[9]_i_5_n_0 ),
        .I5(data9[7]),
        .O(al_rx_data[7]));
  LUT6 #(
    .INIT(64'h000002020000FF00)) 
    \al_rx_data[7]_i_2 
       (.I0(data9[2]),
        .I1(mpx[1]),
        .I2(mpx[0]),
        .I3(\al_rx_data[3]_i_3_n_0 ),
        .I4(mpx[3]),
        .I5(mpx[2]),
        .O(\al_rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAA0000000000)) 
    \al_rx_data[7]_i_3 
       (.I0(data9[4]),
        .I1(data9[3]),
        .I2(data9[5]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(\al_rx_data[3]_i_4_n_0 ),
        .O(\al_rx_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \al_rx_data[8]_i_1 
       (.I0(\al_rx_data[8]_i_2_n_0 ),
        .I1(\al_rx_data[8]_i_3_n_0 ),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(data9[7]),
        .I4(\al_rx_data[9]_i_5_n_0 ),
        .I5(data9[8]),
        .O(al_rx_data[8]));
  LUT6 #(
    .INIT(64'h000002020000FF00)) 
    \al_rx_data[8]_i_2 
       (.I0(data9[3]),
        .I1(mpx[1]),
        .I2(mpx[0]),
        .I3(\al_rx_data[4]_i_4_n_0 ),
        .I4(mpx[3]),
        .I5(mpx[2]),
        .O(\al_rx_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAA0000000000)) 
    \al_rx_data[8]_i_3 
       (.I0(data9[5]),
        .I1(data9[4]),
        .I2(data9[6]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(\al_rx_data[3]_i_4_n_0 ),
        .O(\al_rx_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \al_rx_data[9]_i_1 
       (.I0(\al_rx_data[9]_i_2_n_0 ),
        .I1(\al_rx_data[9]_i_3_n_0 ),
        .I2(\al_rx_data[9]_i_4_n_0 ),
        .I3(data9[8]),
        .I4(\al_rx_data[9]_i_5_n_0 ),
        .I5(data9[9]),
        .O(al_rx_data[9]));
  LUT6 #(
    .INIT(64'h000002020000FF00)) 
    \al_rx_data[9]_i_2 
       (.I0(data9[4]),
        .I1(mpx[1]),
        .I2(mpx[0]),
        .I3(\al_rx_data[5]_i_4_n_0 ),
        .I4(mpx[3]),
        .I5(mpx[2]),
        .O(\al_rx_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAA0000000000)) 
    \al_rx_data[9]_i_3 
       (.I0(data9[6]),
        .I1(data9[5]),
        .I2(data9[7]),
        .I3(mpx[1]),
        .I4(mpx[0]),
        .I5(\al_rx_data[3]_i_4_n_0 ),
        .O(\al_rx_data[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \al_rx_data[9]_i_4 
       (.I0(mpx[3]),
        .I1(mpx[1]),
        .I2(mpx[0]),
        .I3(mpx[2]),
        .O(\al_rx_data[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \al_rx_data[9]_i_5 
       (.I0(mpx[1]),
        .I1(mpx[0]),
        .I2(mpx[2]),
        .I3(mpx[3]),
        .O(\al_rx_data[9]_i_5_n_0 ));
  FDRE \al_rx_data_reg[0] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[0]),
        .Q(rx_data_10b[0]),
        .R(1'b0));
  FDRE \al_rx_data_reg[1] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[1]),
        .Q(rx_data_10b[1]),
        .R(1'b0));
  FDRE \al_rx_data_reg[2] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[2]),
        .Q(rx_data_10b[2]),
        .R(1'b0));
  FDRE \al_rx_data_reg[3] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[3]),
        .Q(rx_data_10b[3]),
        .R(1'b0));
  FDRE \al_rx_data_reg[4] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[4]),
        .Q(rx_data_10b[4]),
        .R(1'b0));
  FDRE \al_rx_data_reg[5] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[5]),
        .Q(rx_data_10b[5]),
        .R(1'b0));
  FDRE \al_rx_data_reg[6] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[6]),
        .Q(rx_data_10b[6]),
        .R(1'b0));
  FDRE \al_rx_data_reg[7] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[7]),
        .Q(rx_data_10b[7]),
        .R(1'b0));
  FDRE \al_rx_data_reg[8] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[8]),
        .Q(rx_data_10b[8]),
        .R(1'b0));
  FDRE \al_rx_data_reg[9] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(al_rx_data[9]),
        .Q(rx_data_10b[9]),
        .R(1'b0));
  CARRY8 bt_val_rawa0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_bt_val_rawa0_carry_CO_UNCONNECTED[7],bt_val_rawa0_carry_n_1,bt_val_rawa0_carry_n_2,bt_val_rawa0_carry_n_3,bt_val_rawa0_carry_n_4,bt_val_rawa0_carry_n_5,bt_val_rawa0_carry_n_6,bt_val_rawa0_carry_n_7}),
        .DI({1'b0,count_in_reg[6:0]}),
        .O({bt_val_rawa0,NLW_bt_val_rawa0_carry_O_UNCONNECTED[0]}),
        .S({bt_val_rawa0_carry_i_1_n_0,bt_val_rawa0_carry_i_2_n_0,bt_val_rawa0_carry_i_3_n_0,bt_val_rawa0_carry_i_4_n_0,bt_val_rawa0_carry_i_5_n_0,bt_val_rawa0_carry_i_6_n_0,bt_val_rawa0_carry_i_7_n_0,bt_val_rawa0_carry_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_1
       (.I0(count_in_reg[7]),
        .I1(temp[7]),
        .O(bt_val_rawa0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_2
       (.I0(count_in_reg[6]),
        .I1(temp[6]),
        .O(bt_val_rawa0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_3
       (.I0(count_in_reg[5]),
        .I1(temp[5]),
        .O(bt_val_rawa0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_4
       (.I0(count_in_reg[4]),
        .I1(temp[4]),
        .O(bt_val_rawa0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_5
       (.I0(count_in_reg[3]),
        .I1(temp[3]),
        .O(bt_val_rawa0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_6
       (.I0(count_in_reg[2]),
        .I1(temp[2]),
        .O(bt_val_rawa0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_7
       (.I0(count_in_reg[1]),
        .I1(temp[1]),
        .O(bt_val_rawa0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bt_val_rawa0_carry_i_8
       (.I0(count_in_reg[0]),
        .I1(temp[0]),
        .O(bt_val_rawa0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h2800)) 
    \bt_val_rawa[7]_i_1 
       (.I0(rxclk_rd_1),
        .I1(rxclk_rd),
        .I2(rxclk_r),
        .I3(phase_reg_n_0),
        .O(bt_val_rawa));
  FDRE \bt_val_rawa_reg[1] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[1]),
        .Q(bt_val[0]),
        .R(local_reset));
  FDRE \bt_val_rawa_reg[2] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[2]),
        .Q(bt_val[1]),
        .R(local_reset));
  FDRE \bt_val_rawa_reg[3] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[3]),
        .Q(bt_val[2]),
        .R(local_reset));
  FDSE \bt_val_rawa_reg[4] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[4]),
        .Q(bt_val[3]),
        .S(local_reset));
  FDRE \bt_val_rawa_reg[5] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[5]),
        .Q(bt_val[4]),
        .R(local_reset));
  FDSE \bt_val_rawa_reg[6] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[6]),
        .Q(bt_val[5]),
        .S(local_reset));
  FDRE \bt_val_rawa_reg[7] 
       (.C(CLK),
        .CE(bt_val_rawa),
        .D(bt_val_rawa0[7]),
        .Q(bt_val[6]),
        .R(local_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    comma_i_1
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\mpx[3]_i_5_n_0 ),
        .I3(\mpx[3]_i_7_n_0 ),
        .I4(sel0[0]),
        .I5(\mpx[3]_i_6_n_0 ),
        .O(comma_i_1_n_0));
  FDRE comma_reg
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(comma_i_1_n_0),
        .Q(comma),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \count_in[0]_i_1 
       (.I0(count_in_reg[0]),
        .I1(phase),
        .O(\count_in[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count_in[1]_i_1 
       (.I0(count_in_reg[1]),
        .I1(phase),
        .I2(count_in_reg[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_in[2]_i_1 
       (.I0(count_in_reg[2]),
        .I1(count_in_reg[0]),
        .I2(phase),
        .I3(count_in_reg[1]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_in[3]_i_1 
       (.I0(count_in_reg[3]),
        .I1(count_in_reg[2]),
        .I2(count_in_reg[0]),
        .I3(phase),
        .I4(count_in_reg[1]),
        .O(\count_in[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF7FFF8000)) 
    \count_in[4]_i_1 
       (.I0(count_in_reg[3]),
        .I1(count_in_reg[1]),
        .I2(count_in_reg[0]),
        .I3(count_in_reg[2]),
        .I4(count_in_reg[4]),
        .I5(phase),
        .O(p_0_in__4[4]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_in[5]_i_1 
       (.I0(count_in_reg[5]),
        .I1(\count_in[8]_i_4_n_0 ),
        .O(p_0_in__4[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_in[6]_i_1 
       (.I0(count_in_reg[6]),
        .I1(\count_in[8]_i_4_n_0 ),
        .I2(count_in_reg[5]),
        .O(p_0_in__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_in[7]_i_1 
       (.I0(count_in_reg[7]),
        .I1(count_in_reg[5]),
        .I2(\count_in[8]_i_4_n_0 ),
        .I3(count_in_reg[6]),
        .O(p_0_in__4[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \count_in[8]_i_2 
       (.I0(small_count_reg[3]),
        .I1(small_count_reg[0]),
        .I2(small_count_reg[1]),
        .I3(small_count_reg[2]),
        .O(rxclk_rd_1));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_in[8]_i_3 
       (.I0(count_in_reg[8]),
        .I1(count_in_reg[7]),
        .I2(count_in_reg[6]),
        .I3(\count_in[8]_i_4_n_0 ),
        .I4(count_in_reg[5]),
        .O(p_0_in__4[8]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \count_in[8]_i_4 
       (.I0(count_in_reg[2]),
        .I1(count_in_reg[0]),
        .I2(count_in_reg[1]),
        .I3(count_in_reg[3]),
        .I4(phase),
        .I5(count_in_reg[4]),
        .O(\count_in[8]_i_4_n_0 ));
  FDRE \count_in_reg[0] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(\count_in[0]_i_1_n_0 ),
        .Q(count_in_reg[0]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[1] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[1]),
        .Q(count_in_reg[1]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[2] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[2]),
        .Q(count_in_reg[2]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[3] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(\count_in[3]_i_1_n_0 ),
        .Q(count_in_reg[3]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[4] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[4]),
        .Q(count_in_reg[4]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[5] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[5]),
        .Q(count_in_reg[5]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[6] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[6]),
        .Q(count_in_reg[6]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[7] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[7]),
        .Q(count_in_reg[7]),
        .R(reset_sync_rxclk_div4_n_4));
  FDRE \count_in_reg[8] 
       (.C(CLK),
        .CE(rxclk_rd_1),
        .D(p_0_in__4[8]),
        .Q(count_in_reg[8]),
        .R(reset_sync_rxclk_div4_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    data_in
       (.I(rxp),
        .IB(rxn),
        .O(rx_data_in_p),
        .OB(rx_data_in_n));
  LUT6 #(
    .INIT(64'hD5DFFFFF15100000)) 
    data_mux_i_1
       (.I0(s_state),
        .I1(m_delay_val_int142_out),
        .I2(s_ovflw12_out),
        .I3(dc_inst_n_10),
        .I4(dc_inst_n_28),
        .I5(dc_inst_n_9),
        .O(data_mux_i_1_n_0));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap dc_inst
       (.CLK(CLK),
        .D(serdesm[3:0]),
        .E(p_18_in),
        .Q(m_delay_val_in),
        .\action_reg[1]_0 (action),
        .data_mux_reg_0(dc_inst_n_9),
        .data_mux_reg_1(data_mux_i_1_n_0),
        .\data_out_reg[3]_0 (mdataoutd),
        .dec_run(dec_run),
        .dec_run_reg_0(dc_inst_n_6),
        .dec_run_reg_1(dec_run_i_1_n_0),
        .delay_change_reg_0(dc_inst_n_5),
        .delay_change_reg_1(delay_change_i_1_n_0),
        .inc_run_reg_0(dc_inst_n_7),
        .inc_run_reg_1(inc_run_i_1_n_0),
        .m_delay_val_int142_out(m_delay_val_int142_out),
        .\m_delay_val_int_reg[1]_0 (dc_inst_n_26),
        .\m_delay_val_int_reg[1]_1 (reset_sync_rxclk_div4_n_5),
        .\m_delay_val_int_reg[5]_0 (bt_val),
        .meq_max(meq_max),
        .meq_min_reg_0(dc_inst_n_3),
        .mload(mload),
        .\msxor_ctd_reg[1]_0 (msxor_ctd),
        .\msxor_cti_reg[1]_0 (msxor_cti),
        .pd_max(pd_max),
        .pd_min(pd_min),
        .pd_min_reg_0(dc_inst_n_10),
        .reset_out(local_reset),
        .\s_delay_val_int_reg[6]_0 (s_delay_val_in),
        .s_ovflw1(s_ovflw1),
        .s_ovflw12_out(s_ovflw12_out),
        .\s_state_reg[1]_0 (dc_inst_n_28),
        .\s_state_reg[2]_0 (dc_inst_n_27),
        .\s_state_reg[2]_1 (dc_inst_n_30),
        .\s_state_reg[3]_0 (s_state),
        .\s_state_reg[3]_1 (dc_inst_n_29),
        .\sdataouta_reg[3]_0 (sdataout),
        .\sdataoutc_reg[3]_0 (serdess[0]),
        .sload(sload),
        .sload_reg_0(sload_i_2_n_0),
        .upd_flag_reg_0(dc_inst_n_4),
        .upd_flag_reg_1(upd_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCCCA8CCCCCCCCCC)) 
    dec_run_i_1
       (.I0(dec_run),
        .I1(dc_inst_n_6),
        .I2(dc_inst_n_3),
        .I3(s_ovflw1),
        .I4(s_ovflw12_out),
        .I5(dc_inst_n_29),
        .O(dec_run_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFFEE)) 
    delay_change_i_1
       (.I0(pd_max),
        .I1(dc_inst_n_7),
        .I2(dc_inst_n_4),
        .I3(dc_inst_n_6),
        .I4(dc_inst_n_5),
        .I5(pd_min),
        .O(delay_change_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF55EE8850F5AAFF)) 
    \dout_i[5]_i_1 
       (.I0(rx_data_10b[9]),
        .I1(\dout_i[7]_i_2_n_0 ),
        .I2(\dout_i[7]_i_3_n_0 ),
        .I3(rx_data_10b[8]),
        .I4(rx_data_10b[6]),
        .I5(rx_data_10b[7]),
        .O(b3[5]));
  LUT6 #(
    .INIT(64'hFF55EE8850F5AAFF)) 
    \dout_i[6]_i_1 
       (.I0(rx_data_10b[9]),
        .I1(\dout_i[7]_i_3_n_0 ),
        .I2(\dout_i[7]_i_2_n_0 ),
        .I3(rx_data_10b[8]),
        .I4(rx_data_10b[6]),
        .I5(rx_data_10b[7]),
        .O(b3[6]));
  LUT6 #(
    .INIT(64'hFFFCCC883033BBFF)) 
    \dout_i[7]_i_1 
       (.I0(\dout_i[7]_i_2_n_0 ),
        .I1(rx_data_10b[9]),
        .I2(\dout_i[7]_i_3_n_0 ),
        .I3(rx_data_10b[6]),
        .I4(rx_data_10b[8]),
        .I5(rx_data_10b[7]),
        .O(b3[7]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \dout_i[7]_i_2 
       (.I0(rx_data_10b[4]),
        .I1(rx_data_10b[2]),
        .I2(rx_data_10b[3]),
        .I3(rx_data_10b[5]),
        .O(\dout_i[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dout_i[7]_i_3 
       (.I0(rx_data_10b[4]),
        .I1(rx_data_10b[3]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[5]),
        .O(\dout_i[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEDA3C33DAAABADB7)) 
    g0_b0
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(out[0]));
  LUT6 #(
    .INIT(64'h010101170117177F)) 
    g0_b0__0
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'hEDA5A55BCCCDCDB7)) 
    g0_b1
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hFEE8E880E8808080)) 
    g0_b1__0
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'hFDB19967F0F1E5BF)) 
    g0_b2
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h0100000000000080)) 
    g0_b2__0
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'hFCA99697FF01FD3F)) 
    g0_b3
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(out[3]));
  LUT6 #(
    .INIT(64'hF8FF8117FEE9971F)) 
    g0_b4
       (.I0(rx_data_10b[0]),
        .I1(rx_data_10b[1]),
        .I2(rx_data_10b[2]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[4]),
        .I5(rx_data_10b[5]),
        .O(out[4]));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10 gb0
       (.CLK(CLK),
        .Q(dataout),
        .\loop0[0].dataout_reg[3]_0 (mdataoutd),
        .\loop0[0].dataout_reg[9]_0 (\loop0[0].dataout_reg[9] ),
        .reset_out(local_reset));
  LUT6 #(
    .INIT(64'hF88080018001011F)) 
    \gcerr.code_err_i_10 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[4]),
        .I2(rx_data_10b[0]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[1]),
        .I5(rx_data_10b[2]),
        .O(\gcerr.code_err_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF88181179117177F)) 
    \gcerr.code_err_i_11 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[4]),
        .I2(rx_data_10b[0]),
        .I3(rx_data_10b[2]),
        .I4(rx_data_10b[1]),
        .I5(rx_data_10b[3]),
        .O(\gcerr.code_err_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E881E881891F)) 
    \gcerr.code_err_i_12 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[4]),
        .I2(rx_data_10b[0]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[1]),
        .I5(rx_data_10b[2]),
        .O(\gcerr.code_err_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE8818917D557577F)) 
    \gcerr.code_err_i_13 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[2]),
        .I2(rx_data_10b[1]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[0]),
        .I5(rx_data_10b[4]),
        .O(\gcerr.code_err_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \gcerr.code_err_i_2 
       (.I0(\gcerr.code_err_i_4_n_0 ),
        .I1(rx_data_10b[8]),
        .I2(\gcerr.code_err_i_5_n_0 ),
        .I3(rx_data_10b[7]),
        .I4(\gcerr.code_err_i_6_n_0 ),
        .I5(rx_data_10b[6]),
        .O(\gcerr.code_err_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \gcerr.code_err_i_3 
       (.I0(\gcerr.code_err_i_7_n_0 ),
        .I1(rx_data_10b[6]),
        .I2(rx_data_10b[7]),
        .I3(\gcerr.code_err_i_5_n_0 ),
        .I4(rx_data_10b[8]),
        .I5(\gcerr.code_err_i_8_n_0 ),
        .O(\gcerr.code_err_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \gcerr.code_err_i_4 
       (.I0(\gcerr.code_err_i_9_n_0 ),
        .I1(rx_data_10b[7]),
        .I2(\gcerr.code_err_i_10_n_0 ),
        .I3(rx_data_10b[6]),
        .I4(\gcerr.code_err_i_11_n_0 ),
        .O(\gcerr.code_err_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gcerr.code_err_i_5 
       (.I0(\gcerr.code_err_i_12_n_0 ),
        .I1(rx_data_10b[6]),
        .I2(\gcerr.code_err_i_11_n_0 ),
        .O(\gcerr.code_err_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAAFA7FFBFFFFFFF)) 
    \gcerr.code_err_i_6 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[4]),
        .I2(rx_data_10b[0]),
        .I3(rx_data_10b[2]),
        .I4(rx_data_10b[1]),
        .I5(rx_data_10b[3]),
        .O(\gcerr.code_err_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDD7FFFDFD97)) 
    \gcerr.code_err_i_7 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[0]),
        .I2(rx_data_10b[1]),
        .I3(rx_data_10b[2]),
        .I4(rx_data_10b[3]),
        .I5(rx_data_10b[4]),
        .O(\gcerr.code_err_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \gcerr.code_err_i_8 
       (.I0(\gcerr.code_err_i_12_n_0 ),
        .I1(rx_data_10b[7]),
        .I2(\gcerr.code_err_i_10_n_0 ),
        .I3(rx_data_10b[6]),
        .I4(\gcerr.code_err_i_13_n_0 ),
        .O(\gcerr.code_err_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E889E899899F)) 
    \gcerr.code_err_i_9 
       (.I0(rx_data_10b[5]),
        .I1(rx_data_10b[4]),
        .I2(rx_data_10b[0]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[1]),
        .I5(rx_data_10b[2]),
        .O(\gcerr.code_err_i_9_n_0 ));
  MUXF7 \gcerr.code_err_reg_i_1 
       (.I0(\gcerr.code_err_i_2_n_0 ),
        .I1(\gcerr.code_err_i_3_n_0 ),
        .O(code_err_i),
        .S(rx_data_10b[9]));
  LUT6 #(
    .INIT(64'h55555555A9818115)) 
    \gdeni.disp_err_i_4 
       (.I0(g0_b1__0_n_0),
        .I1(rx_data_10b[7]),
        .I2(rx_data_10b[6]),
        .I3(rx_data_10b[8]),
        .I4(rx_data_10b[9]),
        .I5(g0_b0__0_n_0),
        .O(\gdeni.disp_err_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF11170000)) 
    \gdeni.disp_err_i_5 
       (.I0(rx_data_10b[7]),
        .I1(rx_data_10b[6]),
        .I2(rx_data_10b[8]),
        .I3(rx_data_10b[9]),
        .I4(g0_b1__0_n_0),
        .I5(g0_b0__0_n_0),
        .O(\gdeni.disp_err_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3333322632262666)) 
    \gdeni.disp_err_i_6 
       (.I0(g0_b1__0_n_0),
        .I1(g0_b0__0_n_0),
        .I2(rx_data_10b[8]),
        .I3(rx_data_10b[9]),
        .I4(rx_data_10b[7]),
        .I5(rx_data_10b[6]),
        .O(\gdeni.disp_err_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h54404040AAAAAAAA)) 
    \gdeni.disp_err_i_7 
       (.I0(g0_b1__0_n_0),
        .I1(rx_data_10b[6]),
        .I2(rx_data_10b[7]),
        .I3(rx_data_10b[9]),
        .I4(rx_data_10b[8]),
        .I5(g0_b0__0_n_0),
        .O(\gdeni.disp_err_i_7_n_0 ));
  MUXF8 \gdeni.disp_err_reg_i_1 
       (.I0(\gdeni.disp_err_reg_i_2_n_0 ),
        .I1(\gdeni.disp_err_reg_i_3_n_0 ),
        .O(\grdni.run_disp_i_reg_0 ),
        .S(rxrundisp));
  MUXF7 \gdeni.disp_err_reg_i_2 
       (.I0(\gdeni.disp_err_i_4_n_0 ),
        .I1(\gdeni.disp_err_i_5_n_0 ),
        .O(\gdeni.disp_err_reg_i_2_n_0 ),
        .S(g0_b2__0_n_0));
  MUXF7 \gdeni.disp_err_reg_i_3 
       (.I0(\gdeni.disp_err_i_6_n_0 ),
        .I1(\gdeni.disp_err_i_7_n_0 ),
        .O(\gdeni.disp_err_reg_i_3_n_0 ),
        .S(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h00FCF3310030C020)) 
    \grdni.run_disp_i_i_1 
       (.I0(rxrundisp),
        .I1(g0_b2__0_n_0),
        .I2(\grdni.run_disp_i_i_2_n_0 ),
        .I3(g0_b0__0_n_0),
        .I4(g0_b1__0_n_0),
        .I5(\grdni.run_disp_i_i_3_n_0 ),
        .O(\grdni.run_disp_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hFEA8)) 
    \grdni.run_disp_i_i_2 
       (.I0(rx_data_10b[9]),
        .I1(rx_data_10b[6]),
        .I2(rx_data_10b[7]),
        .I3(rx_data_10b[8]),
        .O(\grdni.run_disp_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \grdni.run_disp_i_i_3 
       (.I0(rx_data_10b[9]),
        .I1(rx_data_10b[6]),
        .I2(rx_data_10b[7]),
        .I3(rx_data_10b[8]),
        .O(\grdni.run_disp_i_i_3_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDELAYE3 #(
    .CASCADE("MASTER"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("DATAIN"),
    .DELAY_TYPE("VAR_LOAD"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(312.500000),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    idelay_cal
       (.CASC_IN(1'b0),
        .CASC_OUT(rxclk_idelay_out),
        .CASC_RETURN(rxclk_from_odelay),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN(count_in_reg),
        .CNTVALUEOUT(NLW_idelay_cal_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAIN(\mdataouta_reg[3] ),
        .DATAOUT(rxclk_int),
        .EN_VTC(1'b0),
        .IDATAIN(1'b0),
        .INC(1'b0),
        .LOAD(1'b1),
        .RST(reset_sync));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("VAR_LOAD"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(312.500000),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    idelay_m
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_idelay_m_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_idelay_m_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({m_delay_val_in,1'b0,1'b0}),
        .CNTVALUEOUT(m_delay_val_out),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_in_md),
        .EN_VTC(1'b0),
        .IDATAIN(rx_data_in_p),
        .INC(1'b0),
        .LOAD(mload),
        .RST(reset_sync));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  IDELAYE3 #(
    .CASCADE("NONE"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_SRC("IDATAIN"),
    .DELAY_TYPE("VAR_LOAD"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOOPBACK("FALSE"),
    .REFCLK_FREQUENCY(312.500000),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    idelay_s
       (.CASC_IN(1'b0),
        .CASC_OUT(NLW_idelay_s_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(NLW_idelay_s_CASC_RETURN_UNCONNECTED),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN({s_delay_val_in,1'b0,1'b0}),
        .CNTVALUEOUT(s_delay_val_out),
        .DATAIN(1'b0),
        .DATAOUT(rx_data_in_sd),
        .EN_VTC(1'b0),
        .IDATAIN(rx_data_in_n),
        .INC(1'b0),
        .LOAD(sload),
        .RST(reset_sync));
  LUT6 #(
    .INIT(64'hBBBB0800BBBB0000)) 
    inc_run_i_1
       (.I0(dec_run),
        .I1(dc_inst_n_29),
        .I2(dc_inst_n_5),
        .I3(pd_max),
        .I4(dc_inst_n_7),
        .I5(meq_max),
        .O(inc_run_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE3 #(
    .DATA_WIDTH(4),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("FALSE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000)) 
    iserdes_m
       (.CLK(\mdataouta_reg[3] ),
        .CLKDIV(CLK),
        .CLK_B(not_rxclk),
        .D(rx_data_in_md),
        .FIFO_EMPTY(NLW_iserdes_m_FIFO_EMPTY_UNCONNECTED),
        .FIFO_RD_CLK(1'b0),
        .FIFO_RD_EN(1'b0),
        .INTERNAL_DIVCLK(NLW_iserdes_m_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(serdesm),
        .RST(local_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE3 #(
    .DATA_WIDTH(4),
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .FIFO_ENABLE("FALSE"),
    .FIFO_SYNC_MODE("FALSE"),
    .IDDR_MODE("FALSE"),
    .IS_CLK_B_INVERTED(1'b1),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000)) 
    iserdes_s
       (.CLK(\mdataouta_reg[3] ),
        .CLKDIV(CLK),
        .CLK_B(not_rxclk),
        .D(rx_data_in_sd),
        .FIFO_EMPTY(NLW_iserdes_s_FIFO_EMPTY_UNCONNECTED),
        .FIFO_RD_CLK(1'b0),
        .FIFO_RD_EN(1'b0),
        .INTERNAL_DIVCLK(NLW_iserdes_s_INTERNAL_DIVCLK_UNCONNECTED),
        .Q(serdess),
        .RST(local_reset));
  LUT6 #(
    .INIT(64'hF10101010000000F)) 
    kout_i_i_2
       (.I0(rx_data_10b[8]),
        .I1(rx_data_10b[7]),
        .I2(rx_data_10b[5]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[2]),
        .I5(rx_data_10b[4]),
        .O(kout_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hF00000008080808F)) 
    kout_i_i_3
       (.I0(rx_data_10b[7]),
        .I1(rx_data_10b[8]),
        .I2(rx_data_10b[5]),
        .I3(rx_data_10b[3]),
        .I4(rx_data_10b[2]),
        .I5(rx_data_10b[4]),
        .O(kout_i_i_3_n_0));
  MUXF7 kout_i_reg_i_1
       (.I0(kout_i_i_2_n_0),
        .I1(kout_i_i_3_n_0),
        .O(k),
        .S(rx_data_10b[9]));
  LUT6 #(
    .INIT(64'h0E0E0E0E0F0F0E0F)) 
    \mpx[0]_i_1 
       (.I0(\mpx[0]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\mpx[0]_i_4_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\mpx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mpx[0]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[7]),
        .O(\mpx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[0]_i_3 
       (.I0(\mpx[0]_i_5_n_0 ),
        .I1(data9[5]),
        .I2(data9[4]),
        .O(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hAAEFAAEE)) 
    \mpx[0]_i_4 
       (.I0(sel0[8]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[4]),
        .O(\mpx[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[0]_i_5 
       (.I0(\mpx[0]_i_6_n_0 ),
        .I1(\mpx[0]_i_7_n_0 ),
        .I2(data9[2]),
        .I3(data9[3]),
        .I4(data9[1]),
        .I5(data9[0]),
        .O(\mpx[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[0]_i_6 
       (.I0(\rxdh_reg_n_0_[6] ),
        .I1(\rxdh_reg_n_0_[5] ),
        .I2(\rxdh_reg_n_0_[8] ),
        .I3(\rxdh_reg_n_0_[7] ),
        .O(\mpx[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[0]_i_7 
       (.I0(\rxdh_reg_n_0_[6] ),
        .I1(\rxdh_reg_n_0_[5] ),
        .I2(\rxdh_reg_n_0_[8] ),
        .I3(\rxdh_reg_n_0_[7] ),
        .O(\mpx[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000EEEE0000FFFE)) 
    \mpx[1]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\mpx[1]_i_4_n_0 ),
        .I5(\mpx[3]_i_5_n_0 ),
        .O(\mpx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[1]_i_10 
       (.I0(\rxdh_reg_n_0_[3] ),
        .I1(\rxdh_reg_n_0_[2] ),
        .I2(\rxdh_reg_n_0_[5] ),
        .I3(\rxdh_reg_n_0_[4] ),
        .O(\mpx[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[1]_i_11 
       (.I0(\rxdh_reg_n_0_[4] ),
        .I1(\rxdh_reg_n_0_[3] ),
        .I2(\rxdh_reg_n_0_[6] ),
        .I3(\rxdh_reg_n_0_[5] ),
        .O(\mpx[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[1]_i_12 
       (.I0(\rxdh_reg_n_0_[4] ),
        .I1(\rxdh_reg_n_0_[3] ),
        .I2(\rxdh_reg_n_0_[6] ),
        .I3(\rxdh_reg_n_0_[5] ),
        .O(\mpx[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0C000000000000A0)) 
    \mpx[1]_i_13 
       (.I0(\mpx[1]_i_15_n_0 ),
        .I1(\mpx[1]_i_16_n_0 ),
        .I2(\rxdh_reg_n_0_[7] ),
        .I3(\rxdh_reg_n_0_[6] ),
        .I4(\rxdh_reg_n_0_[5] ),
        .I5(\rxdh_reg_n_0_[4] ),
        .O(\mpx[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0C000000000000A0)) 
    \mpx[1]_i_14 
       (.I0(\mpx[1]_i_17_n_0 ),
        .I1(\mpx[1]_i_18_n_0 ),
        .I2(\rxdh_reg_n_0_[8] ),
        .I3(\rxdh_reg_n_0_[7] ),
        .I4(\rxdh_reg_n_0_[6] ),
        .I5(\rxdh_reg_n_0_[5] ),
        .O(\mpx[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[1]_i_15 
       (.I0(\rxdh_reg_n_0_[1] ),
        .I1(\rxdh_reg_n_0_[0] ),
        .I2(\rxdh_reg_n_0_[3] ),
        .I3(\rxdh_reg_n_0_[2] ),
        .O(\mpx[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[1]_i_16 
       (.I0(\rxdh_reg_n_0_[1] ),
        .I1(\rxdh_reg_n_0_[0] ),
        .I2(\rxdh_reg_n_0_[3] ),
        .I3(\rxdh_reg_n_0_[2] ),
        .O(\mpx[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[1]_i_17 
       (.I0(\rxdh_reg_n_0_[2] ),
        .I1(\rxdh_reg_n_0_[1] ),
        .I2(\rxdh_reg_n_0_[4] ),
        .I3(\rxdh_reg_n_0_[3] ),
        .O(\mpx[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[1]_i_18 
       (.I0(\rxdh_reg_n_0_[2] ),
        .I1(\rxdh_reg_n_0_[1] ),
        .I2(\rxdh_reg_n_0_[4] ),
        .I3(\rxdh_reg_n_0_[3] ),
        .O(\mpx[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[1]_i_2 
       (.I0(\mpx[1]_i_5_n_0 ),
        .I1(data9[2]),
        .I2(data9[1]),
        .O(sel0[6]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[1]_i_3 
       (.I0(\mpx[1]_i_6_n_0 ),
        .I1(data9[3]),
        .I2(data9[2]),
        .O(sel0[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mpx[1]_i_4 
       (.I0(sel0[8]),
        .I1(sel0[7]),
        .O(\mpx[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[1]_i_5 
       (.I0(\mpx[1]_i_9_n_0 ),
        .I1(\mpx[1]_i_10_n_0 ),
        .I2(\rxdh_reg_n_0_[8] ),
        .I3(data9[0]),
        .I4(\rxdh_reg_n_0_[7] ),
        .I5(\rxdh_reg_n_0_[6] ),
        .O(\mpx[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[1]_i_6 
       (.I0(\mpx[1]_i_11_n_0 ),
        .I1(\mpx[1]_i_12_n_0 ),
        .I2(data9[0]),
        .I3(data9[1]),
        .I4(\rxdh_reg_n_0_[8] ),
        .I5(\rxdh_reg_n_0_[7] ),
        .O(\mpx[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[1]_i_7 
       (.I0(\mpx[1]_i_13_n_0 ),
        .I1(data9[0]),
        .I2(\rxdh_reg_n_0_[8] ),
        .O(sel0[8]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[1]_i_8 
       (.I0(\mpx[1]_i_14_n_0 ),
        .I1(data9[1]),
        .I2(data9[0]),
        .O(sel0[7]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[1]_i_9 
       (.I0(\rxdh_reg_n_0_[3] ),
        .I1(\rxdh_reg_n_0_[2] ),
        .I2(\rxdh_reg_n_0_[5] ),
        .I3(\rxdh_reg_n_0_[4] ),
        .O(\mpx[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \mpx[2]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\mpx[3]_i_5_n_0 ),
        .I3(\mpx[3]_i_7_n_0 ),
        .O(\mpx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mpx[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\mpx[3]_i_5_n_0 ),
        .I3(\mpx[3]_i_6_n_0 ),
        .I4(\mpx[3]_i_7_n_0 ),
        .I5(sel0[0]),
        .O(mpx0));
  LUT6 #(
    .INIT(64'h0C000000000000A0)) 
    \mpx[3]_i_10 
       (.I0(\mpx[3]_i_16_n_0 ),
        .I1(\mpx[3]_i_17_n_0 ),
        .I2(data9[5]),
        .I3(data9[4]),
        .I4(data9[3]),
        .I5(data9[2]),
        .O(\mpx[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[3]_i_11 
       (.I0(\mpx[3]_i_18_n_0 ),
        .I1(data9[4]),
        .I2(data9[3]),
        .O(sel0[4]));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[3]_i_12 
       (.I0(\mpx[3]_i_19_n_0 ),
        .I1(\mpx[3]_i_20_n_0 ),
        .I2(data9[6]),
        .I3(data9[7]),
        .I4(data9[5]),
        .I5(data9[4]),
        .O(\mpx[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0C000000000000A0)) 
    \mpx[3]_i_13 
       (.I0(\mpx[3]_i_21_n_0 ),
        .I1(\mpx[3]_i_22_n_0 ),
        .I2(data9[6]),
        .I3(data9[5]),
        .I4(data9[4]),
        .I5(data9[3]),
        .O(\mpx[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[3]_i_14 
       (.I0(\rxdh_reg_n_0_[7] ),
        .I1(\rxdh_reg_n_0_[6] ),
        .I2(data9[0]),
        .I3(\rxdh_reg_n_0_[8] ),
        .O(\mpx[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[3]_i_15 
       (.I0(\rxdh_reg_n_0_[7] ),
        .I1(\rxdh_reg_n_0_[6] ),
        .I2(data9[0]),
        .I3(\rxdh_reg_n_0_[8] ),
        .O(\mpx[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[3]_i_16 
       (.I0(\rxdh_reg_n_0_[8] ),
        .I1(\rxdh_reg_n_0_[7] ),
        .I2(data9[1]),
        .I3(data9[0]),
        .O(\mpx[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[3]_i_17 
       (.I0(\rxdh_reg_n_0_[8] ),
        .I1(\rxdh_reg_n_0_[7] ),
        .I2(data9[1]),
        .I3(data9[0]),
        .O(\mpx[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[3]_i_18 
       (.I0(\mpx[3]_i_23_n_0 ),
        .I1(\mpx[3]_i_24_n_0 ),
        .I2(data9[1]),
        .I3(data9[2]),
        .I4(data9[0]),
        .I5(\rxdh_reg_n_0_[8] ),
        .O(\mpx[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[3]_i_19 
       (.I0(data9[1]),
        .I1(data9[0]),
        .I2(data9[3]),
        .I3(data9[2]),
        .O(\mpx[3]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \mpx[3]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\mpx[3]_i_5_n_0 ),
        .I3(\mpx[3]_i_7_n_0 ),
        .O(\mpx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[3]_i_20 
       (.I0(data9[1]),
        .I1(data9[0]),
        .I2(data9[3]),
        .I3(data9[2]),
        .O(\mpx[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[3]_i_21 
       (.I0(data9[0]),
        .I1(\rxdh_reg_n_0_[8] ),
        .I2(data9[2]),
        .I3(data9[1]),
        .O(\mpx[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[3]_i_22 
       (.I0(data9[0]),
        .I1(\rxdh_reg_n_0_[8] ),
        .I2(data9[2]),
        .I3(data9[1]),
        .O(\mpx[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mpx[3]_i_23 
       (.I0(\rxdh_reg_n_0_[5] ),
        .I1(\rxdh_reg_n_0_[4] ),
        .I2(\rxdh_reg_n_0_[7] ),
        .I3(\rxdh_reg_n_0_[6] ),
        .O(\mpx[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mpx[3]_i_24 
       (.I0(\rxdh_reg_n_0_[5] ),
        .I1(\rxdh_reg_n_0_[4] ),
        .I2(\rxdh_reg_n_0_[7] ),
        .I3(\rxdh_reg_n_0_[6] ),
        .O(\mpx[3]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[3]_i_3 
       (.I0(\mpx[3]_i_9_n_0 ),
        .I1(data9[6]),
        .I2(data9[5]),
        .O(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[3]_i_4 
       (.I0(\mpx[3]_i_10_n_0 ),
        .I1(data9[7]),
        .I2(data9[6]),
        .O(sel0[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \mpx[3]_i_5 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .O(\mpx[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[3]_i_6 
       (.I0(\mpx[3]_i_12_n_0 ),
        .I1(data9[9]),
        .I2(data9[8]),
        .O(\mpx[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mpx[3]_i_7 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(\mpx[1]_i_4_n_0 ),
        .O(\mpx[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mpx[3]_i_8 
       (.I0(\mpx[3]_i_13_n_0 ),
        .I1(data9[8]),
        .I2(data9[7]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \mpx[3]_i_9 
       (.I0(\mpx[3]_i_14_n_0 ),
        .I1(\mpx[3]_i_15_n_0 ),
        .I2(data9[3]),
        .I3(data9[4]),
        .I4(data9[2]),
        .I5(data9[1]),
        .O(\mpx[3]_i_9_n_0 ));
  FDRE \mpx_reg[0] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(mpx0),
        .D(\mpx[0]_i_1_n_0 ),
        .Q(mpx[0]),
        .R(1'b0));
  FDRE \mpx_reg[1] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(mpx0),
        .D(\mpx[1]_i_1_n_0 ),
        .Q(mpx[1]),
        .R(1'b0));
  FDRE \mpx_reg[2] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(mpx0),
        .D(\mpx[2]_i_1_n_0 ),
        .Q(mpx[2]),
        .R(1'b0));
  FDRE \mpx_reg[3] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(mpx0),
        .D(\mpx[3]_i_2_n_0 ),
        .Q(mpx[3]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ODELAYE3 #(
    .CASCADE("SLAVE_END"),
    .DELAY_FORMAT("COUNT"),
    .DELAY_TYPE("VAR_LOAD"),
    .DELAY_VALUE(0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(312.500000),
    .SIM_DEVICE("ULTRASCALE"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC")) 
    odelay_cal
       (.CASC_IN(rxclk_idelay_out),
        .CASC_OUT(NLW_odelay_cal_CASC_OUT_UNCONNECTED),
        .CASC_RETURN(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .CNTVALUEIN(count_in_reg),
        .CNTVALUEOUT(NLW_odelay_cal_CNTVALUEOUT_UNCONNECTED[8:0]),
        .DATAOUT(rxclk_from_odelay),
        .EN_VTC(1'b0),
        .INC(1'b0),
        .LOAD(1'b1),
        .ODATAIN(NLW_odelay_cal_ODATAIN_UNCONNECTED),
        .RST(reset_sync));
  LUT5 #(
    .INIT(32'hF8D8D8F8)) 
    phase_i_1
       (.I0(rxclk_rd_1),
        .I1(phase),
        .I2(phase_reg_n_0),
        .I3(rxclk_r),
        .I4(rxclk_rd),
        .O(phase_i_1_n_0));
  FDRE phase_reg
       (.C(CLK),
        .CE(1'b1),
        .D(phase_i_1_n_0),
        .Q(phase_reg_n_0),
        .R(local_reset));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3 reset_rxclk_div4
       (.CLK(CLK),
        .reset_out(reset_sync_2),
        .reset_sync6_0(reset_sync));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 reset_rxclk_div4_1
       (.CLK(CLK),
        .reset_in(reset_in),
        .reset_out(reset_sync_1));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 reset_rxclk_div4_2
       (.CLK(CLK),
        .reset_out(reset_sync_1),
        .reset_sync6_0(reset_sync_2));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6 reset_sync_rxclk_div4
       (.CLK(CLK),
        .E(temp_0),
        .Q(small_count_reg),
        .SR(reset_sync_rxclk_div4_n_4),
        .\bt_val_rawa_reg[3] (reset_sync_rxclk_div4_n_5),
        .\count_in_reg[0] (phase_reg_n_0),
        .\m_delay_val_int_reg[1] (bt_val[2]),
        .\m_delay_val_int_reg[1]_0 (dc_inst_n_26),
        .phase(phase),
        .reset_in(reset_in),
        .reset_out(local_reset),
        .reset_sync6_0(p_18_in),
        .rxclk_int(rxclk_int),
        .rxclk_r(rxclk_r),
        .rxclk_r_reg(reset_sync_rxclk_div4_n_0),
        .rxclk_r_reg_0(reset_sync_rxclk_div4_n_2),
        .rxclk_rd(rxclk_rd),
        .rxclk_rd_1(rxclk_rd_1));
  FDRE rxclk_r_reg
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_rxclk_div4_n_0),
        .Q(rxclk_r),
        .R(1'b0));
  FDRE rxclk_rd_reg
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_rxclk_div4_n_2),
        .Q(rxclk_rd),
        .R(1'b0));
  FDRE \rxdh_reg[0] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[1]),
        .Q(\rxdh_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rxdh_reg[10] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[0]),
        .Q(data9[1]),
        .R(1'b0));
  FDRE \rxdh_reg[11] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[1]),
        .Q(data9[2]),
        .R(1'b0));
  FDRE \rxdh_reg[12] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[2]),
        .Q(data9[3]),
        .R(1'b0));
  FDRE \rxdh_reg[13] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[3]),
        .Q(data9[4]),
        .R(1'b0));
  FDRE \rxdh_reg[14] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[4]),
        .Q(data9[5]),
        .R(1'b0));
  FDRE \rxdh_reg[15] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[5]),
        .Q(data9[6]),
        .R(1'b0));
  FDRE \rxdh_reg[16] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[6]),
        .Q(data9[7]),
        .R(1'b0));
  FDRE \rxdh_reg[17] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[7]),
        .Q(data9[8]),
        .R(1'b0));
  FDRE \rxdh_reg[18] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[8]),
        .Q(data9[9]),
        .R(1'b0));
  FDRE \rxdh_reg[19] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(dataout[9]),
        .Q(\rxdh_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rxdh_reg[1] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[2]),
        .Q(\rxdh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rxdh_reg[2] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[3]),
        .Q(\rxdh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rxdh_reg[3] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[4]),
        .Q(\rxdh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rxdh_reg[4] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[5]),
        .Q(\rxdh_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rxdh_reg[5] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[6]),
        .Q(\rxdh_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rxdh_reg[6] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[7]),
        .Q(\rxdh_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rxdh_reg[7] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[8]),
        .Q(\rxdh_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rxdh_reg[8] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(data9[9]),
        .Q(\rxdh_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rxdh_reg[9] 
       (.C(\loop0[0].dataout_reg[9] ),
        .CE(1'b1),
        .D(\rxdh_reg_n_0_[19] ),
        .Q(data9[0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sdataouta[0]_i_1 
       (.I0(serdess[0]),
        .O(sdataout[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \sdataouta[1]_i_1 
       (.I0(serdess[1]),
        .O(sdataout[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sdataouta[2]_i_1 
       (.I0(serdess[2]),
        .O(sdataout[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \sdataouta[3]_i_1 
       (.I0(serdess[3]),
        .O(sdataout[3]));
  LUT6 #(
    .INIT(64'h00AA00AAA8A8FFFF)) 
    sload_i_2
       (.I0(dc_inst_n_30),
        .I1(dc_inst_n_3),
        .I2(dc_inst_n_6),
        .I3(m_delay_val_int142_out),
        .I4(s_ovflw1),
        .I5(s_ovflw12_out),
        .O(sload_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \small_count[0]_i_1 
       (.I0(small_count_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \small_count[1]_i_1 
       (.I0(small_count_reg[0]),
        .I1(small_count_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \small_count[2]_i_1 
       (.I0(small_count_reg[2]),
        .I1(small_count_reg[1]),
        .I2(small_count_reg[0]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \small_count[3]_i_1 
       (.I0(small_count_reg[3]),
        .I1(small_count_reg[0]),
        .I2(small_count_reg[1]),
        .I3(small_count_reg[2]),
        .O(p_0_in__3[3]));
  FDRE \small_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[0]),
        .Q(small_count_reg[0]),
        .R(local_reset));
  FDRE \small_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[1]),
        .Q(small_count_reg[1]),
        .R(local_reset));
  FDRE \small_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[2]),
        .Q(small_count_reg[2]),
        .R(local_reset));
  FDRE \small_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[3]),
        .Q(small_count_reg[3]),
        .R(local_reset));
  LUT5 #(
    .INIT(32'h00000DD0)) 
    \temp[7]_i_2 
       (.I0(\temp[7]_i_3_n_0 ),
        .I1(\temp[7]_i_4_n_0 ),
        .I2(rxclk_rd),
        .I3(rxclk_r),
        .I4(phase_reg_n_0),
        .O(phase));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \temp[7]_i_3 
       (.I0(count_in_reg[1]),
        .I1(count_in_reg[2]),
        .I2(count_in_reg[0]),
        .I3(count_in_reg[3]),
        .O(\temp[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp[7]_i_4 
       (.I0(count_in_reg[8]),
        .I1(count_in_reg[5]),
        .I2(count_in_reg[6]),
        .I3(count_in_reg[7]),
        .I4(count_in_reg[4]),
        .O(\temp[7]_i_4_n_0 ));
  FDRE \temp_reg[0] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[0]),
        .Q(temp[0]),
        .R(1'b0));
  FDRE \temp_reg[1] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[1]),
        .Q(temp[1]),
        .R(1'b0));
  FDRE \temp_reg[2] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[2]),
        .Q(temp[2]),
        .R(1'b0));
  FDRE \temp_reg[3] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[3]),
        .Q(temp[3]),
        .R(1'b0));
  FDRE \temp_reg[4] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[4]),
        .Q(temp[4]),
        .R(1'b0));
  FDRE \temp_reg[5] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[5]),
        .Q(temp[5]),
        .R(1'b0));
  FDRE \temp_reg[6] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[6]),
        .Q(temp[6]),
        .R(1'b0));
  FDRE \temp_reg[7] 
       (.C(CLK),
        .CE(temp_0),
        .D(count_in_reg[7]),
        .Q(temp[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3733373705000505)) 
    upd_flag_i_1
       (.I0(s_ovflw12_out),
        .I1(dc_inst_n_27),
        .I2(dc_inst_n_6),
        .I3(dc_inst_n_5),
        .I4(pd_min),
        .I5(dc_inst_n_4),
        .O(upd_flag_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sgmii_adapt" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt
   (sgmii_clk_r,
    sgmii_clk_en_reg,
    gmii_rx_dv_out_reg,
    gmii_rx_er_out_reg,
    gmii_tx_en,
    gmii_tx_er,
    sgmii_clk_f,
    gmii_rxd,
    Q,
    gmii_tx_en_out_reg,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_tx_en_out_reg_0,
    gmii_tx_er_out_reg,
    reset_in,
    speed_is_10_100,
    speed_is_100,
    D,
    gmii_txd);
  output sgmii_clk_r;
  output sgmii_clk_en_reg;
  output gmii_rx_dv_out_reg;
  output gmii_rx_er_out_reg;
  output gmii_tx_en;
  output gmii_tx_er;
  output sgmii_clk_f;
  output [7:0]gmii_rxd;
  output [7:0]Q;
  input gmii_tx_en_out_reg;
  input gmii_rx_dv;
  input gmii_rx_er;
  input gmii_tx_en_out_reg_0;
  input gmii_tx_er_out_reg;
  input reset_in;
  input speed_is_10_100;
  input speed_is_100;
  input [7:0]D;
  input [7:0]gmii_txd;

  wire [7:0]D;
  wire [7:0]Q;
  wire gmii_rx_dv;
  wire gmii_rx_dv_out_reg;
  wire gmii_rx_er;
  wire gmii_rx_er_out_reg;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_en_out_reg;
  wire gmii_tx_en_out_reg_0;
  wire gmii_tx_er;
  wire gmii_tx_er_out_reg;
  wire [7:0]gmii_txd;
  wire reset_in;
  wire sgmii_clk_en_reg;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire speed_is_100;
  wire speed_is_100_resync;
  wire speed_is_10_100;
  wire speed_is_10_100_resync;
  wire sync_reset;

  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen clock_generation
       (.data_out(speed_is_100_resync),
        .reg4_reg(gmii_tx_en_out_reg),
        .reset_out(sync_reset),
        .sgmii_clk_en_reg_0(sgmii_clk_en_reg),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .speed_is_10_100_fall_reg_0(speed_is_10_100_resync));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync gen_sync_reset
       (.reset_in(reset_in),
        .reset_out(sync_reset),
        .reset_sync6_0(gmii_tx_en_out_reg));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt receiver
       (.D(D),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_dv_out_reg_0(gmii_rx_dv_out_reg),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rx_er_out_reg_0(gmii_rx_er_out_reg),
        .gmii_rx_er_out_reg_1(sgmii_clk_en_reg),
        .gmii_rxd(gmii_rxd),
        .reset_out(sync_reset),
        .rx_er_aligned_reg_0(gmii_tx_en_out_reg));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 resync_speed_100
       (.data_out(speed_is_100_resync),
        .data_sync_reg6_0(gmii_tx_en_out_reg),
        .speed_is_100(speed_is_100));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1 resync_speed_10_100
       (.data_out(speed_is_10_100_resync),
        .data_sync_reg1_0(gmii_tx_en_out_reg),
        .speed_is_10_100(speed_is_10_100));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt transmitter
       (.E(sgmii_clk_en_reg),
        .Q(Q),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_en_out_reg_0(gmii_tx_en_out_reg_0),
        .gmii_tx_en_out_reg_1(gmii_tx_en_out_reg),
        .gmii_tx_er(gmii_tx_er),
        .gmii_tx_er_out_reg_0(gmii_tx_er_out_reg),
        .gmii_txd(gmii_txd),
        .reset_out(sync_reset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen
   (mmcm_locked_out,
    reset_0,
    CLK,
    reset_1,
    not_rxclk,
    refclk625_p,
    refclk625_n,
    reset);
  output mmcm_locked_out;
  output reset_0;
  output CLK;
  output reset_1;
  output not_rxclk;
  input refclk625_p;
  input refclk625_n;
  input reset;

  wire CLK;
  wire clk125_i;
  wire clk625_i;
  wire clk625_in;
  wire clk_fb;
  wire clk_fb_i;
  wire mmcm_locked_out;
  wire refclk625_n;
  wire refclk625_p;
  wire reset;
  wire reset_0;
  wire reset_1;
  wire NLW_mmcme3_adv_inst_CDDCDONE_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcme3_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcme3_adv_inst_DO_UNCONNECTED;

  assign not_rxclk = reset_0;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE")) 
    clk125_buf
       (.CE(1'b1),
        .I(clk125_i),
        .O(reset_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(2),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    clk312_buf
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk625_i),
        .O(CLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE")) 
    clk625_buf
       (.CE(1'b1),
        .I(clk625_i),
        .O(reset_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    clk625_ibufg
       (.I(refclk625_p),
        .IB(refclk625_n),
        .O(clk625_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE")) 
    clkf_buf
       (.CE(1'b1),
        .I(clk_fb_i),
        .O(clk_fb));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME3_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(2.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(1.600000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(5.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(2),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(2),
    .IS_CLKFBIN_INVERTED(1'b0),
    .IS_CLKIN1_INVERTED(1'b0),
    .IS_CLKIN2_INVERTED(1'b0),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcme3_adv_inst
       (.CDDCDONE(NLW_mmcme3_adv_inst_CDDCDONE_UNCONNECTED),
        .CDDCREQ(1'b0),
        .CLKFBIN(clk_fb),
        .CLKFBOUT(clk_fb_i),
        .CLKFBOUTB(NLW_mmcme3_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcme3_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk625_in),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcme3_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk125_i),
        .CLKOUT0B(NLW_mmcme3_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcme3_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcme3_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk625_i),
        .CLKOUT2B(NLW_mmcme3_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcme3_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcme3_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcme3_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcme3_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcme3_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcme3_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcme3_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcme3_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen
   (rst_125_out,
    tx_rst,
    data_sync_reg1,
    mgt_tx_reset,
    mmcm_locked_out,
    reset);
  output rst_125_out;
  output tx_rst;
  input data_sync_reg1;
  input mgt_tx_reset;
  input mmcm_locked_out;
  input reset;

  wire data_sync_reg1;
  wire mgt_tx_reset;
  wire mmcm_locked_out;
  wire [0:0]p_1_out;
  wire reset;
  wire rst_1250_n_0;
  wire rst_125_out;
  (* async_reg = "true" *) wire [5:0]rst_dly;
  wire tx_rst;

  LUT2 #(
    .INIT(4'hE)) 
    reset_sync1_i_1__0
       (.I0(rst_125_out),
        .I1(mgt_tx_reset),
        .O(tx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rst_1250
       (.I0(rst_dly[1]),
        .I1(rst_dly[0]),
        .I2(rst_dly[4]),
        .I3(rst_dly[5]),
        .I4(rst_dly[2]),
        .I5(rst_dly[3]),
        .O(rst_1250_n_0));
  FDRE rst_125_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_1250_n_0),
        .Q(rst_125_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[0] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(p_1_out),
        .PRE(reset),
        .Q(rst_dly[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[1] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_dly[0]),
        .PRE(reset),
        .Q(rst_dly[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[2] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_dly[1]),
        .PRE(reset),
        .Q(rst_dly[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[3] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_dly[2]),
        .PRE(reset),
        .Q(rst_dly[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[4] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_dly[3]),
        .PRE(reset),
        .Q(rst_dly[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \rst_dly_reg[5] 
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(rst_dly[4]),
        .PRE(reset),
        .Q(rst_dly[5]));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 sync_block_mmcm_locked
       (.D(p_1_out),
        .data_sync_reg1_0(data_sync_reg1),
        .mmcm_locked_out(mmcm_locked_out));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) (* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_support" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support
   (txp,
    txn,
    rxp,
    rxn,
    refclk625_p,
    refclk625_n,
    mmcm_locked_out,
    sgmii_clk_r,
    sgmii_clk_f,
    sgmii_clk_en,
    speed_is_10_100,
    speed_is_100,
    clk125_out,
    clk625_out,
    idelay_rdy_out,
    clk312_out,
    rst_125_out,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    status_vector,
    reset,
    signal_detect);
  output txp;
  output txn;
  input rxp;
  input rxn;
  input refclk625_p;
  input refclk625_n;
  output mmcm_locked_out;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input speed_is_10_100;
  input speed_is_100;
  output clk125_out;
  output clk625_out;
  output idelay_rdy_out;
  output clk312_out;
  output rst_125_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire clk125_out;
  wire clk312_out;
  wire clk625_out;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire \lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk ;
  wire \lvds_transceiver_mw/tx_rst ;
  wire mgt_tx_reset;
  wire mmcm_locked_out;
  wire refclk625_n;
  wire refclk625_p;
  wire reset;
  wire rst_125_out;
  wire rxn;
  wire rxp;
  wire sgmii_clk_en;
  wire sgmii_clk_f;
  wire sgmii_clk_r;
  wire signal_detect;
  wire speed_is_100;
  wire speed_is_10_100;
  wire [13:0]\^status_vector ;
  wire txn;
  wire txp;

  assign idelay_rdy_out = \<const1> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13:9] = \^status_vector [13:9];
  assign status_vector[8] = \<const0> ;
  assign status_vector[7:0] = \^status_vector [7:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen core_clocking_i
       (.CLK(clk312_out),
        .mmcm_locked_out(mmcm_locked_out),
        .not_rxclk(\lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk ),
        .refclk625_n(refclk625_n),
        .refclk625_p(refclk625_p),
        .reset(reset),
        .reset_0(clk625_out),
        .reset_1(clk125_out));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen core_resets_i
       (.data_sync_reg1(clk125_out),
        .mgt_tx_reset(mgt_tx_reset),
        .mmcm_locked_out(mmcm_locked_out),
        .reset(reset),
        .rst_125_out(rst_125_out),
        .tx_rst(\lvds_transceiver_mw/tx_rst ));
  gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block pcs_pma_block_i
       (.CLK(clk312_out),
        .an_adv_config_vector(an_adv_config_vector[11]),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .data_sync_reg1(clk125_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .\mdataouta_reg[3] (clk625_out),
        .mgt_tx_reset(mgt_tx_reset),
        .mmcm_locked_out(mmcm_locked_out),
        .not_rxclk(\lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk ),
        .rst_125_out(rst_125_out),
        .rxn(rxn),
        .rxp(rxp),
        .sgmii_clk_en_reg(sgmii_clk_en),
        .sgmii_clk_f(sgmii_clk_f),
        .sgmii_clk_r(sgmii_clk_r),
        .signal_detect(signal_detect),
        .speed_is_100(speed_is_100),
        .speed_is_10_100(speed_is_10_100),
        .status_vector({\^status_vector [13:9],\^status_vector [7:0]}),
        .tx_rst(\lvds_transceiver_mw/tx_rst ),
        .txn(txn),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block
   (data_out,
    mmcm_locked_out,
    data_sync_reg1_0);
  output data_out;
  input mmcm_locked_out;
  input data_sync_reg1_0;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire mmcm_locked_out;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(mmcm_locked_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0
   (data_out,
    speed_is_100,
    data_sync_reg6_0);
  output data_out;
  input speed_is_100;
  input data_sync_reg6_0;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;
  wire speed_is_100;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(speed_is_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1
   (data_out,
    speed_is_10_100,
    data_sync_reg1_0);
  output data_out;
  input speed_is_10_100;
  input data_sync_reg1_0;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire speed_is_10_100;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(speed_is_10_100),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11
   (D,
    mmcm_locked_out,
    data_sync_reg1_0);
  output [0:0]D;
  input mmcm_locked_out;
  input data_sync_reg1_0;

  wire [0:0]D;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire mmcm_locked_out;
  wire mmcm_locked_sync_125;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(mmcm_locked_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_locked_sync_125),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_dly[0]_i_1 
       (.I0(mmcm_locked_sync_125),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_tx_rate_adapt" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt
   (gmii_tx_en,
    gmii_tx_er,
    Q,
    reset_out,
    E,
    gmii_tx_en_out_reg_0,
    gmii_tx_en_out_reg_1,
    gmii_tx_er_out_reg_0,
    gmii_txd);
  output gmii_tx_en;
  output gmii_tx_er;
  output [7:0]Q;
  input reset_out;
  input [0:0]E;
  input gmii_tx_en_out_reg_0;
  input gmii_tx_en_out_reg_1;
  input gmii_tx_er_out_reg_0;
  input [7:0]gmii_txd;

  wire [0:0]E;
  wire [7:0]Q;
  wire gmii_tx_en;
  wire gmii_tx_en_out_reg_0;
  wire gmii_tx_en_out_reg_1;
  wire gmii_tx_er;
  wire gmii_tx_er_out_reg_0;
  wire [7:0]gmii_txd;
  wire reset_out;

  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_en_out_reg
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_tx_en_out_reg_0),
        .Q(gmii_tx_en),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_er_out_reg
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_tx_er_out_reg_0),
        .Q(gmii_tx_er),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[0] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[0]),
        .Q(Q[0]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[1] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[1]),
        .Q(Q[1]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[2] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[2]),
        .Q(Q[2]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[3] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[3]),
        .Q(Q[3]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[4] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[4]),
        .Q(Q[4]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[5] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[5]),
        .Q(Q[5]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[6] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[6]),
        .Q(Q[6]),
        .R(reset_out));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_out_reg[7] 
       (.C(gmii_tx_en_out_reg_1),
        .CE(E),
        .D(gmii_txd[7]),
        .Q(Q[7]),
        .R(reset_out));
endmodule

(* ORIG_REF_NAME = "AUTO_NEG" *) 
module gig_ethernet_pcs_pma_0_AUTO_NEG
   (ABILITY_MATCH_2,
    IDLE_MATCH_2,
    XMIT_DATA_INT,
    status_vector,
    RECEIVED_IDLE,
    ABILITY_MATCH,
    RX_CONFIG_REG_NULL_reg_0,
    an_interrupt,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ,
    \RX_CONFIG_REG_REG_reg[3]_0 ,
    \RX_CONFIG_REG_reg[15] ,
    \RX_CONFIG_REG_REG_reg[12]_0 ,
    \RX_CONFIG_REG_REG_reg[13]_0 ,
    XMIT_CONFIG,
    RX_DV0,
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0 ,
    XMIT_DATA,
    \MR_LP_ADV_ABILITY_INT_reg[13]_0 ,
    D,
    \RX_CONFIG_SNAPSHOT_reg[13]_0 ,
    out,
    userclk2,
    Q,
    RESTART_AN_SET,
    SR,
    RX_CONFIG_VALID,
    CONFIG_REG_MATCH_COMB,
    RX_IDLE,
    IDLE_MATCH0,
    \MR_LP_ADV_ABILITY_INT_reg[16]_0 ,
    BASEX_REMOTE_FAULT_RSLVD,
    RECEIVED_IDLE_reg_0,
    ABILITY_MATCH_reg_0,
    RX_CONFIG_REG_NULL_reg_1,
    RXSYNC_STATUS,
    ABILITY_MATCH_reg_1,
    ABILITY_MATCH_reg_2,
    CONSISTENCY_MATCH_reg_0,
    \STATE_reg[2]_0 ,
    RX_INVALID,
    SOP_REG3,
    RECEIVE,
    an_adv_config_vector,
    \RX_RUDI_INVALID_DELAY_reg[0]_0 );
  output ABILITY_MATCH_2;
  output IDLE_MATCH_2;
  output XMIT_DATA_INT;
  output [5:0]status_vector;
  output RECEIVED_IDLE;
  output ABILITY_MATCH;
  output RX_CONFIG_REG_NULL_reg_0;
  output an_interrupt;
  output \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ;
  output \RX_CONFIG_REG_REG_reg[3]_0 ;
  output \RX_CONFIG_REG_reg[15] ;
  output \RX_CONFIG_REG_REG_reg[12]_0 ;
  output [10:0]\RX_CONFIG_REG_REG_reg[13]_0 ;
  output XMIT_CONFIG;
  output RX_DV0;
  output \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0 ;
  output XMIT_DATA;
  output [0:0]\MR_LP_ADV_ABILITY_INT_reg[13]_0 ;
  output [2:0]D;
  output [7:0]\RX_CONFIG_SNAPSHOT_reg[13]_0 ;
  input out;
  input userclk2;
  input [3:0]Q;
  input RESTART_AN_SET;
  input [0:0]SR;
  input RX_CONFIG_VALID;
  input CONFIG_REG_MATCH_COMB;
  input RX_IDLE;
  input IDLE_MATCH0;
  input [15:0]\MR_LP_ADV_ABILITY_INT_reg[16]_0 ;
  input [0:0]BASEX_REMOTE_FAULT_RSLVD;
  input RECEIVED_IDLE_reg_0;
  input ABILITY_MATCH_reg_0;
  input RX_CONFIG_REG_NULL_reg_1;
  input RXSYNC_STATUS;
  input ABILITY_MATCH_reg_1;
  input ABILITY_MATCH_reg_2;
  input CONSISTENCY_MATCH_reg_0;
  input \STATE_reg[2]_0 ;
  input RX_INVALID;
  input SOP_REG3;
  input RECEIVE;
  input [0:0]an_adv_config_vector;
  input [0:0]\RX_RUDI_INVALID_DELAY_reg[0]_0 ;

  wire ABILITY_MATCH;
  wire ABILITY_MATCH_2;
  wire ABILITY_MATCH_2_i_10_n_0;
  wire ABILITY_MATCH_i_4_n_0;
  wire ABILITY_MATCH_reg_0;
  wire ABILITY_MATCH_reg_1;
  wire ABILITY_MATCH_reg_2;
  wire ACKNOWLEDGE_MATCH_2;
  wire ACKNOWLEDGE_MATCH_20;
  wire ACKNOWLEDGE_MATCH_30;
  wire ACKNOWLEDGE_MATCH_3_reg_n_0;
  wire AN_SYNC_STATUS;
  wire AN_SYNC_STATUS_i_1_n_0;
  wire [0:0]BASEX_REMOTE_FAULT_RSLVD;
  wire CONFIG_REG_MATCH;
  wire CONFIG_REG_MATCH_COMB;
  wire CONSISTENCY_MATCH;
  wire CONSISTENCY_MATCH_COMB;
  wire CONSISTENCY_MATCH_i_2_n_0;
  wire CONSISTENCY_MATCH_i_4_n_0;
  wire CONSISTENCY_MATCH_reg_0;
  wire [2:0]D;
  wire GENERATE_REMOTE_FAULT;
  wire GENERATE_REMOTE_FAULT0;
  wire GENERATE_REMOTE_FAULT_i_2_n_0;
  wire GENERATE_REMOTE_FAULT_i_3_n_0;
  wire GENERATE_REMOTE_FAULT_i_4_n_0;
  wire IDLE_MATCH;
  wire IDLE_MATCH0;
  wire IDLE_MATCH_2;
  wire \LINK_TIMER[0]_i_1_n_0 ;
  wire \LINK_TIMER[9]_i_1_n_0 ;
  wire \LINK_TIMER[9]_i_3_n_0 ;
  wire LINK_TIMER_DONE;
  wire LINK_TIMER_DONE_i_1_n_0;
  wire LINK_TIMER_DONE_i_2_n_0;
  wire LINK_TIMER_DONE_i_3_n_0;
  wire LINK_TIMER_SATURATED;
  wire LINK_TIMER_SATURATED_COMB;
  wire LINK_TIMER_SATURATED_i_2_n_0;
  wire [9:0]LINK_TIMER_reg;
  wire MR_AN_COMPLETE_i_1_n_0;
  wire MR_AN_ENABLE_CHANGE;
  wire MR_AN_ENABLE_CHANGE0;
  wire MR_AN_ENABLE_REG1;
  wire MR_AN_ENABLE_REG2;
  wire [0:0]\MR_LP_ADV_ABILITY_INT_reg[13]_0 ;
  wire [15:0]\MR_LP_ADV_ABILITY_INT_reg[16]_0 ;
  wire \MR_LP_ADV_ABILITY_INT_reg_n_0_[16] ;
  wire MR_PAGE_RX_SET0;
  wire MR_REMOTE_FAULT_i_1_n_0;
  wire MR_RESTART_AN_INT;
  wire MR_RESTART_AN_INT_i_1_n_0;
  wire MR_RESTART_AN_SET_REG1;
  wire MR_RESTART_AN_SET_REG2;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0 ;
  wire [3:0]PREVIOUS_STATE;
  wire PULSE4096;
  wire PULSE40960;
  wire [3:0]Q;
  wire RECEIVE;
  wire RECEIVED_IDLE;
  wire RECEIVED_IDLE_reg_0;
  wire RESTART_AN_SET;
  wire RXSYNC_STATUS;
  wire RX_CONFIG_REG_NULL_reg_0;
  wire RX_CONFIG_REG_NULL_reg_1;
  wire \RX_CONFIG_REG_REG_reg[12]_0 ;
  wire [10:0]\RX_CONFIG_REG_REG_reg[13]_0 ;
  wire \RX_CONFIG_REG_REG_reg[3]_0 ;
  wire \RX_CONFIG_REG_REG_reg_n_0_[11] ;
  wire \RX_CONFIG_REG_REG_reg_n_0_[3] ;
  wire \RX_CONFIG_REG_REG_reg_n_0_[4] ;
  wire \RX_CONFIG_REG_reg[15] ;
  wire RX_CONFIG_SNAPSHOT;
  wire \RX_CONFIG_SNAPSHOT[15]_i_2_n_0 ;
  wire \RX_CONFIG_SNAPSHOT[15]_i_3_n_0 ;
  wire [7:0]\RX_CONFIG_SNAPSHOT_reg[13]_0 ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[10] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[11] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[15] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[6] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[7] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[8] ;
  wire \RX_CONFIG_SNAPSHOT_reg_n_0_[9] ;
  wire RX_CONFIG_VALID;
  wire RX_DV0;
  wire RX_IDLE;
  wire RX_IDLE_REG1;
  wire RX_IDLE_REG2;
  wire RX_INVALID;
  wire [1:0]RX_RUDI_INVALID_DELAY;
  wire [0:0]\RX_RUDI_INVALID_DELAY_reg[0]_0 ;
  wire \SGMII_SPEED[1]_i_2_n_0 ;
  wire SOP_REG3;
  wire [0:0]SR;
  wire START_LINK_TIMER;
  wire START_LINK_TIMER_REG;
  wire START_LINK_TIMER_REG2;
  wire START_LINK_TIMER_REG_i_2_n_0;
  wire START_LINK_TIMER_REG_i_3_n_0;
  wire START_LINK_TIMER_REG_i_4_n_0;
  wire [3:0]STATE;
  wire \STATE[0]_i_1_n_0 ;
  wire \STATE[0]_i_2_n_0 ;
  wire \STATE[0]_i_3_n_0 ;
  wire \STATE[0]_i_4_n_0 ;
  wire \STATE[1]_i_1_n_0 ;
  wire \STATE[1]_i_2_n_0 ;
  wire \STATE[1]_i_3_n_0 ;
  wire \STATE[1]_i_4_n_0 ;
  wire \STATE[1]_i_5_n_0 ;
  wire \STATE[1]_i_6_n_0 ;
  wire \STATE[2]_i_1_n_0 ;
  wire \STATE[2]_i_2_n_0 ;
  wire \STATE[2]_i_3_n_0 ;
  wire \STATE[2]_i_4_n_0 ;
  wire \STATE[2]_i_5_n_0 ;
  wire \STATE[2]_i_6_n_0 ;
  wire \STATE[2]_i_7_n_0 ;
  wire \STATE[3]_i_1_n_0 ;
  wire \STATE[3]_i_2_n_0 ;
  wire \STATE[3]_i_3_n_0 ;
  wire \STATE_reg[2]_0 ;
  wire SYNC_STATUS_HELD;
  wire SYNC_STATUS_HELD_i_1_n_0;
  wire TIMER4096_MSB_REG;
  wire [11:11]TIMER4096_reg;
  wire \TIMER4096_reg_n_0_[0] ;
  wire \TIMER4096_reg_n_0_[10] ;
  wire \TIMER4096_reg_n_0_[1] ;
  wire \TIMER4096_reg_n_0_[2] ;
  wire \TIMER4096_reg_n_0_[3] ;
  wire \TIMER4096_reg_n_0_[4] ;
  wire \TIMER4096_reg_n_0_[5] ;
  wire \TIMER4096_reg_n_0_[6] ;
  wire \TIMER4096_reg_n_0_[7] ;
  wire \TIMER4096_reg_n_0_[8] ;
  wire \TIMER4096_reg_n_0_[9] ;
  wire TOGGLE_RX;
  wire TOGGLE_TX;
  wire TOGGLE_TX_i_1_n_0;
  wire TOGGLE_TX_i_2_n_0;
  wire \TX_CONFIG_REG_INT[11]_i_1_n_0 ;
  wire \TX_CONFIG_REG_INT[14]_i_1_n_0 ;
  wire XMIT_CONFIG;
  wire XMIT_CONFIG_INT;
  wire XMIT_CONFIG_INT_i_1_n_0;
  wire XMIT_CONFIG_INT_i_2_n_0;
  wire XMIT_DATA;
  wire XMIT_DATA_INT;
  wire XMIT_DATA_INT0;
  wire [0:0]an_adv_config_vector;
  wire an_interrupt;
  wire out;
  wire p_0_in0_in;
  wire p_0_in26_in;
  wire [11:0]p_1_in;
  wire [11:0]plusOp;
  wire [9:1]plusOp__0;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire [5:0]status_vector;
  wire userclk2;
  wire [7:2]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_plusOp_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAEFFFFAE)) 
    ABILITY_MATCH_2_i_10
       (.I0(RECEIVED_IDLE),
        .I1(\RX_CONFIG_REG_REG_reg_n_0_[11] ),
        .I2(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .I3(\RX_CONFIG_REG_REG_reg_n_0_[4] ),
        .I4(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [4]),
        .O(ABILITY_MATCH_2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ABILITY_MATCH_2_i_7
       (.I0(ABILITY_MATCH_2_i_10_n_0),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .I2(p_0_in0_in),
        .I3(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [3]),
        .I4(\RX_CONFIG_REG_REG_reg_n_0_[3] ),
        .O(\RX_CONFIG_REG_reg[15] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    ABILITY_MATCH_2_i_9
       (.I0(\RX_CONFIG_REG_REG_reg[13]_0 [9]),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [12]),
        .I2(\RX_CONFIG_REG_REG_reg_n_0_[11] ),
        .I3(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .O(\RX_CONFIG_REG_REG_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ABILITY_MATCH_2_reg
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(CONFIG_REG_MATCH_COMB),
        .Q(ABILITY_MATCH_2),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ABILITY_MATCH_i_2
       (.I0(ABILITY_MATCH_i_4_n_0),
        .I1(ABILITY_MATCH_2_i_10_n_0),
        .I2(ABILITY_MATCH_reg_1),
        .I3(ABILITY_MATCH_reg_2),
        .O(\RX_CONFIG_REG_REG_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    ABILITY_MATCH_i_4
       (.I0(\RX_CONFIG_REG_REG_reg_n_0_[3] ),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [3]),
        .I2(p_0_in0_in),
        .I3(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .O(ABILITY_MATCH_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ABILITY_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ABILITY_MATCH_reg_0),
        .Q(ABILITY_MATCH),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ACKNOWLEDGE_MATCH_2_i_1
       (.I0(p_0_in26_in),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [14]),
        .O(ACKNOWLEDGE_MATCH_20));
  FDRE #(
    .INIT(1'b0)) 
    ACKNOWLEDGE_MATCH_2_reg
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(ACKNOWLEDGE_MATCH_20),
        .Q(ACKNOWLEDGE_MATCH_2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ACKNOWLEDGE_MATCH_3_i_1
       (.I0(ACKNOWLEDGE_MATCH_2),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [14]),
        .I2(p_0_in26_in),
        .O(ACKNOWLEDGE_MATCH_30));
  FDRE #(
    .INIT(1'b0)) 
    ACKNOWLEDGE_MATCH_3_reg
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(ACKNOWLEDGE_MATCH_30),
        .Q(ACKNOWLEDGE_MATCH_3_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    AN_SYNC_STATUS_i_1
       (.I0(SYNC_STATUS_HELD),
        .I1(LINK_TIMER_SATURATED),
        .I2(PULSE4096),
        .I3(RXSYNC_STATUS),
        .I4(AN_SYNC_STATUS),
        .O(AN_SYNC_STATUS_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AN_SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(AN_SYNC_STATUS_i_1_n_0),
        .Q(AN_SYNC_STATUS),
        .R(out));
  FDRE \BASEX_REMOTE_FAULT_reg[1] 
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(BASEX_REMOTE_FAULT_RSLVD),
        .Q(status_vector[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    CONFIG_REG_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_REG_MATCH_COMB),
        .Q(CONFIG_REG_MATCH),
        .R(out));
  LUT5 #(
    .INIT(32'h00000009)) 
    CONSISTENCY_MATCH_i_1
       (.I0(\RX_CONFIG_SNAPSHOT_reg_n_0_[15] ),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .I2(CONSISTENCY_MATCH_i_2_n_0),
        .I3(CONSISTENCY_MATCH_reg_0),
        .I4(CONSISTENCY_MATCH_i_4_n_0),
        .O(CONSISTENCY_MATCH_COMB));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CONSISTENCY_MATCH_i_2
       (.I0(\RX_CONFIG_SNAPSHOT_reg_n_0_[6] ),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [6]),
        .I2(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [8]),
        .I3(\RX_CONFIG_SNAPSHOT_reg_n_0_[8] ),
        .I4(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [7]),
        .I5(\RX_CONFIG_SNAPSHOT_reg_n_0_[7] ),
        .O(CONSISTENCY_MATCH_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CONSISTENCY_MATCH_i_4
       (.I0(\RX_CONFIG_SNAPSHOT_reg_n_0_[9] ),
        .I1(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [9]),
        .I2(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [10]),
        .I3(\RX_CONFIG_SNAPSHOT_reg_n_0_[10] ),
        .I4(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .I5(\RX_CONFIG_SNAPSHOT_reg_n_0_[11] ),
        .O(CONSISTENCY_MATCH_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CONSISTENCY_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CONSISTENCY_MATCH_COMB),
        .Q(CONSISTENCY_MATCH),
        .R(out));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    GENERATE_REMOTE_FAULT_i_1
       (.I0(\STATE[0]_i_4_n_0 ),
        .I1(GENERATE_REMOTE_FAULT_i_2_n_0),
        .I2(\STATE[2]_i_2_n_0 ),
        .I3(\STATE[1]_i_2_n_0 ),
        .I4(GENERATE_REMOTE_FAULT_i_3_n_0),
        .I5(\STATE[3]_i_1_n_0 ),
        .O(GENERATE_REMOTE_FAULT0));
  LUT6 #(
    .INIT(64'hEEEFEEEFEEEFEEEE)) 
    GENERATE_REMOTE_FAULT_i_2
       (.I0(\STATE[0]_i_2_n_0 ),
        .I1(GENERATE_REMOTE_FAULT_i_4_n_0),
        .I2(\STATE[2]_i_4_n_0 ),
        .I3(\STATE[2]_i_5_n_0 ),
        .I4(STATE[0]),
        .I5(LINK_TIMER_DONE),
        .O(GENERATE_REMOTE_FAULT_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    GENERATE_REMOTE_FAULT_i_3
       (.I0(STATE[3]),
        .I1(STATE[0]),
        .I2(STATE[2]),
        .I3(STATE[1]),
        .O(GENERATE_REMOTE_FAULT_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000322)) 
    GENERATE_REMOTE_FAULT_i_4
       (.I0(Q[3]),
        .I1(STATE[2]),
        .I2(LINK_TIMER_DONE),
        .I3(STATE[0]),
        .I4(STATE[1]),
        .O(GENERATE_REMOTE_FAULT_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    GENERATE_REMOTE_FAULT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(GENERATE_REMOTE_FAULT0),
        .Q(GENERATE_REMOTE_FAULT),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    IDLE_MATCH_2_reg
       (.C(userclk2),
        .CE(RX_IDLE_REG2),
        .D(RX_IDLE),
        .Q(IDLE_MATCH_2),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    IDLE_MATCH_reg
       (.C(userclk2),
        .CE(RX_IDLE_REG2),
        .D(IDLE_MATCH0),
        .Q(IDLE_MATCH),
        .R(out));
  LUT1 #(
    .INIT(2'h1)) 
    \LINK_TIMER[0]_i_1 
       (.I0(LINK_TIMER_reg[0]),
        .O(\LINK_TIMER[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LINK_TIMER[1]_i_1 
       (.I0(LINK_TIMER_reg[1]),
        .I1(LINK_TIMER_reg[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \LINK_TIMER[2]_i_1 
       (.I0(LINK_TIMER_reg[2]),
        .I1(LINK_TIMER_reg[1]),
        .I2(LINK_TIMER_reg[0]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \LINK_TIMER[3]_i_1 
       (.I0(LINK_TIMER_reg[3]),
        .I1(LINK_TIMER_reg[0]),
        .I2(LINK_TIMER_reg[1]),
        .I3(LINK_TIMER_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \LINK_TIMER[4]_i_1 
       (.I0(LINK_TIMER_reg[4]),
        .I1(LINK_TIMER_reg[2]),
        .I2(LINK_TIMER_reg[1]),
        .I3(LINK_TIMER_reg[0]),
        .I4(LINK_TIMER_reg[3]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \LINK_TIMER[5]_i_1 
       (.I0(LINK_TIMER_reg[3]),
        .I1(LINK_TIMER_reg[0]),
        .I2(LINK_TIMER_reg[1]),
        .I3(LINK_TIMER_reg[2]),
        .I4(LINK_TIMER_reg[4]),
        .I5(LINK_TIMER_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LINK_TIMER[6]_i_1 
       (.I0(LINK_TIMER_reg[6]),
        .I1(\LINK_TIMER[9]_i_3_n_0 ),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \LINK_TIMER[7]_i_1 
       (.I0(LINK_TIMER_reg[7]),
        .I1(\LINK_TIMER[9]_i_3_n_0 ),
        .I2(LINK_TIMER_reg[6]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \LINK_TIMER[8]_i_1 
       (.I0(LINK_TIMER_reg[8]),
        .I1(LINK_TIMER_reg[6]),
        .I2(\LINK_TIMER[9]_i_3_n_0 ),
        .I3(LINK_TIMER_reg[7]),
        .O(plusOp__0[8]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \LINK_TIMER[9]_i_1 
       (.I0(LINK_TIMER_SATURATED),
        .I1(PULSE4096),
        .I2(START_LINK_TIMER_REG),
        .I3(out),
        .O(\LINK_TIMER[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \LINK_TIMER[9]_i_2 
       (.I0(LINK_TIMER_reg[9]),
        .I1(LINK_TIMER_reg[7]),
        .I2(\LINK_TIMER[9]_i_3_n_0 ),
        .I3(LINK_TIMER_reg[6]),
        .I4(LINK_TIMER_reg[8]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \LINK_TIMER[9]_i_3 
       (.I0(LINK_TIMER_reg[5]),
        .I1(LINK_TIMER_reg[4]),
        .I2(LINK_TIMER_reg[2]),
        .I3(LINK_TIMER_reg[1]),
        .I4(LINK_TIMER_reg[0]),
        .I5(LINK_TIMER_reg[3]),
        .O(\LINK_TIMER[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008088)) 
    LINK_TIMER_DONE_i_1
       (.I0(LINK_TIMER_DONE_i_2_n_0),
        .I1(START_LINK_TIMER_REG_i_4_n_0),
        .I2(STATE[3]),
        .I3(\STATE[2]_i_3_n_0 ),
        .I4(LINK_TIMER_DONE_i_3_n_0),
        .O(LINK_TIMER_DONE_i_1_n_0));
  LUT5 #(
    .INIT(32'h00001110)) 
    LINK_TIMER_DONE_i_2
       (.I0(START_LINK_TIMER_REG),
        .I1(out),
        .I2(LINK_TIMER_SATURATED),
        .I3(LINK_TIMER_DONE),
        .I4(START_LINK_TIMER_REG2),
        .O(LINK_TIMER_DONE_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000E00000002)) 
    LINK_TIMER_DONE_i_3
       (.I0(Q[3]),
        .I1(STATE[2]),
        .I2(STATE[1]),
        .I3(STATE[3]),
        .I4(STATE[0]),
        .I5(\STATE[1]_i_5_n_0 ),
        .O(LINK_TIMER_DONE_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LINK_TIMER_DONE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(LINK_TIMER_DONE_i_1_n_0),
        .Q(LINK_TIMER_DONE),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000040)) 
    LINK_TIMER_SATURATED_i_1
       (.I0(LINK_TIMER_reg[2]),
        .I1(LINK_TIMER_reg[5]),
        .I2(LINK_TIMER_reg[4]),
        .I3(LINK_TIMER_reg[8]),
        .I4(LINK_TIMER_SATURATED_i_2_n_0),
        .O(LINK_TIMER_SATURATED_COMB));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    LINK_TIMER_SATURATED_i_2
       (.I0(LINK_TIMER_reg[1]),
        .I1(LINK_TIMER_reg[0]),
        .I2(LINK_TIMER_reg[6]),
        .I3(LINK_TIMER_reg[9]),
        .I4(LINK_TIMER_reg[3]),
        .I5(LINK_TIMER_reg[7]),
        .O(LINK_TIMER_SATURATED_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LINK_TIMER_SATURATED_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(LINK_TIMER_SATURATED_COMB),
        .Q(LINK_TIMER_SATURATED),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[0] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(\LINK_TIMER[0]_i_1_n_0 ),
        .Q(LINK_TIMER_reg[0]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[1] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[1]),
        .Q(LINK_TIMER_reg[1]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[2] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[2]),
        .Q(LINK_TIMER_reg[2]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[3] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[3]),
        .Q(LINK_TIMER_reg[3]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[4] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[4]),
        .Q(LINK_TIMER_reg[4]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[5] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[5]),
        .Q(LINK_TIMER_reg[5]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[6] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[6]),
        .Q(LINK_TIMER_reg[6]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[7] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[7]),
        .Q(LINK_TIMER_reg[7]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[8] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[8]),
        .Q(LINK_TIMER_reg[8]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LINK_TIMER_reg[9] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[9]),
        .Q(LINK_TIMER_reg[9]),
        .R(\LINK_TIMER[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2232222222222020)) 
    MR_AN_COMPLETE_i_1
       (.I0(an_interrupt),
        .I1(out),
        .I2(STATE[2]),
        .I3(STATE[3]),
        .I4(STATE[0]),
        .I5(STATE[1]),
        .O(MR_AN_COMPLETE_i_1_n_0));
  FDRE MR_AN_COMPLETE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_AN_COMPLETE_i_1_n_0),
        .Q(an_interrupt),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    MR_AN_ENABLE_CHANGE_i_1
       (.I0(MR_AN_ENABLE_REG2),
        .I1(MR_AN_ENABLE_REG1),
        .O(MR_AN_ENABLE_CHANGE0));
  FDRE #(
    .INIT(1'b0)) 
    MR_AN_ENABLE_CHANGE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_AN_ENABLE_CHANGE0),
        .Q(MR_AN_ENABLE_CHANGE),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    MR_AN_ENABLE_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(Q[3]),
        .Q(MR_AN_ENABLE_REG1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    MR_AN_ENABLE_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_AN_ENABLE_REG1),
        .Q(MR_AN_ENABLE_REG2),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \MR_LP_ADV_ABILITY_INT_reg[13] 
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [12]),
        .Q(\MR_LP_ADV_ABILITY_INT_reg[13]_0 ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \MR_LP_ADV_ABILITY_INT_reg[16] 
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .Q(\MR_LP_ADV_ABILITY_INT_reg_n_0_[16] ),
        .R(out));
  LUT3 #(
    .INIT(8'hF4)) 
    MR_REMOTE_FAULT_i_1
       (.I0(\MR_LP_ADV_ABILITY_INT_reg_n_0_[16] ),
        .I1(GENERATE_REMOTE_FAULT),
        .I2(status_vector[5]),
        .O(MR_REMOTE_FAULT_i_1_n_0));
  FDRE MR_REMOTE_FAULT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_REMOTE_FAULT_i_1_n_0),
        .Q(status_vector[5]),
        .R(out));
  LUT5 #(
    .INIT(32'hAE0C0C0C)) 
    MR_RESTART_AN_INT_i_1
       (.I0(START_LINK_TIMER_REG_i_2_n_0),
        .I1(MR_RESTART_AN_SET_REG1),
        .I2(MR_RESTART_AN_SET_REG2),
        .I3(Q[3]),
        .I4(MR_RESTART_AN_INT),
        .O(MR_RESTART_AN_INT_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MR_RESTART_AN_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_RESTART_AN_INT_i_1_n_0),
        .Q(MR_RESTART_AN_INT),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    MR_RESTART_AN_SET_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RESTART_AN_SET),
        .Q(MR_RESTART_AN_SET_REG1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    MR_RESTART_AN_SET_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_RESTART_AN_SET_REG1),
        .Q(MR_RESTART_AN_SET_REG2),
        .R(out));
  FDRE \PREVIOUS_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATE[0]),
        .Q(PREVIOUS_STATE[0]),
        .R(out));
  FDRE \PREVIOUS_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATE[1]),
        .Q(PREVIOUS_STATE[1]),
        .R(out));
  FDRE \PREVIOUS_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATE[2]),
        .Q(PREVIOUS_STATE[2]),
        .R(out));
  FDRE \PREVIOUS_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATE[3]),
        .Q(PREVIOUS_STATE[3]),
        .R(out));
  LUT2 #(
    .INIT(4'h2)) 
    PULSE4096_i_1
       (.I0(TIMER4096_MSB_REG),
        .I1(TIMER4096_reg),
        .O(PULSE40960));
  FDRE #(
    .INIT(1'b0)) 
    PULSE4096_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(PULSE40960),
        .Q(PULSE4096),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    RECEIVED_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RECEIVED_IDLE_reg_0),
        .Q(RECEIVED_IDLE),
        .R(out));
  FDRE RUDI_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_RUDI_INVALID_DELAY[1]),
        .Q(status_vector[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    RX_CONFIG_REG_NULL_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_REG_NULL_reg_1),
        .Q(RX_CONFIG_REG_NULL_reg_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[0] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [0]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[10] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [10]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[11] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .Q(\RX_CONFIG_REG_REG_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[12] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [12]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[13] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [13]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[14] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [14]),
        .Q(p_0_in26_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[15] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .Q(p_0_in0_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[1] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [1]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[2] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [2]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[3] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [3]),
        .Q(\RX_CONFIG_REG_REG_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[4] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [4]),
        .Q(\RX_CONFIG_REG_REG_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[5] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [5]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[6] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [6]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[7] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [7]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[8] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [8]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_REG_REG_reg[9] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [9]),
        .Q(\RX_CONFIG_REG_REG_reg[13]_0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0D00000000000000)) 
    \RX_CONFIG_SNAPSHOT[15]_i_1 
       (.I0(\RX_CONFIG_SNAPSHOT[15]_i_2_n_0 ),
        .I1(\RX_CONFIG_SNAPSHOT[15]_i_3_n_0 ),
        .I2(ABILITY_MATCH),
        .I3(RX_CONFIG_VALID),
        .I4(ABILITY_MATCH_2),
        .I5(CONFIG_REG_MATCH),
        .O(RX_CONFIG_SNAPSHOT));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_CONFIG_SNAPSHOT[15]_i_2 
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .O(\RX_CONFIG_SNAPSHOT[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RX_CONFIG_SNAPSHOT[15]_i_3 
       (.I0(STATE[2]),
        .I1(STATE[3]),
        .O(\RX_CONFIG_SNAPSHOT[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[0] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [0]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[10] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [10]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[11] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[11] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[12] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [12]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[13] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [13]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[15] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[15] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[1] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [1]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[2] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [2]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[3] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [3]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[4] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [4]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[5] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [5]),
        .Q(\RX_CONFIG_SNAPSHOT_reg[13]_0 [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[6] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [6]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[7] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [7]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[7] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[8] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [8]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_CONFIG_SNAPSHOT_reg[9] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [9]),
        .Q(\RX_CONFIG_SNAPSHOT_reg_n_0_[9] ),
        .R(out));
  LUT4 #(
    .INIT(16'h0008)) 
    RX_DV_i_2
       (.I0(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ),
        .I1(SOP_REG3),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(RX_DV0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF2F2F200)) 
    RX_ER_i_2
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(XMIT_DATA_INT),
        .I3(RECEIVE),
        .I4(RXSYNC_STATUS),
        .O(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    RX_IDLE_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE),
        .Q(RX_IDLE_REG1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    RX_IDLE_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE_REG1),
        .Q(RX_IDLE_REG2),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_RUDI_INVALID_DELAY_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RX_RUDI_INVALID_DELAY_reg[0]_0 ),
        .Q(RX_RUDI_INVALID_DELAY[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \RX_RUDI_INVALID_DELAY_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_RUDI_INVALID_DELAY[0]),
        .Q(RX_RUDI_INVALID_DELAY[1]),
        .R(out));
  FDRE SGMII_PHY_STATUS_reg
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [15]),
        .Q(status_vector[1]),
        .R(out));
  LUT5 #(
    .INIT(32'h01000000)) 
    \SGMII_SPEED[1]_i_1 
       (.I0(\SGMII_SPEED[1]_i_2_n_0 ),
        .I1(PREVIOUS_STATE[3]),
        .I2(PREVIOUS_STATE[2]),
        .I3(PREVIOUS_STATE[0]),
        .I4(PREVIOUS_STATE[1]),
        .O(MR_PAGE_RX_SET0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \SGMII_SPEED[1]_i_2 
       (.I0(STATE[2]),
        .I1(STATE[1]),
        .I2(STATE[3]),
        .I3(STATE[0]),
        .O(\SGMII_SPEED[1]_i_2_n_0 ));
  FDRE \SGMII_SPEED_reg[0] 
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [10]),
        .Q(status_vector[3]),
        .R(out));
  FDSE \SGMII_SPEED_reg[1] 
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .Q(status_vector[4]),
        .S(out));
  FDRE #(
    .INIT(1'b0)) 
    START_LINK_TIMER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(START_LINK_TIMER_REG),
        .Q(START_LINK_TIMER_REG2),
        .R(out));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    START_LINK_TIMER_REG_i_1
       (.I0(START_LINK_TIMER_REG_i_2_n_0),
        .I1(Q[3]),
        .I2(START_LINK_TIMER_REG_i_3_n_0),
        .I3(\STATE[2]_i_3_n_0 ),
        .I4(STATE[3]),
        .I5(START_LINK_TIMER_REG_i_4_n_0),
        .O(START_LINK_TIMER));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    START_LINK_TIMER_REG_i_2
       (.I0(STATE[3]),
        .I1(STATE[2]),
        .I2(STATE[1]),
        .I3(STATE[0]),
        .O(START_LINK_TIMER_REG_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    START_LINK_TIMER_REG_i_3
       (.I0(ABILITY_MATCH),
        .I1(RX_CONFIG_REG_NULL_reg_0),
        .I2(LINK_TIMER_DONE),
        .I3(STATE[0]),
        .I4(STATE[3]),
        .I5(\STATE[2]_i_5_n_0 ),
        .O(START_LINK_TIMER_REG_i_3_n_0));
  LUT5 #(
    .INIT(32'h000D0000)) 
    START_LINK_TIMER_REG_i_4
       (.I0(XMIT_CONFIG_INT),
        .I1(\STATE_reg[2]_0 ),
        .I2(MR_AN_ENABLE_CHANGE),
        .I3(MR_RESTART_AN_INT),
        .I4(AN_SYNC_STATUS),
        .O(START_LINK_TIMER_REG_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    START_LINK_TIMER_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(START_LINK_TIMER),
        .Q(START_LINK_TIMER_REG),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \STATE[0]_i_1 
       (.I0(\STATE[2]_i_2_n_0 ),
        .I1(\STATE[0]_i_2_n_0 ),
        .I2(\STATE[0]_i_3_n_0 ),
        .I3(\STATE[0]_i_4_n_0 ),
        .O(\STATE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404004004440040)) 
    \STATE[0]_i_2 
       (.I0(STATE[2]),
        .I1(STATE[1]),
        .I2(ABILITY_MATCH),
        .I3(RX_CONFIG_REG_NULL_reg_0),
        .I4(STATE[0]),
        .I5(ACKNOWLEDGE_MATCH_3_reg_n_0),
        .O(\STATE[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110033311100030)) 
    \STATE[0]_i_3 
       (.I0(\STATE[2]_i_4_n_0 ),
        .I1(STATE[1]),
        .I2(STATE[0]),
        .I3(LINK_TIMER_DONE),
        .I4(STATE[2]),
        .I5(Q[3]),
        .O(\STATE[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBABABFB)) 
    \STATE[0]_i_4 
       (.I0(\STATE[2]_i_7_n_0 ),
        .I1(STATE[0]),
        .I2(ABILITY_MATCH),
        .I3(\RX_CONFIG_REG_REG_reg_n_0_[11] ),
        .I4(TOGGLE_RX),
        .O(\STATE[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \STATE[1]_i_1 
       (.I0(\STATE[2]_i_2_n_0 ),
        .I1(\STATE[1]_i_2_n_0 ),
        .O(\STATE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FB000000FB00)) 
    \STATE[1]_i_2 
       (.I0(STATE[2]),
        .I1(\STATE[1]_i_3_n_0 ),
        .I2(\STATE[1]_i_4_n_0 ),
        .I3(\STATE[2]_i_7_n_0 ),
        .I4(\STATE[1]_i_5_n_0 ),
        .I5(\STATE[1]_i_6_n_0 ),
        .O(\STATE[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \STATE[1]_i_3 
       (.I0(STATE[1]),
        .I1(STATE[0]),
        .I2(LINK_TIMER_DONE),
        .O(\STATE[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \STATE[1]_i_4 
       (.I0(STATE[1]),
        .I1(STATE[0]),
        .I2(ABILITY_MATCH),
        .I3(ACKNOWLEDGE_MATCH_3_reg_n_0),
        .I4(RX_CONFIG_REG_NULL_reg_0),
        .O(\STATE[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \STATE[1]_i_5 
       (.I0(LINK_TIMER_DONE),
        .I1(RX_CONFIG_REG_NULL_reg_0),
        .I2(ABILITY_MATCH),
        .O(\STATE[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \STATE[1]_i_6 
       (.I0(STATE[2]),
        .I1(STATE[1]),
        .I2(STATE[0]),
        .I3(IDLE_MATCH),
        .O(\STATE[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888A888AAAAA888A)) 
    \STATE[2]_i_1 
       (.I0(\STATE[2]_i_2_n_0 ),
        .I1(\STATE[2]_i_3_n_0 ),
        .I2(\STATE[2]_i_4_n_0 ),
        .I3(\STATE[2]_i_5_n_0 ),
        .I4(\STATE[2]_i_6_n_0 ),
        .I5(\STATE[2]_i_7_n_0 ),
        .O(\STATE[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000202)) 
    \STATE[2]_i_2 
       (.I0(AN_SYNC_STATUS),
        .I1(MR_RESTART_AN_INT),
        .I2(MR_AN_ENABLE_CHANGE),
        .I3(\STATE_reg[2]_0 ),
        .I4(XMIT_CONFIG_INT),
        .I5(STATE[3]),
        .O(\STATE[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \STATE[2]_i_3 
       (.I0(RX_CONFIG_REG_NULL_reg_0),
        .I1(STATE[0]),
        .I2(CONSISTENCY_MATCH),
        .I3(p_1_in[0]),
        .I4(ABILITY_MATCH),
        .I5(ACKNOWLEDGE_MATCH_3_reg_n_0),
        .O(\STATE[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \STATE[2]_i_4 
       (.I0(ABILITY_MATCH),
        .I1(RX_CONFIG_REG_NULL_reg_0),
        .O(\STATE[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \STATE[2]_i_5 
       (.I0(STATE[1]),
        .I1(STATE[2]),
        .O(\STATE[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \STATE[2]_i_6 
       (.I0(ABILITY_MATCH),
        .I1(\RX_CONFIG_REG_REG_reg_n_0_[11] ),
        .I2(TOGGLE_RX),
        .O(\STATE[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hC8FFFFFF)) 
    \STATE[2]_i_7 
       (.I0(RX_CONFIG_REG_NULL_reg_0),
        .I1(ABILITY_MATCH),
        .I2(STATE[0]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .O(\STATE[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00080000FFFB0000)) 
    \STATE[3]_i_1 
       (.I0(\STATE[3]_i_2_n_0 ),
        .I1(\STATE[3]_i_3_n_0 ),
        .I2(MR_AN_ENABLE_CHANGE),
        .I3(MR_RESTART_AN_INT),
        .I4(AN_SYNC_STATUS),
        .I5(Q[3]),
        .O(\STATE[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00020003)) 
    \STATE[3]_i_2 
       (.I0(STATE[3]),
        .I1(STATE[2]),
        .I2(STATE[1]),
        .I3(STATE[0]),
        .I4(Q[3]),
        .O(\STATE[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFAEFFFFFFFF)) 
    \STATE[3]_i_3 
       (.I0(RXSYNC_STATUS),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(XMIT_DATA_INT),
        .I4(RX_INVALID),
        .I5(XMIT_CONFIG_INT),
        .O(\STATE[3]_i_3_n_0 ));
  FDRE \STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\STATE[0]_i_1_n_0 ),
        .Q(STATE[0]),
        .R(out));
  FDRE \STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\STATE[1]_i_1_n_0 ),
        .Q(STATE[1]),
        .R(out));
  FDRE \STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\STATE[2]_i_1_n_0 ),
        .Q(STATE[2]),
        .R(out));
  FDRE \STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\STATE[3]_i_1_n_0 ),
        .Q(STATE[3]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    STATUS_VECTOR_0_PRE_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(XMIT_DATA_INT),
        .I3(RXSYNC_STATUS),
        .O(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    SYNC_STATUS_HELD_i_1
       (.I0(RXSYNC_STATUS),
        .I1(LINK_TIMER_SATURATED),
        .I2(PULSE4096),
        .I3(SYNC_STATUS_HELD),
        .O(SYNC_STATUS_HELD_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SYNC_STATUS_HELD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_HELD_i_1_n_0),
        .Q(SYNC_STATUS_HELD),
        .R(out));
  LUT1 #(
    .INIT(2'h1)) 
    \TIMER4096[0]_i_1 
       (.I0(\TIMER4096_reg_n_0_[0] ),
        .O(plusOp[0]));
  FDRE #(
    .INIT(1'b0)) 
    TIMER4096_MSB_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TIMER4096_reg),
        .Q(TIMER4096_MSB_REG),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\TIMER4096_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(\TIMER4096_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(TIMER4096_reg),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\TIMER4096_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\TIMER4096_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\TIMER4096_reg_n_0_[3] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\TIMER4096_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\TIMER4096_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\TIMER4096_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(\TIMER4096_reg_n_0_[7] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(\TIMER4096_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TIMER4096_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(\TIMER4096_reg_n_0_[9] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    TOGGLE_RX_reg
       (.C(userclk2),
        .CE(MR_PAGE_RX_SET0),
        .D(\MR_LP_ADV_ABILITY_INT_reg[16]_0 [11]),
        .Q(TOGGLE_RX),
        .R(out));
  LUT6 #(
    .INIT(64'h3333BABBCCCC8A88)) 
    TOGGLE_TX_i_1
       (.I0(an_adv_config_vector),
        .I1(MR_PAGE_RX_SET0),
        .I2(TOGGLE_TX_i_2_n_0),
        .I3(STATE[1]),
        .I4(STATE[2]),
        .I5(TOGGLE_TX),
        .O(TOGGLE_TX_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TOGGLE_TX_i_2
       (.I0(STATE[0]),
        .I1(STATE[3]),
        .O(TOGGLE_TX_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TOGGLE_TX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TOGGLE_TX_i_1_n_0),
        .Q(TOGGLE_TX),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TX_CONFIG_REG_INT[0]_i_1 
       (.I0(STATE[1]),
        .I1(STATE[2]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h000D)) 
    \TX_CONFIG_REG_INT[11]_i_1 
       (.I0(STATE[2]),
        .I1(STATE[1]),
        .I2(STATE[3]),
        .I3(STATE[0]),
        .O(\TX_CONFIG_REG_INT[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \TX_CONFIG_REG_INT[11]_i_2 
       (.I0(STATE[2]),
        .I1(TOGGLE_TX),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFAFE0200)) 
    \TX_CONFIG_REG_INT[14]_i_1 
       (.I0(STATE[0]),
        .I1(STATE[2]),
        .I2(STATE[3]),
        .I3(STATE[1]),
        .I4(D[2]),
        .O(\TX_CONFIG_REG_INT[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CONFIG_REG_INT_reg[0] 
       (.C(userclk2),
        .CE(\TX_CONFIG_REG_INT[11]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(D[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CONFIG_REG_INT_reg[11] 
       (.C(userclk2),
        .CE(\TX_CONFIG_REG_INT[11]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(D[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CONFIG_REG_INT_reg[14] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\TX_CONFIG_REG_INT[14]_i_1_n_0 ),
        .Q(D[2]),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F002F20)) 
    XMIT_CONFIG_INT_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(XMIT_CONFIG_INT_i_2_n_0),
        .I2(START_LINK_TIMER_REG_i_2_n_0),
        .I3(Q[3]),
        .I4(GENERATE_REMOTE_FAULT_i_3_n_0),
        .I5(out),
        .O(XMIT_CONFIG_INT_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    XMIT_CONFIG_INT_i_2
       (.I0(STATE[1]),
        .I1(STATE[0]),
        .I2(STATE[3]),
        .I3(STATE[2]),
        .O(XMIT_CONFIG_INT_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    XMIT_CONFIG_INT_i_2__0
       (.I0(XMIT_CONFIG_INT),
        .I1(Q[3]),
        .I2(Q[0]),
        .O(XMIT_CONFIG));
  FDRE #(
    .INIT(1'b0)) 
    XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_CONFIG_INT_i_1_n_0),
        .Q(XMIT_CONFIG_INT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    XMIT_DATA_INT_i_1
       (.I0(STATE[2]),
        .I1(STATE[1]),
        .I2(STATE[0]),
        .I3(STATE[3]),
        .O(XMIT_DATA_INT0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    XMIT_DATA_INT_i_1__0
       (.I0(XMIT_DATA_INT),
        .I1(Q[3]),
        .I2(Q[0]),
        .O(XMIT_DATA));
  FDRE #(
    .INIT(1'b0)) 
    XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_DATA_INT0),
        .Q(XMIT_DATA_INT),
        .R(out));
  CARRY8 plusOp_carry
       (.CI(\TIMER4096_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:1]),
        .S({\TIMER4096_reg_n_0_[8] ,\TIMER4096_reg_n_0_[7] ,\TIMER4096_reg_n_0_[6] ,\TIMER4096_reg_n_0_[5] ,\TIMER4096_reg_n_0_[4] ,\TIMER4096_reg_n_0_[3] ,\TIMER4096_reg_n_0_[2] ,\TIMER4096_reg_n_0_[1] }));
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:2],plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:3],plusOp[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,TIMER4096_reg,\TIMER4096_reg_n_0_[10] ,\TIMER4096_reg_n_0_[9] }));
endmodule

(* ORIG_REF_NAME = "GPCS_PMA_GEN" *) 
module gig_ethernet_pcs_pma_0_GPCS_PMA_GEN
   (MGT_RX_RESET,
    status_vector,
    Q,
    gmii_rxd,
    gmii_rx_er,
    txchardispmode,
    txcharisk,
    txdata,
    an_interrupt,
    gmii_rx_dv,
    txchardispval,
    userclk2,
    dcm_locked,
    reset,
    signal_detect,
    configuration_vector,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    rxnotintable,
    rxdisperr,
    rxrundisp,
    an_restart_config,
    rxcharisk,
    rxchariscomma,
    rxdata,
    an_adv_config_vector);
  output MGT_RX_RESET;
  output [12:0]status_vector;
  output [0:0]Q;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output txchardispmode;
  output txcharisk;
  output [7:0]txdata;
  output an_interrupt;
  output gmii_rx_dv;
  output txchardispval;
  input userclk2;
  input dcm_locked;
  input reset;
  input signal_detect;
  input [4:0]configuration_vector;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [0:0]rxnotintable;
  input [0:0]rxdisperr;
  input [0:0]rxrundisp;
  input an_restart_config;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input [7:0]rxdata;
  input [0:0]an_adv_config_vector;

  wire ABILITY_MATCH;
  wire ABILITY_MATCH_2;
  wire ACKNOWLEDGE_MATCH_3;
  wire AN_ENABLE_INT;
  wire [1:1]BASEX_REMOTE_FAULT_RSLVD;
  wire CONFIG_REG_MATCH_COMB;
  wire D;
  wire DUPLEX_MODE_RSLVD_REG;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6] ;
  wire \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7] ;
  wire \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9] ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42 ;
  wire \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43 ;
  wire IDLE_MATCH0;
  wire IDLE_MATCH_2;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8 ;
  wire \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9 ;
  wire K28p5_REG1;
  wire LOOPBACK_INT;
  wire [12:12]LP_ADV_ABILITY;
  wire \MGT_RESET.SYNC_ASYNC_RESET_n_0 ;
  wire MGT_RX_RESET;
  wire MGT_RX_RESET_INT;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0] ;
  wire \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2] ;
  wire [0:0]Q;
  wire RECEIVE;
  wire RECEIVED_IDLE;
  (* async_reg = "true" *) wire RESET_INT;
  (* async_reg = "true" *) wire RESET_INT_PIPE;
  (* async_reg = "true" *) wire RESET_INT_PIPE_RXRECCLK;
  wire RESET_INT_PIPE_RXRECCLK0;
  (* async_reg = "true" *) wire RESET_INT_RXRECCLK;
  wire RESTART_AN_EN;
  wire RESTART_AN_EN0;
  wire RESTART_AN_EN_REG;
  wire RESTART_AN_SET;
  wire RXDISPERR_SRL;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXNOTINTABLE_SRL;
  (* async_reg = "true" *) wire RXRECRESET;
  (* async_reg = "true" *) wire RXRECRESET_PIPE;
  (* async_reg = "true" *) wire RXRECRESET_PIPE_1;
  (* async_reg = "true" *) wire RXRECRESET_PIPE_2;
  (* async_reg = "true" *) wire RXRECRESET_PIPE_3;
  wire RXRUNDISP_INT;
  wire RXSYNC_STATUS;
  wire [15:10]RX_CONFIG_REG;
  wire RX_CONFIG_VALID;
  wire RX_DV0;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36 ;
  wire \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37 ;
  wire \RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4 ;
  wire RX_IDLE;
  wire RX_INVALID;
  wire RX_RUDI_INVALID;
  wire S2;
  wire SIGNAL_DETECT_MOD;
  wire SOFT_RESET_RXRECCLK;
  wire SOP_REG3;
  (* async_reg = "true" *) wire SRESET;
  (* async_reg = "true" *) wire SRESET_PIPE;
  wire STATUS_VECTOR_0_PRE;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire [14:0]TX_CONFIG_REG;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0 ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0 ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7] ;
  wire \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0 ;
  wire \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0 ;
  wire \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0 ;
  wire XMIT_CONFIG;
  wire XMIT_DATA;
  wire XMIT_DATA_INT;
  wire [0:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire dcm_locked;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire reset;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire [0:0]rxrundisp;
  wire signal_detect;
  wire [12:0]status_vector;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk2;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(D),
        .Q(RXDISPERR_SRL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(RXNOTINTABLE_INT),
        .Q(RXNOTINTABLE_SRL));
  FDRE #(
    .INIT(1'b0)) 
    \DELAY_ERROR_TXOUTCLK.RXDISPERR_REG_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RXDISPERR_SRL),
        .Q(status_vector[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DELAY_ERROR_TXOUTCLK.RXNOTINTABLE_REG_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RXNOTINTABLE_SRL),
        .Q(status_vector[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    DUPLEX_MODE_RSLVD_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(LP_ADV_ABILITY),
        .Q(DUPLEX_MODE_RSLVD_REG),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0] ),
        .S(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[13] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7] ),
        .R(RESET_INT));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8] ),
        .Q(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9] ),
        .R(RESET_INT));
  gig_ethernet_pcs_pma_0_AUTO_NEG \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION 
       (.ABILITY_MATCH(ABILITY_MATCH),
        .ABILITY_MATCH_2(ABILITY_MATCH_2),
        .ABILITY_MATCH_reg_0(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11 ),
        .ABILITY_MATCH_reg_1(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15 ),
        .ABILITY_MATCH_reg_2(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14 ),
        .BASEX_REMOTE_FAULT_RSLVD(BASEX_REMOTE_FAULT_RSLVD),
        .CONFIG_REG_MATCH_COMB(CONFIG_REG_MATCH_COMB),
        .CONSISTENCY_MATCH_reg_0(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32 ),
        .D({TX_CONFIG_REG[14],TX_CONFIG_REG[11],TX_CONFIG_REG[0]}),
        .IDLE_MATCH0(IDLE_MATCH0),
        .IDLE_MATCH_2(IDLE_MATCH_2),
        .\MR_LP_ADV_ABILITY_INT_reg[13]_0 (LP_ADV_ABILITY),
        .\MR_LP_ADV_ABILITY_INT_reg[16]_0 ({RX_CONFIG_REG[15:14],\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18 ,RX_CONFIG_REG[12:10],\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31 }),
        .\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] (\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13 ),
        .\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0 (\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30 ),
        .Q({AN_ENABLE_INT,Q,\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2] ,\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0] }),
        .RECEIVE(RECEIVE),
        .RECEIVED_IDLE(RECEIVED_IDLE),
        .RECEIVED_IDLE_reg_0(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36 ),
        .RESTART_AN_SET(RESTART_AN_SET),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_CONFIG_REG_NULL_reg_0(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11 ),
        .RX_CONFIG_REG_NULL_reg_1(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37 ),
        .\RX_CONFIG_REG_REG_reg[12]_0 (\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16 ),
        .\RX_CONFIG_REG_REG_reg[13]_0 ({\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27 }),
        .\RX_CONFIG_REG_REG_reg[3]_0 (\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14 ),
        .\RX_CONFIG_REG_reg[15] (\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15 ),
        .\RX_CONFIG_SNAPSHOT_reg[13]_0 ({\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43 }),
        .RX_CONFIG_VALID(RX_CONFIG_VALID),
        .RX_DV0(RX_DV0),
        .RX_IDLE(RX_IDLE),
        .RX_INVALID(RX_INVALID),
        .\RX_RUDI_INVALID_DELAY_reg[0]_0 (RX_RUDI_INVALID),
        .SOP_REG3(SOP_REG3),
        .SR(ACKNOWLEDGE_MATCH_3),
        .\STATE_reg[2]_0 (\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34 ),
        .XMIT_CONFIG(XMIT_CONFIG),
        .XMIT_DATA(XMIT_DATA),
        .XMIT_DATA_INT(XMIT_DATA_INT),
        .an_adv_config_vector(an_adv_config_vector),
        .an_interrupt(an_interrupt),
        .out(SRESET),
        .status_vector({status_vector[12],status_vector[10:7],status_vector[4]}),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_TX \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER 
       (.\CODE_GRP_CNT_reg[0]_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5 ),
        .\CODE_GRP_CNT_reg[0]_1 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6 ),
        .D({\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4 }),
        .\NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7 ),
        .\NO_QSGMII_DATA.TXCHARISK_reg_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12 ),
        .\NO_QSGMII_DATA.TXCHARISK_reg_1 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13 ),
        .\NO_QSGMII_DATA.TXDATA_reg[2]_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11 ),
        .\NO_QSGMII_DATA.TXDATA_reg[3]_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10 ),
        .\NO_QSGMII_DATA.TXDATA_reg[4]_0 (MGT_RX_RESET),
        .\NO_QSGMII_DATA.TXDATA_reg[5]_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9 ),
        .\NO_QSGMII_DATA.TXDATA_reg[7]_0 (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8 ),
        .\NO_QSGMII_DATA.TXDATA_reg[7]_1 ({\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20 ,\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21 }),
        .Q({Q,LOOPBACK_INT}),
        .\TX_CONFIG_reg[14]_0 ({TX_CONFIG_REG[14],TX_CONFIG_REG[11],TX_CONFIG_REG[0]}),
        .\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg (\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ),
        .XMIT_CONFIG(XMIT_CONFIG),
        .XMIT_DATA(XMIT_DATA),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .userclk2(userclk2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(RESET_INT_PIPE_RXRECCLK0),
        .Q(RESET_INT_PIPE_RXRECCLK));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .Q(RESET_INT_PIPE));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_RXRECCLK_reg 
       (.C(1'b0),
        .CE(1'b1),
        .D(RESET_INT_PIPE_RXRECCLK),
        .PRE(RESET_INT_PIPE_RXRECCLK0),
        .Q(RESET_INT_RXRECCLK));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \MGT_RESET.RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT_PIPE),
        .PRE(\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .Q(RESET_INT));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \MGT_RESET.SRESET_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT),
        .Q(SRESET_PIPE),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \MGT_RESET.SRESET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(SRESET_PIPE),
        .Q(SRESET),
        .S(RESET_INT));
  gig_ethernet_pcs_pma_0_reset_sync_block \MGT_RESET.SYNC_ASYNC_RESET 
       (.dcm_locked(dcm_locked),
        .reset(reset),
        .reset_sync6_0(\MGT_RESET.SYNC_ASYNC_RESET_n_0 ),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_reset_sync_block_9 \MGT_RESET.SYNC_ASYNC_RESET_RECCLK 
       (.RESET_INT_PIPE_RXRECCLK0(RESET_INT_PIPE_RXRECCLK0),
        .dcm_locked(dcm_locked),
        .reset(reset),
        .reset_out(SOFT_RESET_RXRECCLK));
  gig_ethernet_pcs_pma_0_reset_sync_block_10 \MGT_RESET.SYNC_SOFT_RESET_RECCLK 
       (.reset_out(SOFT_RESET_RXRECCLK));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[0]),
        .Q(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0] ),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[1]),
        .Q(LOOPBACK_INT),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[2]),
        .Q(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2] ),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[3]),
        .Q(Q),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[4]),
        .Q(AN_ENABLE_INT),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_REG_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(an_restart_config),
        .Q(RESTART_AN_EN_REG),
        .R(SRESET));
  LUT2 #(
    .INIT(4'h2)) 
    \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1 
       (.I0(an_restart_config),
        .I1(RESTART_AN_EN_REG),
        .O(RESTART_AN_EN0));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESTART_AN_EN0),
        .Q(RESTART_AN_EN),
        .R(SRESET));
  FDRE #(
    .INIT(1'b0)) 
    \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_SET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESTART_AN_EN),
        .Q(RESTART_AN_SET),
        .R(SRESET));
  gig_ethernet_pcs_pma_0_RX \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK 
       (.ABILITY_MATCH(ABILITY_MATCH),
        .ABILITY_MATCH_2(ABILITY_MATCH_2),
        .ABILITY_MATCH_2_reg(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15 ),
        .ABILITY_MATCH_2_reg_0({\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27 }),
        .ABILITY_MATCH_2_reg_1(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16 ),
        .ABILITY_MATCH_reg(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14 ),
        .BASEX_REMOTE_FAULT_RSLVD(BASEX_REMOTE_FAULT_RSLVD),
        .CONFIG_REG_MATCH_COMB(CONFIG_REG_MATCH_COMB),
        .CONSISTENCY_MATCH_reg({\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42 ,\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43 }),
        .D(D),
        .EXTEND_reg_0(\RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4 ),
        .FALSE_CARRIER_i_2_0({AN_ENABLE_INT,Q,\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2] ,\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0] }),
        .FALSE_NIT_reg_0(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0 ),
        .IDLE_MATCH0(IDLE_MATCH0),
        .IDLE_MATCH_2(IDLE_MATCH_2),
        .\IDLE_REG_reg[0]_0 (MGT_RX_RESET),
        .K28p5_REG1(K28p5_REG1),
        .Q({\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1] ,\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0] }),
        .RECEIVE(RECEIVE),
        .RECEIVED_IDLE(RECEIVED_IDLE),
        .RXCHARISK_REG1_reg_0(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0 ),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_CONFIG_REG_NULL_reg(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11 ),
        .\RX_CONFIG_REG_reg[12]_0 (\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32 ),
        .\RX_CONFIG_REG_reg[15]_0 ({RX_CONFIG_REG[15:14],\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18 ,RX_CONFIG_REG[12:10],\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30 ,\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31 }),
        .\RX_CONFIG_REG_reg[6]_0 (\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15 ),
        .\RX_CONFIG_REG_reg[8]_0 (\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14 ),
        .RX_CONFIG_VALID(RX_CONFIG_VALID),
        .RX_CONFIG_VALID_INT_reg_0(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11 ),
        .RX_CONFIG_VALID_INT_reg_1(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36 ),
        .RX_CONFIG_VALID_INT_reg_2(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37 ),
        .RX_DV0(RX_DV0),
        .RX_ER_reg_0(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30 ),
        .RX_IDLE(RX_IDLE),
        .RX_INVALID(RX_INVALID),
        .RX_INVALID_reg_0(\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34 ),
        .RX_INVALID_reg_1(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13 ),
        .S2(S2),
        .SOP_REG3(SOP_REG3),
        .SR(ACKNOWLEDGE_MATCH_3),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .XMIT_DATA(XMIT_DATA),
        .XMIT_DATA_INT(XMIT_DATA_INT),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .out(SRESET),
        .status_vector(status_vector[3:2]),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_0_SYNCHRONISE \RX_GMII_AT_TXOUTCLK.SYNCHRONISATION 
       (.D(D),
        .EVEN_reg_0(\RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4 ),
        .EVEN_reg_1(MGT_RX_RESET),
        .EVEN_reg_2(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0 ),
        .\FSM_onehot_STATE_reg[12]_0 (\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0 ),
        .K28p5_REG1(K28p5_REG1),
        .Q({AN_ENABLE_INT,LOOPBACK_INT,\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0] }),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_INVALID(RX_INVALID),
        .S2(S2),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .SYNC_STATUS_reg_0(RX_RUDI_INVALID),
        .XMIT_DATA_INT(XMIT_DATA_INT),
        .userclk2(userclk2));
  FDRE #(
    .INIT(1'b0)) 
    STATUS_VECTOR_0_PRE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13 ),
        .Q(STATUS_VECTOR_0_PRE),
        .R(1'b0));
  FDRE \STATUS_VECTOR_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE),
        .Q(status_vector[0]),
        .R(1'b0));
  FDRE \STATUS_VECTOR_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(DUPLEX_MODE_RSLVD_REG),
        .Q(status_vector[11]),
        .R(1'b0));
  FDRE \STATUS_VECTOR_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_REG),
        .Q(status_vector[1]),
        .R(1'b0));
  gig_ethernet_pcs_pma_0_sync_block SYNC_SIGNAL_DETECT
       (.Q(\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2] ),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .signal_detect(signal_detect),
        .userclk2(userclk2));
  FDRE #(
    .INIT(1'b0)) 
    SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXSYNC_STATUS),
        .Q(SYNC_STATUS_REG),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0 ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0 ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14 ),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7] ),
        .R(MGT_RX_RESET));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDISPERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr),
        .Q(D),
        .R(RXRUNDISP_INT));
  LUT2 #(
    .INIT(4'hE)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_i_1 
       (.I0(MGT_RX_RESET),
        .I1(LOOPBACK_INT),
        .O(RXRUNDISP_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable),
        .Q(RXNOTINTABLE_INT),
        .R(RXRUNDISP_INT));
  FDRE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxrundisp),
        .Q(\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0 ),
        .R(RXRUNDISP_INT));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_1 
       (.I0(\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0 ),
        .I1(\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0 ),
        .I2(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6] ),
        .I3(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7] ),
        .I4(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4] ),
        .I5(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5] ),
        .O(MGT_RX_RESET_INT));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2 
       (.I0(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13] ),
        .I1(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12] ),
        .I2(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9] ),
        .I3(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8] ),
        .I4(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11] ),
        .I5(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10] ),
        .O(\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3 
       (.I0(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2] ),
        .I1(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3] ),
        .I2(\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0] ),
        .I3(\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1] ),
        .O(\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_RX_RESET_INT),
        .Q(MGT_RX_RESET),
        .S(RESET_INT));
  FDRE \USE_ROCKET_IO.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5 ),
        .Q(txchardispmode),
        .R(MGT_RX_RESET));
  FDRE \USE_ROCKET_IO.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7 ),
        .Q(txchardispval),
        .R(1'b0));
  FDRE \USE_ROCKET_IO.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6 ),
        .Q(txcharisk),
        .R(MGT_RX_RESET));
  FDRE \USE_ROCKET_IO.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4 ),
        .Q(txdata[0]),
        .R(1'b0));
  FDRE \USE_ROCKET_IO.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3 ),
        .Q(txdata[1]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11 ),
        .Q(txdata[2]),
        .S(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ));
  FDSE \USE_ROCKET_IO.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10 ),
        .Q(txdata[3]),
        .S(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ));
  FDRE \USE_ROCKET_IO.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2 ),
        .Q(txdata[4]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9 ),
        .Q(txdata[5]),
        .S(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ));
  FDRE \USE_ROCKET_IO.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1 ),
        .Q(txdata[6]),
        .R(1'b0));
  FDSE \USE_ROCKET_IO.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8 ),
        .Q(txdata[7]),
        .S(\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(RXRECRESET));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(RXRECRESET_PIPE));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(RXRECRESET_PIPE_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(RXRECRESET_PIPE_2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(RXRECRESET_PIPE_3));
endmodule

(* ORIG_REF_NAME = "RX" *) 
module gig_ethernet_pcs_pma_0_RX
   (RX_IDLE,
    RX_CONFIG_VALID,
    status_vector,
    K28p5_REG1,
    S2,
    SOP_REG3,
    gmii_rx_er,
    RECEIVE,
    gmii_rx_dv,
    RX_INVALID,
    RX_CONFIG_VALID_INT_reg_0,
    SR,
    CONFIG_REG_MATCH_COMB,
    \RX_CONFIG_REG_reg[8]_0 ,
    \RX_CONFIG_REG_reg[6]_0 ,
    \RX_CONFIG_REG_reg[15]_0 ,
    \RX_CONFIG_REG_reg[12]_0 ,
    BASEX_REMOTE_FAULT_RSLVD,
    RX_INVALID_reg_0,
    IDLE_MATCH0,
    RX_CONFIG_VALID_INT_reg_1,
    RX_CONFIG_VALID_INT_reg_2,
    gmii_rxd,
    Q,
    userclk2,
    \IDLE_REG_reg[0]_0 ,
    SYNC_STATUS_REG0,
    RXCHARISK_REG1_reg_0,
    RXEVEN,
    ABILITY_MATCH_reg,
    out,
    ABILITY_MATCH,
    ABILITY_MATCH_2,
    ABILITY_MATCH_2_reg,
    ABILITY_MATCH_2_reg_0,
    ABILITY_MATCH_2_reg_1,
    CONSISTENCY_MATCH_reg,
    XMIT_DATA_INT,
    FALSE_CARRIER_i_2_0,
    RXSYNC_STATUS,
    RX_INVALID_reg_1,
    RX_ER_reg_0,
    IDLE_MATCH_2,
    D,
    RXNOTINTABLE_INT,
    FALSE_NIT_reg_0,
    EXTEND_reg_0,
    RECEIVED_IDLE,
    RX_DV0,
    XMIT_DATA,
    RX_CONFIG_REG_NULL_reg);
  output RX_IDLE;
  output RX_CONFIG_VALID;
  output [1:0]status_vector;
  output K28p5_REG1;
  output S2;
  output SOP_REG3;
  output gmii_rx_er;
  output RECEIVE;
  output gmii_rx_dv;
  output RX_INVALID;
  output RX_CONFIG_VALID_INT_reg_0;
  output [0:0]SR;
  output CONFIG_REG_MATCH_COMB;
  output \RX_CONFIG_REG_reg[8]_0 ;
  output \RX_CONFIG_REG_reg[6]_0 ;
  output [15:0]\RX_CONFIG_REG_reg[15]_0 ;
  output \RX_CONFIG_REG_reg[12]_0 ;
  output [0:0]BASEX_REMOTE_FAULT_RSLVD;
  output RX_INVALID_reg_0;
  output IDLE_MATCH0;
  output RX_CONFIG_VALID_INT_reg_1;
  output RX_CONFIG_VALID_INT_reg_2;
  output [7:0]gmii_rxd;
  input [7:0]Q;
  input userclk2;
  input \IDLE_REG_reg[0]_0 ;
  input SYNC_STATUS_REG0;
  input RXCHARISK_REG1_reg_0;
  input RXEVEN;
  input ABILITY_MATCH_reg;
  input out;
  input ABILITY_MATCH;
  input ABILITY_MATCH_2;
  input ABILITY_MATCH_2_reg;
  input [10:0]ABILITY_MATCH_2_reg_0;
  input ABILITY_MATCH_2_reg_1;
  input [7:0]CONSISTENCY_MATCH_reg;
  input XMIT_DATA_INT;
  input [3:0]FALSE_CARRIER_i_2_0;
  input RXSYNC_STATUS;
  input RX_INVALID_reg_1;
  input RX_ER_reg_0;
  input IDLE_MATCH_2;
  input D;
  input RXNOTINTABLE_INT;
  input FALSE_NIT_reg_0;
  input EXTEND_reg_0;
  input RECEIVED_IDLE;
  input RX_DV0;
  input XMIT_DATA;
  input RX_CONFIG_REG_NULL_reg;

  wire ABILITY_MATCH;
  wire ABILITY_MATCH_2;
  wire ABILITY_MATCH_2_i_2_n_0;
  wire ABILITY_MATCH_2_i_3_n_0;
  wire ABILITY_MATCH_2_i_4_n_0;
  wire ABILITY_MATCH_2_i_8_n_0;
  wire ABILITY_MATCH_2_reg;
  wire [10:0]ABILITY_MATCH_2_reg_0;
  wire ABILITY_MATCH_2_reg_1;
  wire ABILITY_MATCH_i_3_n_0;
  wire ABILITY_MATCH_reg;
  wire [0:0]BASEX_REMOTE_FAULT_RSLVD;
  wire C;
  wire C0;
  wire CGBAD;
  wire CGBAD_REG1;
  wire CGBAD_REG2;
  wire CGBAD_REG3;
  wire CONFIG_REG_MATCH_COMB;
  wire CONSISTENCY_MATCH_i_5_n_0;
  wire CONSISTENCY_MATCH_i_6_n_0;
  wire [7:0]CONSISTENCY_MATCH_reg;
  wire C_REG1;
  wire C_REG2;
  wire C_REG3;
  wire D;
  wire D0p0;
  wire D0p0_REG;
  wire D0p0_REG_i_2_n_0;
  wire EOP;
  wire EOP0;
  wire EOP_REG1;
  wire EOP_REG10;
  wire EOP_i_2_n_0;
  wire EXTEND;
  wire EXTEND_ERR;
  wire EXTEND_ERR0;
  wire EXTEND_REG1;
  wire EXTEND_REG2;
  wire EXTEND_REG3;
  wire EXTEND_i_1_n_0;
  wire EXTEND_reg_0;
  wire EXT_ILLEGAL_K;
  wire EXT_ILLEGAL_K0;
  wire EXT_ILLEGAL_K_REG1;
  wire EXT_ILLEGAL_K_REG2;
  wire FALSE_CARRIER;
  wire FALSE_CARRIER0;
  wire FALSE_CARRIER_REG1;
  wire FALSE_CARRIER_REG2;
  wire FALSE_CARRIER_REG3;
  wire FALSE_CARRIER_i_1_n_0;
  wire [3:0]FALSE_CARRIER_i_2_0;
  wire FALSE_CARRIER_i_3_n_0;
  wire FALSE_DATA;
  wire FALSE_DATA0;
  wire FALSE_DATA_i_2_n_0;
  wire FALSE_DATA_i_3_n_0;
  wire FALSE_K;
  wire FALSE_K0;
  wire FALSE_K_i_2_n_0;
  wire FALSE_NIT;
  wire FALSE_NIT0;
  wire FALSE_NIT_i_2_n_0;
  wire FALSE_NIT_i_3_n_0;
  wire FALSE_NIT_reg_0;
  wire FROM_IDLE_D;
  wire FROM_IDLE_D0;
  wire FROM_RX_CX;
  wire FROM_RX_CX0;
  wire FROM_RX_K;
  wire FROM_RX_K0;
  wire I;
  wire I0;
  wire IDLE_MATCH0;
  wire IDLE_MATCH_2;
  wire \IDLE_REG_reg[0]_0 ;
  wire \IDLE_REG_reg_n_0_[0] ;
  wire \IDLE_REG_reg_n_0_[2] ;
  wire ILLEGAL_K;
  wire ILLEGAL_K0;
  wire ILLEGAL_K_REG1;
  wire ILLEGAL_K_REG2;
  wire I_i_2_n_0;
  wire I_i_3_n_0;
  wire I_i_4_n_0;
  wire I_i_5_n_0;
  wire I_i_6_n_0;
  wire K23p7;
  wire K28p5_REG1;
  wire K28p5_REG1_i_1_n_0;
  wire K28p5_REG2;
  wire K29p7;
  wire [7:0]Q;
  wire R;
  wire RECEIVE;
  wire RECEIVED_IDLE;
  wire RECEIVE_i_1_n_0;
  wire RUDI_C0__0;
  wire RUDI_I0;
  wire RXCHARISK_REG1;
  wire RXCHARISK_REG1_reg_0;
  wire [7:0]RXDATA_REG5;
  wire \RXD[0]_i_1_n_0 ;
  wire \RXD[1]_i_1_n_0 ;
  wire \RXD[2]_i_1_n_0 ;
  wire \RXD[3]_i_1_n_0 ;
  wire \RXD[4]_i_1_n_0 ;
  wire \RXD[5]_i_1_n_0 ;
  wire \RXD[6]_i_1_n_0 ;
  wire \RXD[7]_i_1_n_0 ;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire \RX_CONFIG_REG[15]_i_1_n_0 ;
  wire \RX_CONFIG_REG[7]_i_1_n_0 ;
  wire RX_CONFIG_REG_NULL_i_2_n_0;
  wire RX_CONFIG_REG_NULL_i_3_n_0;
  wire RX_CONFIG_REG_NULL_i_4_n_0;
  wire RX_CONFIG_REG_NULL_i_5_n_0;
  wire RX_CONFIG_REG_NULL_reg;
  wire \RX_CONFIG_REG_reg[12]_0 ;
  wire [15:0]\RX_CONFIG_REG_reg[15]_0 ;
  wire \RX_CONFIG_REG_reg[6]_0 ;
  wire \RX_CONFIG_REG_reg[8]_0 ;
  wire RX_CONFIG_VALID;
  wire RX_CONFIG_VALID_INT0;
  wire RX_CONFIG_VALID_INT_reg_0;
  wire RX_CONFIG_VALID_INT_reg_1;
  wire RX_CONFIG_VALID_INT_reg_2;
  wire \RX_CONFIG_VALID_REG_reg_n_0_[0] ;
  wire \RX_CONFIG_VALID_REG_reg_n_0_[3] ;
  wire RX_DATA_ERROR;
  wire RX_DATA_ERROR0;
  wire RX_DATA_ERROR_i_2_n_0;
  wire RX_DATA_ERROR_i_4_n_0;
  wire RX_DV0;
  wire RX_DV_i_1_n_0;
  wire RX_ER0;
  wire RX_ER_i_3_n_0;
  wire RX_ER_reg_0;
  wire RX_IDLE;
  wire RX_INVALID;
  wire RX_INVALID_i_1_n_0;
  wire RX_INVALID_reg_0;
  wire RX_INVALID_reg_1;
  wire R_REG1;
  wire R_i_2_n_0;
  wire S;
  wire S0;
  wire S2;
  wire SOP;
  wire SOP0;
  wire SOP_REG1;
  wire SOP_REG2;
  wire SOP_REG3;
  wire [0:0]SR;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire S_i_2_n_0;
  wire T;
  wire T_REG1;
  wire T_REG2;
  wire WAIT_FOR_K;
  wire WAIT_FOR_K_i_1_n_0;
  wire XMIT_DATA;
  wire XMIT_DATA_INT;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire out;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire [1:0]status_vector;
  wire userclk2;

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ABILITY_MATCH_2_i_1
       (.I0(ABILITY_MATCH_2_i_2_n_0),
        .I1(ABILITY_MATCH_2_i_3_n_0),
        .I2(ABILITY_MATCH_2_i_4_n_0),
        .I3(\RX_CONFIG_REG_reg[8]_0 ),
        .I4(\RX_CONFIG_REG_reg[6]_0 ),
        .I5(ABILITY_MATCH_2_reg),
        .O(CONFIG_REG_MATCH_COMB));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    ABILITY_MATCH_2_i_2
       (.I0(\RX_CONFIG_REG_reg[15]_0 [2]),
        .I1(ABILITY_MATCH_2_reg_0[2]),
        .I2(ABILITY_MATCH_2_reg_0[9]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [12]),
        .I4(ABILITY_MATCH_2_reg_0[0]),
        .I5(\RX_CONFIG_REG_reg[15]_0 [0]),
        .O(ABILITY_MATCH_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    ABILITY_MATCH_2_i_3
       (.I0(\RX_CONFIG_REG_reg[15]_0 [0]),
        .I1(ABILITY_MATCH_2_reg_0[0]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [1]),
        .I3(ABILITY_MATCH_2_reg_0[1]),
        .I4(\RX_CONFIG_REG_reg[15]_0 [5]),
        .I5(ABILITY_MATCH_2_reg_0[3]),
        .O(ABILITY_MATCH_2_i_3_n_0));
  LUT6 #(
    .INIT(64'h2022000020222022)) 
    ABILITY_MATCH_2_i_4
       (.I0(ABILITY_MATCH_2_i_8_n_0),
        .I1(ABILITY_MATCH_2_reg_1),
        .I2(\RX_CONFIG_REG_reg[15]_0 [9]),
        .I3(ABILITY_MATCH_2_reg_0[7]),
        .I4(\RX_CONFIG_REG_reg[15]_0 [1]),
        .I5(ABILITY_MATCH_2_reg_0[1]),
        .O(ABILITY_MATCH_2_i_4_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    ABILITY_MATCH_2_i_5
       (.I0(\RX_CONFIG_REG_reg[15]_0 [8]),
        .I1(ABILITY_MATCH_2_reg_0[6]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [13]),
        .I3(ABILITY_MATCH_2_reg_0[10]),
        .I4(\RX_CONFIG_REG_reg[15]_0 [9]),
        .I5(ABILITY_MATCH_2_reg_0[7]),
        .O(\RX_CONFIG_REG_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    ABILITY_MATCH_2_i_6
       (.I0(\RX_CONFIG_REG_reg[15]_0 [6]),
        .I1(ABILITY_MATCH_2_reg_0[4]),
        .I2(ABILITY_MATCH_2_reg_0[6]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [8]),
        .I4(\RX_CONFIG_REG_reg[15]_0 [10]),
        .I5(ABILITY_MATCH_2_reg_0[8]),
        .O(\RX_CONFIG_REG_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hD00DD00D0000D00D)) 
    ABILITY_MATCH_2_i_8
       (.I0(\RX_CONFIG_REG_reg[15]_0 [2]),
        .I1(ABILITY_MATCH_2_reg_0[2]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [7]),
        .I3(ABILITY_MATCH_2_reg_0[5]),
        .I4(ABILITY_MATCH_2_reg_0[4]),
        .I5(\RX_CONFIG_REG_reg[15]_0 [6]),
        .O(ABILITY_MATCH_2_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000055555755)) 
    ABILITY_MATCH_i_1
       (.I0(RX_CONFIG_VALID),
        .I1(ABILITY_MATCH_2_i_2_n_0),
        .I2(ABILITY_MATCH_2_i_3_n_0),
        .I3(ABILITY_MATCH_2_i_4_n_0),
        .I4(ABILITY_MATCH_reg),
        .I5(ABILITY_MATCH_i_3_n_0),
        .O(RX_CONFIG_VALID_INT_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    ABILITY_MATCH_i_3
       (.I0(RX_IDLE),
        .I1(out),
        .I2(ABILITY_MATCH),
        .I3(RX_CONFIG_VALID),
        .I4(ABILITY_MATCH_2),
        .O(ABILITY_MATCH_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \BASEX_REMOTE_FAULT[1]_i_1 
       (.I0(\RX_CONFIG_REG_reg[15]_0 [15]),
        .O(BASEX_REMOTE_FAULT_RSLVD));
  FDRE CGBAD_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD),
        .Q(CGBAD_REG1),
        .R(1'b0));
  FDRE CGBAD_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG1),
        .Q(CGBAD_REG2),
        .R(1'b0));
  FDRE CGBAD_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG2),
        .Q(CGBAD_REG3),
        .R(\IDLE_REG_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    CGBAD_i_1
       (.I0(D),
        .I1(RXNOTINTABLE_INT),
        .O(S2));
  FDRE CGBAD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S2),
        .Q(CGBAD),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    CONSISTENCY_MATCH_i_3
       (.I0(\RX_CONFIG_REG_reg[15]_0 [12]),
        .I1(CONSISTENCY_MATCH_reg[6]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [13]),
        .I3(CONSISTENCY_MATCH_reg[7]),
        .I4(CONSISTENCY_MATCH_i_5_n_0),
        .I5(CONSISTENCY_MATCH_i_6_n_0),
        .O(\RX_CONFIG_REG_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CONSISTENCY_MATCH_i_5
       (.I0(\RX_CONFIG_REG_reg[15]_0 [1]),
        .I1(CONSISTENCY_MATCH_reg[1]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [2]),
        .I3(CONSISTENCY_MATCH_reg[2]),
        .I4(CONSISTENCY_MATCH_reg[0]),
        .I5(\RX_CONFIG_REG_reg[15]_0 [0]),
        .O(CONSISTENCY_MATCH_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    CONSISTENCY_MATCH_i_6
       (.I0(\RX_CONFIG_REG_reg[15]_0 [5]),
        .I1(CONSISTENCY_MATCH_reg[5]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [4]),
        .I3(CONSISTENCY_MATCH_reg[4]),
        .I4(CONSISTENCY_MATCH_reg[3]),
        .I5(\RX_CONFIG_REG_reg[15]_0 [3]),
        .O(CONSISTENCY_MATCH_i_6_n_0));
  FDRE C_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C),
        .Q(C_REG1),
        .R(1'b0));
  FDRE C_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG1),
        .Q(C_REG2),
        .R(1'b0));
  FDRE C_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG2),
        .Q(C_REG3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    C_i_1
       (.I0(K28p5_REG1),
        .I1(I_i_3_n_0),
        .O(C0));
  FDRE C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C0),
        .Q(C),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    D0p0_REG_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(RXCHARISK_REG1_reg_0),
        .I3(D0p0_REG_i_2_n_0),
        .O(D0p0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    D0p0_REG_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(D0p0_REG_i_2_n_0));
  FDRE D0p0_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D0p0),
        .Q(D0p0_REG),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    EOP_REG1_i_1
       (.I0(EOP),
        .I1(EXTEND),
        .I2(EXTEND_REG1),
        .O(EOP_REG10));
  FDRE EOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP_REG10),
        .Q(EOP_REG1),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888000)) 
    EOP_i_1
       (.I0(T_REG2),
        .I1(R_REG1),
        .I2(RXEVEN),
        .I3(K28p5_REG1),
        .I4(R),
        .I5(EOP_i_2_n_0),
        .O(EOP0));
  LUT5 #(
    .INIT(32'hFF808080)) 
    EOP_i_2
       (.I0(D0p0_REG),
        .I1(C_REG1),
        .I2(RXEVEN),
        .I3(K28p5_REG1),
        .I4(RX_IDLE),
        .O(EOP_i_2_n_0));
  FDRE EOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP0),
        .Q(EOP),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    EXTEND_ERR_i_1
       (.I0(EXT_ILLEGAL_K_REG2),
        .I1(EXTEND_REG3),
        .I2(CGBAD_REG3),
        .O(EXTEND_ERR0));
  FDRE EXTEND_ERR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_ERR0),
        .Q(EXTEND_ERR),
        .R(SYNC_STATUS_REG0));
  FDRE EXTEND_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND),
        .Q(EXTEND_REG1),
        .R(1'b0));
  FDRE EXTEND_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG1),
        .Q(EXTEND_REG2),
        .R(1'b0));
  FDRE EXTEND_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG2),
        .Q(EXTEND_REG3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h808080FF80808080)) 
    EXTEND_i_1
       (.I0(R_REG1),
        .I1(R),
        .I2(RECEIVE),
        .I3(EXTEND_reg_0),
        .I4(S),
        .I5(EXTEND),
        .O(EXTEND_i_1_n_0));
  FDRE EXTEND_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_i_1_n_0),
        .Q(EXTEND),
        .R(SYNC_STATUS_REG0));
  FDRE EXT_ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K),
        .Q(EXT_ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
  FDRE EXT_ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K_REG1),
        .Q(EXT_ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
  LUT5 #(
    .INIT(32'h00000700)) 
    EXT_ILLEGAL_K_i_1
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .I2(S),
        .I3(EXTEND_REG1),
        .I4(R),
        .O(EXT_ILLEGAL_K0));
  FDRE EXT_ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K0),
        .Q(EXT_ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
  FDRE FALSE_CARRIER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER),
        .Q(FALSE_CARRIER_REG1),
        .R(1'b0));
  FDRE FALSE_CARRIER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG1),
        .Q(FALSE_CARRIER_REG2),
        .R(1'b0));
  FDRE FALSE_CARRIER_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG2),
        .Q(FALSE_CARRIER_REG3),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'hF7F0)) 
    FALSE_CARRIER_i_1
       (.I0(K28p5_REG1),
        .I1(RXEVEN),
        .I2(FALSE_CARRIER0),
        .I3(FALSE_CARRIER),
        .O(FALSE_CARRIER_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    FALSE_CARRIER_i_2
       (.I0(FALSE_CARRIER_i_3_n_0),
        .I1(FALSE_K),
        .I2(FALSE_DATA),
        .I3(FALSE_NIT),
        .I4(K28p5_REG1),
        .I5(S),
        .O(FALSE_CARRIER0));
  LUT5 #(
    .INIT(32'h80888080)) 
    FALSE_CARRIER_i_3
       (.I0(RX_IDLE),
        .I1(RXSYNC_STATUS),
        .I2(XMIT_DATA_INT),
        .I3(FALSE_CARRIER_i_2_0[3]),
        .I4(FALSE_CARRIER_i_2_0[0]),
        .O(FALSE_CARRIER_i_3_n_0));
  FDRE FALSE_CARRIER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_i_1_n_0),
        .Q(FALSE_CARRIER),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'h0000000008882220)) 
    FALSE_DATA_i_1
       (.I0(FALSE_DATA_i_2_n_0),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(FALSE_DATA_i_3_n_0),
        .O(FALSE_DATA0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h08300800)) 
    FALSE_DATA_i_2
       (.I0(Q[2]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[0]),
        .O(FALSE_DATA_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    FALSE_DATA_i_3
       (.I0(RXNOTINTABLE_INT),
        .I1(RXCHARISK_REG1_reg_0),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(FALSE_DATA_i_3_n_0));
  FDRE FALSE_DATA_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_DATA0),
        .Q(FALSE_DATA),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00820000)) 
    FALSE_K_i_1
       (.I0(FALSE_K_i_2_n_0),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(RXNOTINTABLE_INT),
        .I4(Q[7]),
        .O(FALSE_K0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    FALSE_K_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(RXCHARISK_REG1_reg_0),
        .O(FALSE_K_i_2_n_0));
  FDRE FALSE_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_K0),
        .Q(FALSE_K),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    FALSE_NIT_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(FALSE_NIT_i_2_n_0),
        .O(FALSE_NIT0));
  LUT6 #(
    .INIT(64'hFAAFAFFCAFFCFCCF)) 
    FALSE_NIT_i_2
       (.I0(D0p0_REG_i_2_n_0),
        .I1(FALSE_NIT_i_3_n_0),
        .I2(RXCHARISK_REG1_reg_0),
        .I3(FALSE_NIT_reg_0),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(FALSE_NIT_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    FALSE_NIT_i_3
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(FALSE_NIT_i_3_n_0));
  FDRE FALSE_NIT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_NIT0),
        .Q(FALSE_NIT),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    FROM_IDLE_D_i_1
       (.I0(K28p5_REG1),
        .I1(RX_IDLE),
        .I2(WAIT_FOR_K),
        .I3(RX_INVALID_reg_1),
        .O(FROM_IDLE_D0));
  FDRE FROM_IDLE_D_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_IDLE_D0),
        .Q(FROM_IDLE_D),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'hFFFFA8FFFCFCA8A8)) 
    FROM_RX_CX_i_1
       (.I0(RXCHARISK_REG1),
        .I1(C_REG1),
        .I2(C_REG2),
        .I3(EXTEND_reg_0),
        .I4(CGBAD),
        .I5(C_REG3),
        .O(FROM_RX_CX0));
  FDRE FROM_RX_CX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_CX0),
        .Q(FROM_RX_CX),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'h00E0)) 
    FROM_RX_K_i_1
       (.I0(RXCHARISK_REG1),
        .I1(CGBAD),
        .I2(K28p5_REG2),
        .I3(RX_INVALID_reg_1),
        .O(FROM_RX_K0));
  FDRE FROM_RX_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_K0),
        .Q(FROM_RX_K),
        .R(SYNC_STATUS_REG0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    IDLE_MATCH_i_1
       (.I0(RX_IDLE),
        .I1(IDLE_MATCH_2),
        .O(IDLE_MATCH0));
  FDRE \IDLE_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE),
        .Q(\IDLE_REG_reg_n_0_[0] ),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \IDLE_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\IDLE_REG_reg_n_0_[0] ),
        .Q(p_0_in1_in),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \IDLE_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(\IDLE_REG_reg_n_0_[2] ),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K),
        .Q(ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
  FDRE ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K_REG1),
        .Q(ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'h0010)) 
    ILLEGAL_K_i_1
       (.I0(R),
        .I1(K28p5_REG1),
        .I2(RXCHARISK_REG1),
        .I3(T),
        .O(ILLEGAL_K0));
  FDRE ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K0),
        .Q(ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
  FDRE I_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I),
        .Q(RX_IDLE),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E0EC)) 
    I_i_1
       (.I0(RX_IDLE),
        .I1(K28p5_REG1),
        .I2(RX_INVALID_reg_1),
        .I3(RXCHARISK_REG1_reg_0),
        .I4(I_i_2_n_0),
        .I5(I_i_3_n_0),
        .O(I0));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    I_i_2
       (.I0(K28p5_REG1),
        .I1(FALSE_NIT),
        .I2(FALSE_DATA),
        .I3(FALSE_K),
        .I4(RXEVEN),
        .O(I_i_2_n_0));
  LUT6 #(
    .INIT(64'h00010001FFFF0001)) 
    I_i_3
       (.I0(I_i_4_n_0),
        .I1(RXCHARISK_REG1_reg_0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(I_i_5_n_0),
        .I5(I_i_6_n_0),
        .O(I_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    I_i_4
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(I_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    I_i_5
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(I_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    I_i_6
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(RXCHARISK_REG1_reg_0),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(I_i_6_n_0));
  FDRE I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I0),
        .Q(I),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    K28p5_REG1_i_1
       (.I0(FALSE_K_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(K28p5_REG1_i_1_n_0));
  FDRE K28p5_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_REG1_i_1_n_0),
        .Q(K28p5_REG1),
        .R(1'b0));
  FDRE K28p5_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_REG1),
        .Q(K28p5_REG2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDC)) 
    RECEIVED_IDLE_i_1
       (.I0(RX_CONFIG_VALID),
        .I1(RX_IDLE),
        .I2(RECEIVED_IDLE),
        .O(RX_CONFIG_VALID_INT_reg_1));
  LUT3 #(
    .INIT(8'hDC)) 
    RECEIVE_i_1
       (.I0(EOP),
        .I1(SOP_REG2),
        .I2(RECEIVE),
        .O(RECEIVE_i_1_n_0));
  FDRE RECEIVE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RECEIVE_i_1_n_0),
        .Q(RECEIVE),
        .R(SYNC_STATUS_REG0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RUDI_C0
       (.I0(p_0_in2_in),
        .I1(\RX_CONFIG_VALID_REG_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .O(RUDI_C0__0));
  FDRE RUDI_C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_C0__0),
        .Q(status_vector[0]),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    RUDI_I_i_1
       (.I0(\IDLE_REG_reg_n_0_[2] ),
        .I1(p_0_in1_in),
        .O(RUDI_I0));
  FDRE RUDI_I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_I0),
        .Q(status_vector[1]),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE RXCHARISK_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXCHARISK_REG1_reg_0),
        .Q(RXCHARISK_REG1),
        .R(1'b0));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[0]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[0]),
        .Q(RXDATA_REG5[0]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[1]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[1]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[1]),
        .Q(RXDATA_REG5[1]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[2]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[2]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[2]),
        .Q(RXDATA_REG5[2]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[3]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[3]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[3]),
        .Q(RXDATA_REG5[3]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[4]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[4]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[4]),
        .Q(RXDATA_REG5[4]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[5]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[5]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[5]),
        .Q(RXDATA_REG5[5]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[6]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[6]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[6]),
        .Q(RXDATA_REG5[6]));
  (* srl_bus_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg " *) 
  (* srl_name = "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[7]_srl5 " *) 
  SRL16E \RXDATA_REG5_reg[7]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[7]),
        .Q(RXDATA_REG5[7]));
  LUT4 #(
    .INIT(16'hBBBA)) 
    \RXD[0]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(RXDATA_REG5[0]),
        .O(\RXD[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \RXD[1]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[1]),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\RXD[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RXD[2]_i_1 
       (.I0(RXDATA_REG5[2]),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(SOP_REG3),
        .O(\RXD[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \RXD[3]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[3]),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\RXD[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \RXD[4]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_ERR),
        .I3(EXTEND_REG1),
        .I4(RXDATA_REG5[4]),
        .O(\RXD[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \RXD[5]_i_1 
       (.I0(RXDATA_REG5[5]),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(SOP_REG3),
        .O(\RXD[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \RXD[6]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(RXDATA_REG5[6]),
        .O(\RXD[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \RXD[7]_i_1 
       (.I0(RXDATA_REG5[7]),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(SOP_REG3),
        .O(\RXD[7]_i_1_n_0 ));
  FDRE \RXD_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[0]_i_1_n_0 ),
        .Q(gmii_rxd[0]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[1]_i_1_n_0 ),
        .Q(gmii_rxd[1]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[2]_i_1_n_0 ),
        .Q(gmii_rxd[2]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[3]_i_1_n_0 ),
        .Q(gmii_rxd[3]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[4]_i_1_n_0 ),
        .Q(gmii_rxd[4]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[5]_i_1_n_0 ),
        .Q(gmii_rxd[5]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[6]_i_1_n_0 ),
        .Q(gmii_rxd[6]),
        .R(FALSE_CARRIER_i_2_0[2]));
  FDRE \RXD_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RXD[7]_i_1_n_0 ),
        .Q(gmii_rxd[7]),
        .R(FALSE_CARRIER_i_2_0[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \RX_CONFIG_REG[15]_i_1 
       (.I0(RXCHARISK_REG1_reg_0),
        .I1(C_REG1),
        .I2(RXCHARISK_REG1),
        .O(\RX_CONFIG_REG[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RX_CONFIG_REG[7]_i_1 
       (.I0(C),
        .I1(RXCHARISK_REG1_reg_0),
        .O(\RX_CONFIG_REG[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    RX_CONFIG_REG_NULL_i_1
       (.I0(RX_CONFIG_REG_NULL_i_2_n_0),
        .I1(RX_CONFIG_REG_NULL_i_3_n_0),
        .I2(RX_CONFIG_REG_NULL_i_4_n_0),
        .I3(RX_CONFIG_REG_NULL_i_5_n_0),
        .I4(RX_CONFIG_VALID),
        .I5(RX_CONFIG_REG_NULL_reg),
        .O(RX_CONFIG_VALID_INT_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    RX_CONFIG_REG_NULL_i_2
       (.I0(\RX_CONFIG_REG_reg[15]_0 [12]),
        .I1(\RX_CONFIG_REG_reg[15]_0 [15]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [13]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [1]),
        .O(RX_CONFIG_REG_NULL_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    RX_CONFIG_REG_NULL_i_3
       (.I0(\RX_CONFIG_REG_reg[15]_0 [6]),
        .I1(\RX_CONFIG_REG_reg[15]_0 [5]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [11]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [4]),
        .O(RX_CONFIG_REG_NULL_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RX_CONFIG_REG_NULL_i_4
       (.I0(\RX_CONFIG_REG_reg[15]_0 [2]),
        .I1(\RX_CONFIG_REG_reg[15]_0 [14]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [10]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [0]),
        .O(RX_CONFIG_REG_NULL_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    RX_CONFIG_REG_NULL_i_5
       (.I0(\RX_CONFIG_REG_reg[15]_0 [8]),
        .I1(\RX_CONFIG_REG_reg[15]_0 [7]),
        .I2(\RX_CONFIG_REG_reg[15]_0 [9]),
        .I3(\RX_CONFIG_REG_reg[15]_0 [3]),
        .O(RX_CONFIG_REG_NULL_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RX_CONFIG_REG_REG[15]_i_1 
       (.I0(out),
        .I1(RX_IDLE),
        .O(SR));
  FDRE \RX_CONFIG_REG_reg[0] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[10] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[11] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[12] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[13] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[14] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[15] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[1] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[2] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[3] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[4] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[5] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[6] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[7] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[8] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \RX_CONFIG_REG_reg[9] 
       (.C(userclk2),
        .CE(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\RX_CONFIG_REG_reg[15]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    RX_CONFIG_VALID_INT_i_1
       (.I0(\RX_CONFIG_REG[15]_i_1_n_0 ),
        .I1(CGBAD),
        .I2(RXSYNC_STATUS),
        .I3(D),
        .I4(RXNOTINTABLE_INT),
        .O(RX_CONFIG_VALID_INT0));
  FDRE RX_CONFIG_VALID_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT0),
        .Q(RX_CONFIG_VALID),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \RX_CONFIG_VALID_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID),
        .Q(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \RX_CONFIG_VALID_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\RX_CONFIG_VALID_REG_reg_n_0_[0] ),
        .Q(p_0_in2_in),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \RX_CONFIG_VALID_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in2_in),
        .Q(p_1_in),
        .R(\IDLE_REG_reg[0]_0 ));
  FDRE \RX_CONFIG_VALID_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\RX_CONFIG_VALID_REG_reg_n_0_[3] ),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h888AAAAA88888888)) 
    RX_DATA_ERROR_i_1
       (.I0(RECEIVE),
        .I1(RX_DATA_ERROR_i_2_n_0),
        .I2(R),
        .I3(EXTEND_reg_0),
        .I4(R_REG1),
        .I5(T_REG2),
        .O(RX_DATA_ERROR0));
  LUT5 #(
    .INIT(32'hFFFF4544)) 
    RX_DATA_ERROR_i_2
       (.I0(R_REG1),
        .I1(K28p5_REG1),
        .I2(T_REG1),
        .I3(R),
        .I4(RX_DATA_ERROR_i_4_n_0),
        .O(RX_DATA_ERROR_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    RX_DATA_ERROR_i_4
       (.I0(CGBAD_REG3),
        .I1(C_REG1),
        .I2(ILLEGAL_K_REG2),
        .I3(RX_IDLE),
        .O(RX_DATA_ERROR_i_4_n_0));
  FDRE RX_DATA_ERROR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DATA_ERROR0),
        .Q(RX_DATA_ERROR),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'hAAAAEEEAAAAAAAAA)) 
    RX_DV_i_1
       (.I0(RX_DV0),
        .I1(XMIT_DATA),
        .I2(RECEIVE),
        .I3(RXSYNC_STATUS),
        .I4(EOP_REG1),
        .I5(gmii_rx_dv),
        .O(RX_DV_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RX_DV_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DV_i_1_n_0),
        .Q(gmii_rx_dv),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    RX_ER_i_1
       (.I0(RX_ER_reg_0),
        .I1(RX_ER_i_3_n_0),
        .I2(RXSYNC_STATUS),
        .I3(RX_DATA_ERROR),
        .I4(FALSE_CARRIER_i_2_0[2]),
        .I5(FALSE_CARRIER_i_2_0[1]),
        .O(RX_ER0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    RX_ER_i_3
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .O(RX_ER_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RX_ER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_ER0),
        .Q(gmii_rx_er),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF55FDFFFF00FC)) 
    RX_INVALID_i_1
       (.I0(K28p5_REG1),
        .I1(FROM_RX_K),
        .I2(FROM_IDLE_D),
        .I3(RX_INVALID_reg_1),
        .I4(FROM_RX_CX),
        .I5(RX_INVALID),
        .O(RX_INVALID_i_1_n_0));
  FDRE RX_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_INVALID_i_1_n_0),
        .Q(RX_INVALID),
        .R(SYNC_STATUS_REG0));
  FDRE R_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R),
        .Q(R_REG1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    R_i_1
       (.I0(R_i_2_n_0),
        .I1(RXCHARISK_REG1_reg_0),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(K23p7));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    R_i_2
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(R_i_2_n_0));
  FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K23p7),
        .Q(R),
        .R(1'b0));
  FDRE SOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP),
        .Q(SOP_REG1),
        .R(1'b0));
  FDRE SOP_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG1),
        .Q(SOP_REG2),
        .R(1'b0));
  FDRE SOP_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG2),
        .Q(SOP_REG3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20202000)) 
    SOP_i_1
       (.I0(RX_INVALID_reg_1),
        .I1(WAIT_FOR_K),
        .I2(S),
        .I3(RX_IDLE),
        .I4(EXTEND),
        .O(SOP0));
  FDRE SOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP0),
        .Q(SOP),
        .R(\IDLE_REG_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h55554544)) 
    \STATE[2]_i_8 
       (.I0(RX_INVALID),
        .I1(XMIT_DATA_INT),
        .I2(FALSE_CARRIER_i_2_0[3]),
        .I3(FALSE_CARRIER_i_2_0[0]),
        .I4(RXSYNC_STATUS),
        .O(RX_INVALID_reg_0));
  FDRE SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b1),
        .Q(SYNC_STATUS_REG),
        .R(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    S_i_1
       (.I0(S2),
        .I1(Q[1]),
        .I2(RXCHARISK_REG1_reg_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(S_i_2_n_0),
        .O(S0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    S_i_2
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[3]),
        .O(S_i_2_n_0));
  FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(1'b0));
  FDRE T_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T),
        .Q(T_REG1),
        .R(1'b0));
  FDRE T_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T_REG1),
        .Q(T_REG2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    T_i_1__0
       (.I0(Q[1]),
        .I1(RXCHARISK_REG1_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(S_i_2_n_0),
        .O(K29p7));
  FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K29p7),
        .Q(T),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F0F)) 
    WAIT_FOR_K_i_1
       (.I0(K28p5_REG1),
        .I1(RXEVEN),
        .I2(SYNC_STATUS_REG),
        .I3(WAIT_FOR_K),
        .O(WAIT_FOR_K_i_1_n_0));
  FDRE WAIT_FOR_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(WAIT_FOR_K_i_1_n_0),
        .Q(WAIT_FOR_K),
        .R(SYNC_STATUS_REG0));
endmodule

(* ORIG_REF_NAME = "SYNCHRONISE" *) 
module gig_ethernet_pcs_pma_0_SYNCHRONISE
   (RXEVEN,
    RXSYNC_STATUS,
    SYNC_STATUS_reg_0,
    SYNC_STATUS_REG0,
    EVEN_reg_0,
    SIGNAL_DETECT_MOD,
    userclk2,
    EVEN_reg_1,
    EVEN_reg_2,
    Q,
    XMIT_DATA_INT,
    RX_INVALID,
    \FSM_onehot_STATE_reg[12]_0 ,
    RXNOTINTABLE_INT,
    D,
    S2,
    K28p5_REG1);
  output RXEVEN;
  output RXSYNC_STATUS;
  output [0:0]SYNC_STATUS_reg_0;
  output SYNC_STATUS_REG0;
  output EVEN_reg_0;
  input SIGNAL_DETECT_MOD;
  input userclk2;
  input EVEN_reg_1;
  input EVEN_reg_2;
  input [2:0]Q;
  input XMIT_DATA_INT;
  input RX_INVALID;
  input \FSM_onehot_STATE_reg[12]_0 ;
  input RXNOTINTABLE_INT;
  input D;
  input S2;
  input K28p5_REG1;

  wire D;
  wire EVEN_i_1_n_0;
  wire EVEN_reg_0;
  wire EVEN_reg_1;
  wire EVEN_reg_2;
  wire \FSM_onehot_STATE[0]_i_1_n_0 ;
  wire \FSM_onehot_STATE[10]_i_1_n_0 ;
  wire \FSM_onehot_STATE[11]_i_1_n_0 ;
  wire \FSM_onehot_STATE[12]_i_1_n_0 ;
  wire \FSM_onehot_STATE[12]_i_2_n_0 ;
  wire \FSM_onehot_STATE[12]_i_3_n_0 ;
  wire \FSM_onehot_STATE[12]_i_4_n_0 ;
  wire \FSM_onehot_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_STATE[2]_i_2_n_0 ;
  wire \FSM_onehot_STATE[2]_i_3_n_0 ;
  wire \FSM_onehot_STATE[3]_i_1_n_0 ;
  wire \FSM_onehot_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_STATE[5]_i_1_n_0 ;
  wire \FSM_onehot_STATE[6]_i_1_n_0 ;
  wire \FSM_onehot_STATE[7]_i_1_n_0 ;
  wire \FSM_onehot_STATE[8]_i_1_n_0 ;
  wire \FSM_onehot_STATE[9]_i_1_n_0 ;
  wire \FSM_onehot_STATE_reg[12]_0 ;
  wire \FSM_onehot_STATE_reg_n_0_[0] ;
  wire \FSM_onehot_STATE_reg_n_0_[10] ;
  wire \FSM_onehot_STATE_reg_n_0_[11] ;
  wire \FSM_onehot_STATE_reg_n_0_[12] ;
  wire \FSM_onehot_STATE_reg_n_0_[1] ;
  wire \FSM_onehot_STATE_reg_n_0_[2] ;
  wire \FSM_onehot_STATE_reg_n_0_[4] ;
  wire \FSM_onehot_STATE_reg_n_0_[5] ;
  wire \FSM_onehot_STATE_reg_n_0_[6] ;
  wire \FSM_onehot_STATE_reg_n_0_[8] ;
  wire \FSM_onehot_STATE_reg_n_0_[9] ;
  wire [1:0]GOOD_CGS;
  wire \GOOD_CGS[0]_i_1_n_0 ;
  wire \GOOD_CGS[1]_i_1_n_0 ;
  wire \GOOD_CGS[1]_i_2_n_0 ;
  wire \GOOD_CGS[1]_i_3_n_0 ;
  wire K28p5_REG1;
  wire [2:0]Q;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire RX_INVALID;
  wire S2;
  wire SIGNAL_DETECT_MOD;
  wire SIGNAL_DETECT_REG;
  wire SYNC_STATUS_REG0;
  wire SYNC_STATUS_i_1_n_0;
  wire SYNC_STATUS_i_2_n_0;
  wire [0:0]SYNC_STATUS_reg_0;
  wire XMIT_DATA_INT;
  wire p_0_in;
  wire p_1_in;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    EVEN_i_1
       (.I0(RXSYNC_STATUS),
        .I1(EVEN_reg_2),
        .I2(RXEVEN),
        .O(EVEN_i_1_n_0));
  FDRE EVEN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EVEN_i_1_n_0),
        .Q(RXEVEN),
        .R(EVEN_reg_1));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_STATE[0]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I1(EVEN_reg_2),
        .I2(RXNOTINTABLE_INT),
        .I3(D),
        .I4(RXEVEN),
        .O(\FSM_onehot_STATE[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[10]_i_1 
       (.I0(EVEN_reg_2),
        .I1(\FSM_onehot_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_STATE[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h54554444)) 
    \FSM_onehot_STATE[11]_i_1 
       (.I0(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I2(GOOD_CGS[0]),
        .I3(GOOD_CGS[1]),
        .I4(\FSM_onehot_STATE_reg_n_0_[11] ),
        .O(\FSM_onehot_STATE[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_onehot_STATE[12]_i_1 
       (.I0(EVEN_reg_1),
        .I1(SIGNAL_DETECT_REG),
        .I2(Q[1]),
        .O(\FSM_onehot_STATE[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF444)) 
    \FSM_onehot_STATE[12]_i_2 
       (.I0(\FSM_onehot_STATE_reg[12]_0 ),
        .I1(p_0_in),
        .I2(\FSM_onehot_STATE[12]_i_3_n_0 ),
        .I3(\FSM_onehot_STATE_reg_n_0_[11] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[12] ),
        .I5(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .O(\FSM_onehot_STATE[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_STATE[12]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .O(\FSM_onehot_STATE[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_STATE[12]_i_4 
       (.I0(RXNOTINTABLE_INT),
        .I1(D),
        .I2(RXEVEN),
        .I3(EVEN_reg_2),
        .O(\FSM_onehot_STATE[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000B3B00000A0A)) 
    \FSM_onehot_STATE[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(\FSM_onehot_STATE_reg[12]_0 ),
        .I2(EVEN_reg_2),
        .I3(RXEVEN),
        .I4(S2),
        .I5(\FSM_onehot_STATE_reg_n_0_[0] ),
        .O(\FSM_onehot_STATE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFE00)) 
    \FSM_onehot_STATE[2]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[10] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_STATE_reg[12]_0 ),
        .I4(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I5(\FSM_onehot_STATE[2]_i_2_n_0 ),
        .O(\FSM_onehot_STATE[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4F44444444)) 
    \FSM_onehot_STATE[2]_i_2 
       (.I0(EVEN_reg_2),
        .I1(\FSM_onehot_STATE_reg_n_0_[2] ),
        .I2(\FSM_onehot_STATE[2]_i_3_n_0 ),
        .I3(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I5(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .O(\FSM_onehot_STATE[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_STATE[2]_i_3 
       (.I0(p_1_in),
        .I1(\FSM_onehot_STATE_reg_n_0_[5] ),
        .O(\FSM_onehot_STATE[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_STATE[3]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(EVEN_reg_2),
        .I2(RXNOTINTABLE_INT),
        .I3(D),
        .I4(RXEVEN),
        .O(\FSM_onehot_STATE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010FF00001050)) 
    \FSM_onehot_STATE[4]_i_1 
       (.I0(\FSM_onehot_STATE_reg[12]_0 ),
        .I1(RXEVEN),
        .I2(\FSM_onehot_STATE_reg_n_0_[10] ),
        .I3(EVEN_reg_2),
        .I4(S2),
        .I5(\FSM_onehot_STATE_reg_n_0_[4] ),
        .O(\FSM_onehot_STATE[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h54554444)) 
    \FSM_onehot_STATE[5]_i_1 
       (.I0(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I1(p_1_in),
        .I2(GOOD_CGS[0]),
        .I3(GOOD_CGS[1]),
        .I4(\FSM_onehot_STATE_reg_n_0_[5] ),
        .O(\FSM_onehot_STATE[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0040404040)) 
    \FSM_onehot_STATE[6]_i_1 
       (.I0(GOOD_CGS[0]),
        .I1(GOOD_CGS[1]),
        .I2(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[11] ),
        .I5(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .O(\FSM_onehot_STATE[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFF80000)) 
    \FSM_onehot_STATE[7]_i_1 
       (.I0(EVEN_reg_2),
        .I1(RXEVEN),
        .I2(D),
        .I3(RXNOTINTABLE_INT),
        .I4(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I5(\FSM_onehot_STATE_reg_n_0_[6] ),
        .O(\FSM_onehot_STATE[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h54554444)) 
    \FSM_onehot_STATE[8]_i_1 
       (.I0(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I1(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I2(GOOD_CGS[0]),
        .I3(GOOD_CGS[1]),
        .I4(\FSM_onehot_STATE_reg_n_0_[8] ),
        .O(\FSM_onehot_STATE[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h8B888888)) 
    \FSM_onehot_STATE[9]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[12] ),
        .I1(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I2(GOOD_CGS[0]),
        .I3(GOOD_CGS[1]),
        .I4(\FSM_onehot_STATE_reg_n_0_[8] ),
        .O(\FSM_onehot_STATE[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[0]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[0] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[10] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[11]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[11] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[12]_i_2_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[12] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[1]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[1] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[2]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[2] ),
        .S(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[3]_i_1_n_0 ),
        .Q(p_0_in),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[4]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[4] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[5]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[5] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[6]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[6] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[7]_i_1_n_0 ),
        .Q(p_1_in),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[8]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[8] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[9]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[9] ),
        .R(\FSM_onehot_STATE[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GOOD_CGS[0]_i_1 
       (.I0(GOOD_CGS[0]),
        .O(\GOOD_CGS[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GOOD_CGS[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[6] ),
        .I1(EVEN_reg_1),
        .I2(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I3(p_1_in),
        .O(\GOOD_CGS[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \GOOD_CGS[1]_i_2 
       (.I0(EVEN_reg_2),
        .I1(RXEVEN),
        .I2(D),
        .I3(RXNOTINTABLE_INT),
        .O(\GOOD_CGS[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GOOD_CGS[1]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .O(\GOOD_CGS[1]_i_3_n_0 ));
  FDRE \GOOD_CGS_reg[0] 
       (.C(userclk2),
        .CE(\GOOD_CGS[1]_i_2_n_0 ),
        .D(\GOOD_CGS[0]_i_1_n_0 ),
        .Q(GOOD_CGS[0]),
        .R(\GOOD_CGS[1]_i_1_n_0 ));
  FDRE \GOOD_CGS_reg[1] 
       (.C(userclk2),
        .CE(\GOOD_CGS[1]_i_2_n_0 ),
        .D(\GOOD_CGS[1]_i_3_n_0 ),
        .Q(GOOD_CGS[1]),
        .R(\GOOD_CGS[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    RX_DATA_ERROR_i_3
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .O(EVEN_reg_0));
  LUT5 #(
    .INIT(32'hFFFF0051)) 
    \RX_RUDI_INVALID_DELAY[0]_i_1 
       (.I0(RXSYNC_STATUS),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(XMIT_DATA_INT),
        .I4(RX_INVALID),
        .O(SYNC_STATUS_reg_0));
  FDRE SIGNAL_DETECT_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SIGNAL_DETECT_MOD),
        .Q(SIGNAL_DETECT_REG),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hB)) 
    SYNC_STATUS_REG_i_1
       (.I0(EVEN_reg_1),
        .I1(RXSYNC_STATUS),
        .O(SYNC_STATUS_REG0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01550000)) 
    SYNC_STATUS_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I3(\FSM_onehot_STATE[12]_i_4_n_0 ),
        .I4(RXSYNC_STATUS),
        .I5(SYNC_STATUS_i_2_n_0),
        .O(SYNC_STATUS_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020202)) 
    SYNC_STATUS_i_2
       (.I0(p_0_in),
        .I1(RXNOTINTABLE_INT),
        .I2(D),
        .I3(RXEVEN),
        .I4(EVEN_reg_2),
        .I5(\FSM_onehot_STATE_reg[12]_0 ),
        .O(SYNC_STATUS_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_i_1_n_0),
        .Q(RXSYNC_STATUS),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TX" *) 
module gig_ethernet_pcs_pma_0_TX
   (\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg ,
    D,
    \CODE_GRP_CNT_reg[0]_0 ,
    \CODE_GRP_CNT_reg[0]_1 ,
    \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0 ,
    \NO_QSGMII_DATA.TXDATA_reg[7]_0 ,
    \NO_QSGMII_DATA.TXDATA_reg[5]_0 ,
    \NO_QSGMII_DATA.TXDATA_reg[3]_0 ,
    \NO_QSGMII_DATA.TXDATA_reg[2]_0 ,
    \NO_QSGMII_DATA.TXCHARISK_reg_0 ,
    \NO_QSGMII_DATA.TXCHARISK_reg_1 ,
    \NO_QSGMII_DATA.TXDATA_reg[7]_1 ,
    \NO_QSGMII_DATA.TXDATA_reg[4]_0 ,
    userclk2,
    XMIT_CONFIG,
    gmii_tx_en,
    gmii_tx_er,
    XMIT_DATA,
    Q,
    gmii_txd,
    rxcharisk,
    rxchariscomma,
    rxdata,
    \TX_CONFIG_reg[14]_0 );
  output \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg ;
  output [3:0]D;
  output \CODE_GRP_CNT_reg[0]_0 ;
  output \CODE_GRP_CNT_reg[0]_1 ;
  output \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0 ;
  output \NO_QSGMII_DATA.TXDATA_reg[7]_0 ;
  output \NO_QSGMII_DATA.TXDATA_reg[5]_0 ;
  output \NO_QSGMII_DATA.TXDATA_reg[3]_0 ;
  output \NO_QSGMII_DATA.TXDATA_reg[2]_0 ;
  output \NO_QSGMII_DATA.TXCHARISK_reg_0 ;
  output \NO_QSGMII_DATA.TXCHARISK_reg_1 ;
  output [7:0]\NO_QSGMII_DATA.TXDATA_reg[7]_1 ;
  input \NO_QSGMII_DATA.TXDATA_reg[4]_0 ;
  input userclk2;
  input XMIT_CONFIG;
  input gmii_tx_en;
  input gmii_tx_er;
  input XMIT_DATA;
  input [1:0]Q;
  input [7:0]gmii_txd;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input [7:0]rxdata;
  input [2:0]\TX_CONFIG_reg[14]_0 ;

  wire C1_OR_C2_i_1_n_0;
  wire C1_OR_C2_reg_n_0;
  wire CODE_GRPISK;
  wire CODE_GRPISK_i_1_n_0;
  wire CODE_GRPISK_i_2_n_0;
  wire \CODE_GRP[0]_i_1_n_0 ;
  wire \CODE_GRP[0]_i_2_n_0 ;
  wire \CODE_GRP[1]_i_1_n_0 ;
  wire \CODE_GRP[1]_i_2_n_0 ;
  wire \CODE_GRP[2]_i_1_n_0 ;
  wire \CODE_GRP[3]_i_1_n_0 ;
  wire \CODE_GRP[3]_i_2_n_0 ;
  wire \CODE_GRP[4]_i_1_n_0 ;
  wire \CODE_GRP[5]_i_1_n_0 ;
  wire \CODE_GRP[6]_i_1_n_0 ;
  wire \CODE_GRP[6]_i_2_n_0 ;
  wire \CODE_GRP[7]_i_1_n_0 ;
  wire \CODE_GRP[7]_i_2_n_0 ;
  wire \CODE_GRP[7]_i_3_n_0 ;
  wire \CODE_GRP[7]_i_4_n_0 ;
  wire \CODE_GRP_CNT[0]_i_1_n_0 ;
  wire \CODE_GRP_CNT[1]_i_1_n_0 ;
  wire \CODE_GRP_CNT_reg[0]_0 ;
  wire \CODE_GRP_CNT_reg[0]_1 ;
  wire \CODE_GRP_CNT_reg_n_0_[1] ;
  wire \CODE_GRP_reg_n_0_[0] ;
  wire [6:0]CONFIG_DATA;
  wire \CONFIG_DATA_reg_n_0_[0] ;
  wire \CONFIG_DATA_reg_n_0_[1] ;
  wire \CONFIG_DATA_reg_n_0_[2] ;
  wire \CONFIG_DATA_reg_n_0_[3] ;
  wire \CONFIG_DATA_reg_n_0_[6] ;
  wire CONFIG_K28p5_reg_n_0;
  wire [3:0]D;
  wire DISPARITY;
  wire INSERT_IDLE;
  wire INSERT_IDLE_i_1_n_0;
  wire INSERT_IDLE_reg_n_0;
  wire K28p5;
  wire K28p5_i_1_n_0;
  wire \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0 ;
  wire \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0 ;
  wire \NO_QSGMII_DATA.TXCHARISK_reg_0 ;
  wire \NO_QSGMII_DATA.TXCHARISK_reg_1 ;
  wire \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ;
  wire \NO_QSGMII_DATA.TXDATA_reg[2]_0 ;
  wire \NO_QSGMII_DATA.TXDATA_reg[3]_0 ;
  wire \NO_QSGMII_DATA.TXDATA_reg[4]_0 ;
  wire \NO_QSGMII_DATA.TXDATA_reg[5]_0 ;
  wire \NO_QSGMII_DATA.TXDATA_reg[7]_0 ;
  wire [7:0]\NO_QSGMII_DATA.TXDATA_reg[7]_1 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_1_n_0 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_2_n_0 ;
  wire \NO_QSGMII_DISP.DISPARITY_i_3_n_0 ;
  wire [1:0]Q;
  wire R;
  wire R_i_1__0_n_0;
  wire S;
  wire S0;
  wire SYNC_DISPARITY_i_1_n_0;
  wire SYNC_DISPARITY_reg_n_0;
  wire T;
  wire T0;
  wire TRIGGER_S;
  wire TRIGGER_S0;
  wire TRIGGER_T;
  wire TXCHARDISPMODE0;
  wire TXCHARDISPMODE_INT;
  wire TXCHARDISPVAL;
  wire TXCHARISK_INT;
  wire [7:0]TXDATA;
  wire [7:0]TXD_REG1;
  wire [14:0]TX_CONFIG;
  wire [2:0]\TX_CONFIG_reg[14]_0 ;
  wire TX_EN_REG1;
  wire TX_ER_REG1;
  wire TX_EVEN;
  wire TX_PACKET;
  wire TX_PACKET_REG1;
  wire TX_PACKET_i_1_n_0;
  wire \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg ;
  wire V;
  wire V_i_1_n_0;
  wire V_i_2_n_0;
  wire V_i_3_n_0;
  wire V_i_4_n_0;
  wire V_i_5_n_0;
  wire V_i_6_n_0;
  wire XMIT_CONFIG;
  wire XMIT_CONFIG_INT;
  wire XMIT_DATA;
  wire XMIT_DATA_INT;
  wire XMIT_DATA_INT_reg_n_0;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in26_in;
  wire p_1_in;
  wire p_1_in0_in;
  wire p_1_in25_in;
  wire p_24_in;
  wire p_34_in;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire userclk2;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    C1_OR_C2_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(TX_EVEN),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I3(C1_OR_C2_reg_n_0),
        .O(C1_OR_C2_i_1_n_0));
  FDRE C1_OR_C2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C1_OR_C2_i_1_n_0),
        .Q(C1_OR_C2_reg_n_0),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    CODE_GRPISK_i_1
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(XMIT_CONFIG_INT),
        .I3(CODE_GRPISK_i_2_n_0),
        .O(CODE_GRPISK_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    CODE_GRPISK_i_2
       (.I0(V),
        .I1(R),
        .I2(T),
        .I3(S),
        .I4(TX_PACKET),
        .I5(Q[1]),
        .O(CODE_GRPISK_i_2_n_0));
  FDRE CODE_GRPISK_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CODE_GRPISK_i_1_n_0),
        .Q(CODE_GRPISK),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFA0AFA3)) 
    \CODE_GRP[0]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[0] ),
        .I1(\CODE_GRP[0]_i_2_n_0 ),
        .I2(XMIT_CONFIG_INT),
        .I3(S),
        .I4(V),
        .O(\CODE_GRP[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \CODE_GRP[0]_i_2 
       (.I0(TXD_REG1[0]),
        .I1(TX_PACKET),
        .I2(R),
        .I3(T),
        .O(\CODE_GRP[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFAFAFAC)) 
    \CODE_GRP[1]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[1] ),
        .I1(\CODE_GRP[1]_i_2_n_0 ),
        .I2(XMIT_CONFIG_INT),
        .I3(S),
        .I4(V),
        .O(\CODE_GRP[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h11101010)) 
    \CODE_GRP[1]_i_2 
       (.I0(S),
        .I1(T),
        .I2(R),
        .I3(TX_PACKET),
        .I4(TXD_REG1[1]),
        .O(\CODE_GRP[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0000FFCF)) 
    \CODE_GRP[2]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[2] ),
        .I1(\CODE_GRP[7]_i_3_n_0 ),
        .I2(TX_PACKET),
        .I3(TXD_REG1[2]),
        .I4(S),
        .I5(XMIT_CONFIG_INT),
        .O(\CODE_GRP[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \CODE_GRP[3]_i_1 
       (.I0(TX_PACKET),
        .I1(TXD_REG1[3]),
        .I2(\CODE_GRP[7]_i_4_n_0 ),
        .I3(\CODE_GRP[3]_i_2_n_0 ),
        .O(\CODE_GRP[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \CODE_GRP[3]_i_2 
       (.I0(\CONFIG_DATA_reg_n_0_[3] ),
        .I1(XMIT_CONFIG_INT),
        .I2(V),
        .I3(Q[1]),
        .I4(T),
        .I5(S),
        .O(\CODE_GRP[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \CODE_GRP[4]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[2] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TX_PACKET),
        .I3(TXD_REG1[4]),
        .I4(\CODE_GRP[7]_i_4_n_0 ),
        .O(\CODE_GRP[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \CODE_GRP[5]_i_1 
       (.I0(\CONFIG_DATA_reg_n_0_[2] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TX_PACKET),
        .I3(TXD_REG1[5]),
        .I4(\CODE_GRP[7]_i_4_n_0 ),
        .O(\CODE_GRP[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CODE_GRP[6]_i_1 
       (.I0(Q[1]),
        .I1(XMIT_CONFIG_INT),
        .O(\CODE_GRP[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD000DDDD)) 
    \CODE_GRP[6]_i_2 
       (.I0(XMIT_CONFIG_INT),
        .I1(\CONFIG_DATA_reg_n_0_[6] ),
        .I2(TX_PACKET),
        .I3(TXD_REG1[6]),
        .I4(\CODE_GRP[7]_i_4_n_0 ),
        .O(\CODE_GRP[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFB)) 
    \CODE_GRP[7]_i_1 
       (.I0(Q[1]),
        .I1(TX_PACKET),
        .I2(S),
        .I3(\CODE_GRP[7]_i_3_n_0 ),
        .I4(XMIT_CONFIG_INT),
        .O(\CODE_GRP[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \CODE_GRP[7]_i_2 
       (.I0(\CONFIG_DATA_reg_n_0_[2] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TX_PACKET),
        .I3(TXD_REG1[7]),
        .I4(\CODE_GRP[7]_i_4_n_0 ),
        .O(\CODE_GRP[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \CODE_GRP[7]_i_3 
       (.I0(V),
        .I1(R),
        .I2(T),
        .O(\CODE_GRP[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \CODE_GRP[7]_i_4 
       (.I0(XMIT_CONFIG_INT),
        .I1(S),
        .I2(T),
        .I3(R),
        .I4(V),
        .O(\CODE_GRP[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CODE_GRP_CNT[0]_i_1 
       (.I0(TX_EVEN),
        .O(\CODE_GRP_CNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CODE_GRP_CNT[1]_i_1 
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(\CODE_GRP_CNT[1]_i_1_n_0 ));
  FDSE \CODE_GRP_CNT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP_CNT[0]_i_1_n_0 ),
        .Q(TX_EVEN),
        .S(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDSE \CODE_GRP_CNT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP_CNT[1]_i_1_n_0 ),
        .Q(\CODE_GRP_CNT_reg_n_0_[1] ),
        .S(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \CODE_GRP_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[0]_i_1_n_0 ),
        .Q(\CODE_GRP_reg_n_0_[0] ),
        .R(\CODE_GRP[6]_i_1_n_0 ));
  FDRE \CODE_GRP_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(\CODE_GRP[6]_i_1_n_0 ));
  FDSE \CODE_GRP_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[2]_i_1_n_0 ),
        .Q(p_0_in11_in),
        .S(\CODE_GRP[6]_i_1_n_0 ));
  FDRE \CODE_GRP_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[3]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDSE \CODE_GRP_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[4]_i_1_n_0 ),
        .Q(p_1_in0_in),
        .S(\CODE_GRP[7]_i_1_n_0 ));
  FDSE \CODE_GRP_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[5]_i_1_n_0 ),
        .Q(p_1_in25_in),
        .S(\CODE_GRP[7]_i_1_n_0 ));
  FDRE \CODE_GRP_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[6]_i_2_n_0 ),
        .Q(p_24_in),
        .R(\CODE_GRP[6]_i_1_n_0 ));
  FDSE \CODE_GRP_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\CODE_GRP[7]_i_2_n_0 ),
        .Q(p_0_in26_in),
        .S(\CODE_GRP[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \CONFIG_DATA[0]_i_1 
       (.I0(C1_OR_C2_reg_n_0),
        .I1(TX_EVEN),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I3(TX_CONFIG[0]),
        .O(CONFIG_DATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \CONFIG_DATA[1]_i_1 
       (.I0(C1_OR_C2_reg_n_0),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(TX_EVEN),
        .O(CONFIG_DATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \CONFIG_DATA[2]_i_1 
       (.I0(C1_OR_C2_reg_n_0),
        .I1(TX_EVEN),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(CONFIG_DATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \CONFIG_DATA[3]_i_1 
       (.I0(TX_CONFIG[11]),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(TX_EVEN),
        .O(CONFIG_DATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \CONFIG_DATA[6]_i_1 
       (.I0(C1_OR_C2_reg_n_0),
        .I1(TX_EVEN),
        .I2(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I3(TX_CONFIG[14]),
        .O(CONFIG_DATA[6]));
  FDRE \CONFIG_DATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[0]),
        .Q(\CONFIG_DATA_reg_n_0_[0] ),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \CONFIG_DATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[1]),
        .Q(\CONFIG_DATA_reg_n_0_[1] ),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \CONFIG_DATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[2]),
        .Q(\CONFIG_DATA_reg_n_0_[2] ),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \CONFIG_DATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[3]),
        .Q(\CONFIG_DATA_reg_n_0_[3] ),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \CONFIG_DATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_DATA[6]),
        .Q(\CONFIG_DATA_reg_n_0_[6] ),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE CONFIG_K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_DATA_INT),
        .Q(CONFIG_K28p5_reg_n_0),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0000FF01)) 
    INSERT_IDLE_i_1
       (.I0(TX_PACKET),
        .I1(\CODE_GRP[7]_i_3_n_0 ),
        .I2(S),
        .I3(Q[1]),
        .I4(XMIT_CONFIG_INT),
        .O(INSERT_IDLE_i_1_n_0));
  FDRE INSERT_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(INSERT_IDLE_i_1_n_0),
        .Q(INSERT_IDLE_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    K28p5_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(CONFIG_K28p5_reg_n_0),
        .O(K28p5_i_1_n_0));
  FDRE K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_i_1_n_0),
        .Q(K28p5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1 
       (.I0(SYNC_DISPARITY_reg_n_0),
        .I1(TX_EVEN),
        .O(TXCHARDISPMODE0));
  FDSE \NO_QSGMII_CHAR.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(TXCHARDISPMODE0),
        .Q(TXCHARDISPMODE_INT),
        .S(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 
       (.I0(TX_EVEN),
        .I1(SYNC_DISPARITY_reg_n_0),
        .I2(DISPARITY),
        .O(\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0 ));
  FDRE \NO_QSGMII_CHAR.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0 ),
        .Q(TXCHARDISPVAL),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \NO_QSGMII_DATA.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(CODE_GRPISK),
        .Q(TXCHARISK_INT),
        .R(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[0]_i_1 
       (.I0(DISPARITY),
        .I1(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I2(TX_EVEN),
        .I3(INSERT_IDLE_reg_n_0),
        .I4(\CODE_GRP_reg_n_0_[0] ),
        .O(\NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[2]_i_1 
       (.I0(DISPARITY),
        .I1(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I2(TX_EVEN),
        .I3(INSERT_IDLE_reg_n_0),
        .I4(p_0_in11_in),
        .O(\NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    \NO_QSGMII_DATA.TXDATA[4]_i_1 
       (.I0(DISPARITY),
        .I1(INSERT_IDLE_reg_n_0),
        .I2(TX_EVEN),
        .I3(p_1_in0_in),
        .O(\NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \NO_QSGMII_DATA.TXDATA[5]_i_1 
       (.I0(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I1(TX_EVEN),
        .I2(INSERT_IDLE_reg_n_0),
        .O(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    \NO_QSGMII_DATA.TXDATA[6]_i_1 
       (.I0(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I1(INSERT_IDLE_reg_n_0),
        .I2(TX_EVEN),
        .I3(p_24_in),
        .O(\NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h23332000)) 
    \NO_QSGMII_DATA.TXDATA[7]_i_1 
       (.I0(DISPARITY),
        .I1(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I2(TX_EVEN),
        .I3(INSERT_IDLE_reg_n_0),
        .I4(p_0_in26_in),
        .O(\NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[0]_i_1_n_0 ),
        .Q(TXDATA[0]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in),
        .Q(TXDATA[1]),
        .R(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[2]_i_1_n_0 ),
        .Q(TXDATA[2]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(TXDATA[3]),
        .R(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[4]_i_1_n_0 ),
        .Q(TXDATA[4]),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in25_in),
        .Q(TXDATA[5]),
        .R(\NO_QSGMII_DATA.TXDATA[5]_i_1_n_0 ));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[6]_i_1_n_0 ),
        .Q(TXDATA[6]),
        .R(1'b0));
  FDRE \NO_QSGMII_DATA.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DATA.TXDATA[7]_i_1_n_0 ),
        .Q(TXDATA[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0009090900F6F6F6)) 
    \NO_QSGMII_DISP.DISPARITY_i_1 
       (.I0(\NO_QSGMII_DISP.DISPARITY_i_2_n_0 ),
        .I1(\NO_QSGMII_DISP.DISPARITY_i_3_n_0 ),
        .I2(K28p5),
        .I3(TX_EVEN),
        .I4(INSERT_IDLE_reg_n_0),
        .I5(DISPARITY),
        .O(\NO_QSGMII_DISP.DISPARITY_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h167E7EE8)) 
    \NO_QSGMII_DISP.DISPARITY_i_2 
       (.I0(p_1_in),
        .I1(\CODE_GRP_reg_n_0_[0] ),
        .I2(p_0_in11_in),
        .I3(p_0_in),
        .I4(p_1_in0_in),
        .O(\NO_QSGMII_DISP.DISPARITY_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7C)) 
    \NO_QSGMII_DISP.DISPARITY_i_3 
       (.I0(p_0_in26_in),
        .I1(p_24_in),
        .I2(p_1_in25_in),
        .O(\NO_QSGMII_DISP.DISPARITY_i_3_n_0 ));
  FDSE \NO_QSGMII_DISP.DISPARITY_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\NO_QSGMII_DISP.DISPARITY_i_1_n_0 ),
        .Q(DISPARITY),
        .S(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hDDDCCCCC)) 
    R_i_1__0
       (.I0(S),
        .I1(T),
        .I2(TX_ER_REG1),
        .I3(TX_EVEN),
        .I4(R),
        .O(R_i_1__0_n_0));
  FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R_i_1__0_n_0),
        .Q(R),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    SYNC_DISPARITY_i_1
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .I2(XMIT_CONFIG_INT),
        .I3(INSERT_IDLE),
        .O(SYNC_DISPARITY_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    SYNC_DISPARITY_i_2
       (.I0(Q[1]),
        .I1(S),
        .I2(T),
        .I3(R),
        .I4(V),
        .I5(TX_PACKET),
        .O(INSERT_IDLE));
  FDRE SYNC_DISPARITY_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_DISPARITY_i_1_n_0),
        .Q(SYNC_DISPARITY_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888A8AA88888888)) 
    S_i_1__0
       (.I0(XMIT_DATA_INT_reg_n_0),
        .I1(TRIGGER_S),
        .I2(TX_ER_REG1),
        .I3(TX_EVEN),
        .I4(TX_EN_REG1),
        .I5(gmii_tx_en),
        .O(S0));
  FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    TRIGGER_S_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .I2(TX_ER_REG1),
        .I3(TX_EVEN),
        .O(TRIGGER_S0));
  FDRE TRIGGER_S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TRIGGER_S0),
        .Q(TRIGGER_S),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    TRIGGER_T_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .O(p_34_in));
  FDRE TRIGGER_T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_34_in),
        .Q(TRIGGER_T),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \TXD_REG1_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[0]),
        .Q(TXD_REG1[0]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[1]),
        .Q(TXD_REG1[1]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[2]),
        .Q(TXD_REG1[2]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[3]),
        .Q(TXD_REG1[3]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[4]),
        .Q(TXD_REG1[4]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[5]),
        .Q(TXD_REG1[5]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[6]),
        .Q(TXD_REG1[6]),
        .R(1'b0));
  FDRE \TXD_REG1_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[7]),
        .Q(TXD_REG1[7]),
        .R(1'b0));
  FDRE \TX_CONFIG_reg[0] 
       (.C(userclk2),
        .CE(XMIT_DATA_INT),
        .D(\TX_CONFIG_reg[14]_0 [0]),
        .Q(TX_CONFIG[0]),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \TX_CONFIG_reg[11] 
       (.C(userclk2),
        .CE(XMIT_DATA_INT),
        .D(\TX_CONFIG_reg[14]_0 [1]),
        .Q(TX_CONFIG[11]),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE \TX_CONFIG_reg[14] 
       (.C(userclk2),
        .CE(XMIT_DATA_INT),
        .D(\TX_CONFIG_reg[14]_0 [2]),
        .Q(TX_CONFIG[14]),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE TX_EN_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(TX_EN_REG1),
        .R(1'b0));
  FDRE TX_ER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_er),
        .Q(TX_ER_REG1),
        .R(1'b0));
  FDRE TX_PACKET_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TX_PACKET),
        .Q(TX_PACKET_REG1),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    TX_PACKET_i_1
       (.I0(TX_PACKET),
        .I1(T),
        .I2(S),
        .O(TX_PACKET_i_1_n_0));
  FDRE TX_PACKET_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TX_PACKET_i_1_n_0),
        .Q(TX_PACKET),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h88888888FFF88888)) 
    T_i_1
       (.I0(TRIGGER_T),
        .I1(V),
        .I2(S),
        .I3(TX_PACKET),
        .I4(TX_EN_REG1),
        .I5(gmii_tx_en),
        .O(T0));
  FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T0),
        .Q(T),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(Q[0]),
        .I2(rxchariscomma),
        .O(\NO_QSGMII_DATA.TXCHARISK_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(Q[0]),
        .I2(rxcharisk),
        .O(\NO_QSGMII_DATA.TXCHARISK_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(Q[0]),
        .I2(rxdata[0]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(Q[0]),
        .I2(rxdata[1]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(Q[0]),
        .I2(rxdata[2]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(Q[0]),
        .I2(rxdata[3]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(Q[0]),
        .I2(rxdata[4]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(Q[0]),
        .I2(rxdata[5]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(Q[0]),
        .I2(rxdata[6]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[7]_i_1 
       (.I0(TXDATA[7]),
        .I1(Q[0]),
        .I2(rxdata[7]),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.TXCHARDISPMODE_i_1 
       (.I0(TX_EVEN),
        .I1(Q[0]),
        .I2(TXCHARDISPMODE_INT),
        .O(\CODE_GRP_CNT_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXCHARDISPVAL_i_1 
       (.I0(TXCHARDISPVAL),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(\NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \USE_ROCKET_IO.TXCHARISK_i_1 
       (.I0(TX_EVEN),
        .I1(Q[0]),
        .I2(TXCHARISK_INT),
        .O(\CODE_GRP_CNT_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(\NO_QSGMII_DATA.TXDATA_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(\NO_QSGMII_DATA.TXDATA_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \USE_ROCKET_IO.TXDATA[4]_i_1 
       (.I0(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I1(TXDATA[4]),
        .I2(Q[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(\NO_QSGMII_DATA.TXDATA_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \USE_ROCKET_IO.TXDATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(Q[0]),
        .I2(TXDATA[6]),
        .I3(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \USE_ROCKET_IO.TXDATA[7]_i_1 
       (.I0(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .I1(Q[0]),
        .I2(TX_EVEN),
        .O(\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \USE_ROCKET_IO.TXDATA[7]_i_2 
       (.I0(TXDATA[7]),
        .I1(Q[0]),
        .I2(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ),
        .O(\NO_QSGMII_DATA.TXDATA_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    V_i_1
       (.I0(V_i_2_n_0),
        .I1(S),
        .I2(V),
        .O(V_i_1_n_0));
  LUT5 #(
    .INIT(32'h8A888A8A)) 
    V_i_2
       (.I0(XMIT_DATA_INT_reg_n_0),
        .I1(V_i_3_n_0),
        .I2(V_i_4_n_0),
        .I3(V_i_5_n_0),
        .I4(V_i_6_n_0),
        .O(V_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    V_i_3
       (.I0(TX_EN_REG1),
        .I1(TX_ER_REG1),
        .I2(TX_PACKET_REG1),
        .O(V_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    V_i_4
       (.I0(gmii_tx_er),
        .I1(gmii_tx_en),
        .I2(TX_PACKET),
        .O(V_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    V_i_5
       (.I0(gmii_txd[0]),
        .I1(gmii_txd[7]),
        .I2(gmii_txd[5]),
        .I3(gmii_txd[4]),
        .I4(gmii_txd[6]),
        .I5(gmii_txd[1]),
        .O(V_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    V_i_6
       (.I0(gmii_txd[3]),
        .I1(gmii_txd[2]),
        .I2(gmii_tx_en),
        .O(V_i_6_n_0));
  FDRE V_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(V_i_1_n_0),
        .Q(V),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    XMIT_CONFIG_INT_i_1__0
       (.I0(TX_EVEN),
        .I1(\CODE_GRP_CNT_reg_n_0_[1] ),
        .O(XMIT_DATA_INT));
  FDSE XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(XMIT_DATA_INT),
        .D(XMIT_CONFIG),
        .Q(XMIT_CONFIG_INT),
        .S(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
  FDRE XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(XMIT_DATA_INT),
        .D(XMIT_DATA),
        .Q(XMIT_DATA_INT_reg_n_0),
        .R(\NO_QSGMII_DATA.TXDATA_reg[4]_0 ));
endmodule

(* B_SHIFTER_ADDR = "10'b0101001110" *) (* C_1588 = "0" *) (* C_2_5G = "FALSE" *) 
(* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) (* C_DYNAMIC_SWITCHING = "FALSE" *) (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
(* C_FAMILY = "kintexu" *) (* C_HAS_AN = "TRUE" *) (* C_HAS_AXIL = "FALSE" *) 
(* C_HAS_MDIO = "FALSE" *) (* C_HAS_TEMAC = "TRUE" *) (* C_IS_SGMII = "TRUE" *) 
(* C_RX_GMII_CLK = "TXOUTCLK" *) (* C_SGMII_FABRIC_BUFFER = "TRUE" *) (* C_SGMII_PHY_MODE = "FALSE" *) 
(* C_USE_LVDS = "TRUE" *) (* C_USE_TBI = "FALSE" *) (* C_USE_TRANSCEIVER = "FALSE" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* GT_RX_BYTE_WIDTH = "1" *) (* ORIG_REF_NAME = "gig_ethernet_pcs_pma_v16_1_7" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7
   (reset,
    signal_detect,
    link_timer_value,
    link_timer_basex,
    link_timer_sgmii,
    rx_gt_nominal_latency,
    speed_is_10_100,
    speed_is_100,
    mgt_rx_reset,
    mgt_tx_reset,
    userclk,
    userclk2,
    dcm_locked,
    rxbufstatus,
    rxchariscomma,
    rxcharisk,
    rxclkcorcnt,
    rxdata,
    rxdisperr,
    rxnotintable,
    rxrundisp,
    txbuferr,
    powerdown,
    txchardispmode,
    txchardispval,
    txcharisk,
    txdata,
    enablealign,
    gtx_clk,
    tx_code_group,
    loc_ref,
    ewrap,
    rx_code_group0,
    rx_code_group1,
    pma_rx_clk0,
    pma_rx_clk1,
    en_cdet,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    an_enable,
    speed_selection,
    phyad,
    mdc,
    mdio_in,
    mdio_out,
    mdio_tri,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    configuration_vector,
    configuration_valid,
    status_vector,
    basex_or_sgmii,
    drp_dclk,
    drp_req,
    drp_gnt,
    drp_den,
    drp_dwe,
    drp_drdy,
    drp_daddr,
    drp_di,
    drp_do,
    systemtimer_s_field,
    systemtimer_ns_field,
    correction_timer,
    rxrecclk,
    rxphy_s_field,
    rxphy_ns_field,
    rxphy_correction_timer,
    s_axi_aclk,
    s_axi_resetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    reset_done);
  input reset;
  input signal_detect;
  input [9:0]link_timer_value;
  input [9:0]link_timer_basex;
  input [9:0]link_timer_sgmii;
  input [15:0]rx_gt_nominal_latency;
  input speed_is_10_100;
  input speed_is_100;
  output mgt_rx_reset;
  output mgt_tx_reset;
  input userclk;
  input userclk2;
  input dcm_locked;
  input [1:0]rxbufstatus;
  input [0:0]rxchariscomma;
  input [0:0]rxcharisk;
  input [2:0]rxclkcorcnt;
  input [7:0]rxdata;
  input [0:0]rxdisperr;
  input [0:0]rxnotintable;
  input [0:0]rxrundisp;
  input txbuferr;
  output powerdown;
  output txchardispmode;
  output txchardispval;
  output txcharisk;
  output [7:0]txdata;
  output enablealign;
  input gtx_clk;
  output [9:0]tx_code_group;
  output loc_ref;
  output ewrap;
  input [9:0]rx_code_group0;
  input [9:0]rx_code_group1;
  input pma_rx_clk0;
  input pma_rx_clk1;
  output en_cdet;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output an_enable;
  output [1:0]speed_selection;
  input [4:0]phyad;
  input mdc;
  input mdio_in;
  output mdio_out;
  output mdio_tri;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input [4:0]configuration_vector;
  input configuration_valid;
  output [15:0]status_vector;
  input basex_or_sgmii;
  input drp_dclk;
  output drp_req;
  input drp_gnt;
  output drp_den;
  output drp_dwe;
  input drp_drdy;
  output [9:0]drp_daddr;
  output [15:0]drp_di;
  input [15:0]drp_do;
  input [47:0]systemtimer_s_field;
  input [31:0]systemtimer_ns_field;
  input [63:0]correction_timer;
  input rxrecclk;
  output [47:0]rxphy_s_field;
  output [31:0]rxphy_ns_field;
  output [63:0]rxphy_correction_timer;
  input s_axi_aclk;
  input s_axi_resetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input reset_done;

  wire \<const0> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire dcm_locked;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire mgt_tx_reset;
  wire reset;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire [0:0]rxrundisp;
  wire signal_detect;
  wire [13:0]\^status_vector ;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk2;

  assign an_enable = \<const0> ;
  assign drp_daddr[9] = \<const0> ;
  assign drp_daddr[8] = \<const0> ;
  assign drp_daddr[7] = \<const0> ;
  assign drp_daddr[6] = \<const0> ;
  assign drp_daddr[5] = \<const0> ;
  assign drp_daddr[4] = \<const0> ;
  assign drp_daddr[3] = \<const0> ;
  assign drp_daddr[2] = \<const0> ;
  assign drp_daddr[1] = \<const0> ;
  assign drp_daddr[0] = \<const0> ;
  assign drp_den = \<const0> ;
  assign drp_di[15] = \<const0> ;
  assign drp_di[14] = \<const0> ;
  assign drp_di[13] = \<const0> ;
  assign drp_di[12] = \<const0> ;
  assign drp_di[11] = \<const0> ;
  assign drp_di[10] = \<const0> ;
  assign drp_di[9] = \<const0> ;
  assign drp_di[8] = \<const0> ;
  assign drp_di[7] = \<const0> ;
  assign drp_di[6] = \<const0> ;
  assign drp_di[5] = \<const0> ;
  assign drp_di[4] = \<const0> ;
  assign drp_di[3] = \<const0> ;
  assign drp_di[2] = \<const0> ;
  assign drp_di[1] = \<const0> ;
  assign drp_di[0] = \<const0> ;
  assign drp_dwe = \<const0> ;
  assign drp_req = \<const0> ;
  assign en_cdet = \<const0> ;
  assign enablealign = \<const0> ;
  assign ewrap = \<const0> ;
  assign loc_ref = \<const0> ;
  assign mdio_out = \<const0> ;
  assign mdio_tri = \<const0> ;
  assign mgt_rx_reset = \<const0> ;
  assign powerdown = \<const0> ;
  assign rxphy_correction_timer[63] = \<const0> ;
  assign rxphy_correction_timer[62] = \<const0> ;
  assign rxphy_correction_timer[61] = \<const0> ;
  assign rxphy_correction_timer[60] = \<const0> ;
  assign rxphy_correction_timer[59] = \<const0> ;
  assign rxphy_correction_timer[58] = \<const0> ;
  assign rxphy_correction_timer[57] = \<const0> ;
  assign rxphy_correction_timer[56] = \<const0> ;
  assign rxphy_correction_timer[55] = \<const0> ;
  assign rxphy_correction_timer[54] = \<const0> ;
  assign rxphy_correction_timer[53] = \<const0> ;
  assign rxphy_correction_timer[52] = \<const0> ;
  assign rxphy_correction_timer[51] = \<const0> ;
  assign rxphy_correction_timer[50] = \<const0> ;
  assign rxphy_correction_timer[49] = \<const0> ;
  assign rxphy_correction_timer[48] = \<const0> ;
  assign rxphy_correction_timer[47] = \<const0> ;
  assign rxphy_correction_timer[46] = \<const0> ;
  assign rxphy_correction_timer[45] = \<const0> ;
  assign rxphy_correction_timer[44] = \<const0> ;
  assign rxphy_correction_timer[43] = \<const0> ;
  assign rxphy_correction_timer[42] = \<const0> ;
  assign rxphy_correction_timer[41] = \<const0> ;
  assign rxphy_correction_timer[40] = \<const0> ;
  assign rxphy_correction_timer[39] = \<const0> ;
  assign rxphy_correction_timer[38] = \<const0> ;
  assign rxphy_correction_timer[37] = \<const0> ;
  assign rxphy_correction_timer[36] = \<const0> ;
  assign rxphy_correction_timer[35] = \<const0> ;
  assign rxphy_correction_timer[34] = \<const0> ;
  assign rxphy_correction_timer[33] = \<const0> ;
  assign rxphy_correction_timer[32] = \<const0> ;
  assign rxphy_correction_timer[31] = \<const0> ;
  assign rxphy_correction_timer[30] = \<const0> ;
  assign rxphy_correction_timer[29] = \<const0> ;
  assign rxphy_correction_timer[28] = \<const0> ;
  assign rxphy_correction_timer[27] = \<const0> ;
  assign rxphy_correction_timer[26] = \<const0> ;
  assign rxphy_correction_timer[25] = \<const0> ;
  assign rxphy_correction_timer[24] = \<const0> ;
  assign rxphy_correction_timer[23] = \<const0> ;
  assign rxphy_correction_timer[22] = \<const0> ;
  assign rxphy_correction_timer[21] = \<const0> ;
  assign rxphy_correction_timer[20] = \<const0> ;
  assign rxphy_correction_timer[19] = \<const0> ;
  assign rxphy_correction_timer[18] = \<const0> ;
  assign rxphy_correction_timer[17] = \<const0> ;
  assign rxphy_correction_timer[16] = \<const0> ;
  assign rxphy_correction_timer[15] = \<const0> ;
  assign rxphy_correction_timer[14] = \<const0> ;
  assign rxphy_correction_timer[13] = \<const0> ;
  assign rxphy_correction_timer[12] = \<const0> ;
  assign rxphy_correction_timer[11] = \<const0> ;
  assign rxphy_correction_timer[10] = \<const0> ;
  assign rxphy_correction_timer[9] = \<const0> ;
  assign rxphy_correction_timer[8] = \<const0> ;
  assign rxphy_correction_timer[7] = \<const0> ;
  assign rxphy_correction_timer[6] = \<const0> ;
  assign rxphy_correction_timer[5] = \<const0> ;
  assign rxphy_correction_timer[4] = \<const0> ;
  assign rxphy_correction_timer[3] = \<const0> ;
  assign rxphy_correction_timer[2] = \<const0> ;
  assign rxphy_correction_timer[1] = \<const0> ;
  assign rxphy_correction_timer[0] = \<const0> ;
  assign rxphy_ns_field[31] = \<const0> ;
  assign rxphy_ns_field[30] = \<const0> ;
  assign rxphy_ns_field[29] = \<const0> ;
  assign rxphy_ns_field[28] = \<const0> ;
  assign rxphy_ns_field[27] = \<const0> ;
  assign rxphy_ns_field[26] = \<const0> ;
  assign rxphy_ns_field[25] = \<const0> ;
  assign rxphy_ns_field[24] = \<const0> ;
  assign rxphy_ns_field[23] = \<const0> ;
  assign rxphy_ns_field[22] = \<const0> ;
  assign rxphy_ns_field[21] = \<const0> ;
  assign rxphy_ns_field[20] = \<const0> ;
  assign rxphy_ns_field[19] = \<const0> ;
  assign rxphy_ns_field[18] = \<const0> ;
  assign rxphy_ns_field[17] = \<const0> ;
  assign rxphy_ns_field[16] = \<const0> ;
  assign rxphy_ns_field[15] = \<const0> ;
  assign rxphy_ns_field[14] = \<const0> ;
  assign rxphy_ns_field[13] = \<const0> ;
  assign rxphy_ns_field[12] = \<const0> ;
  assign rxphy_ns_field[11] = \<const0> ;
  assign rxphy_ns_field[10] = \<const0> ;
  assign rxphy_ns_field[9] = \<const0> ;
  assign rxphy_ns_field[8] = \<const0> ;
  assign rxphy_ns_field[7] = \<const0> ;
  assign rxphy_ns_field[6] = \<const0> ;
  assign rxphy_ns_field[5] = \<const0> ;
  assign rxphy_ns_field[4] = \<const0> ;
  assign rxphy_ns_field[3] = \<const0> ;
  assign rxphy_ns_field[2] = \<const0> ;
  assign rxphy_ns_field[1] = \<const0> ;
  assign rxphy_ns_field[0] = \<const0> ;
  assign rxphy_s_field[47] = \<const0> ;
  assign rxphy_s_field[46] = \<const0> ;
  assign rxphy_s_field[45] = \<const0> ;
  assign rxphy_s_field[44] = \<const0> ;
  assign rxphy_s_field[43] = \<const0> ;
  assign rxphy_s_field[42] = \<const0> ;
  assign rxphy_s_field[41] = \<const0> ;
  assign rxphy_s_field[40] = \<const0> ;
  assign rxphy_s_field[39] = \<const0> ;
  assign rxphy_s_field[38] = \<const0> ;
  assign rxphy_s_field[37] = \<const0> ;
  assign rxphy_s_field[36] = \<const0> ;
  assign rxphy_s_field[35] = \<const0> ;
  assign rxphy_s_field[34] = \<const0> ;
  assign rxphy_s_field[33] = \<const0> ;
  assign rxphy_s_field[32] = \<const0> ;
  assign rxphy_s_field[31] = \<const0> ;
  assign rxphy_s_field[30] = \<const0> ;
  assign rxphy_s_field[29] = \<const0> ;
  assign rxphy_s_field[28] = \<const0> ;
  assign rxphy_s_field[27] = \<const0> ;
  assign rxphy_s_field[26] = \<const0> ;
  assign rxphy_s_field[25] = \<const0> ;
  assign rxphy_s_field[24] = \<const0> ;
  assign rxphy_s_field[23] = \<const0> ;
  assign rxphy_s_field[22] = \<const0> ;
  assign rxphy_s_field[21] = \<const0> ;
  assign rxphy_s_field[20] = \<const0> ;
  assign rxphy_s_field[19] = \<const0> ;
  assign rxphy_s_field[18] = \<const0> ;
  assign rxphy_s_field[17] = \<const0> ;
  assign rxphy_s_field[16] = \<const0> ;
  assign rxphy_s_field[15] = \<const0> ;
  assign rxphy_s_field[14] = \<const0> ;
  assign rxphy_s_field[13] = \<const0> ;
  assign rxphy_s_field[12] = \<const0> ;
  assign rxphy_s_field[11] = \<const0> ;
  assign rxphy_s_field[10] = \<const0> ;
  assign rxphy_s_field[9] = \<const0> ;
  assign rxphy_s_field[8] = \<const0> ;
  assign rxphy_s_field[7] = \<const0> ;
  assign rxphy_s_field[6] = \<const0> ;
  assign rxphy_s_field[5] = \<const0> ;
  assign rxphy_s_field[4] = \<const0> ;
  assign rxphy_s_field[3] = \<const0> ;
  assign rxphy_s_field[2] = \<const0> ;
  assign rxphy_s_field[1] = \<const0> ;
  assign rxphy_s_field[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign speed_selection[1] = \<const0> ;
  assign speed_selection[0] = \<const0> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13:9] = \^status_vector [13:9];
  assign status_vector[8] = \<const0> ;
  assign status_vector[7:0] = \^status_vector [7:0];
  assign tx_code_group[9] = \<const0> ;
  assign tx_code_group[8] = \<const0> ;
  assign tx_code_group[7] = \<const0> ;
  assign tx_code_group[6] = \<const0> ;
  assign tx_code_group[5] = \<const0> ;
  assign tx_code_group[4] = \<const0> ;
  assign tx_code_group[3] = \<const0> ;
  assign tx_code_group[2] = \<const0> ;
  assign tx_code_group[1] = \<const0> ;
  assign tx_code_group[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  gig_ethernet_pcs_pma_0_GPCS_PMA_GEN gpcs_pma_inst
       (.MGT_RX_RESET(mgt_tx_reset),
        .Q(gmii_isolate),
        .an_adv_config_vector(an_adv_config_vector[11]),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .dcm_locked(dcm_locked),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .reset(reset),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxrundisp(rxrundisp),
        .signal_detect(signal_detect),
        .status_vector({\^status_vector [13:9],\^status_vector [7:0]}),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "reset_sync_block" *) 
module gig_ethernet_pcs_pma_0_reset_sync_block
   (reset_sync6_0,
    dcm_locked,
    userclk2,
    reset);
  output reset_sync6_0;
  input dcm_locked;
  input userclk2;
  input reset;

  wire dcm_locked;
  wire reset;
  wire reset_out;
  wire reset_sync6_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

  LUT2 #(
    .INIT(4'hB)) 
    \MGT_RESET.RESET_INT_PIPE_i_1 
       (.I0(reset_out),
        .I1(dcm_locked),
        .O(reset_sync6_0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "reset_sync_block" *) 
module gig_ethernet_pcs_pma_0_reset_sync_block_10
   (reset_out);
  output reset_out;

  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(1'b0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(1'b0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(1'b0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(1'b0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "reset_sync_block" *) 
module gig_ethernet_pcs_pma_0_reset_sync_block_9
   (RESET_INT_PIPE_RXRECCLK0,
    dcm_locked,
    reset_out,
    reset);
  output RESET_INT_PIPE_RXRECCLK0;
  input dcm_locked;
  input reset_out;
  input reset;

  wire RESET_INT_PIPE_RXRECCLK0;
  wire RESET_REG_RXRECCLK;
  wire dcm_locked;
  wire reset;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  LUT3 #(
    .INIT(8'hFD)) 
    \MGT_RESET.RESET_INT_PIPE_RXRECCLK_i_1 
       (.I0(dcm_locked),
        .I1(RESET_REG_RXRECCLK),
        .I2(reset_out),
        .O(RESET_INT_PIPE_RXRECCLK0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(1'b0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(1'b0),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(RESET_REG_RXRECCLK));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module gig_ethernet_pcs_pma_0_sync_block
   (SIGNAL_DETECT_MOD,
    Q,
    signal_detect,
    userclk2);
  output SIGNAL_DETECT_MOD;
  input [0:0]Q;
  input signal_detect;
  input userclk2;

  wire [0:0]Q;
  wire SIGNAL_DETECT_MOD;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire signal_detect;
  wire userclk2;

  LUT2 #(
    .INIT(4'h2)) 
    SIGNAL_DETECT_REG_i_1
       (.I0(data_out),
        .I1(Q),
        .O(SIGNAL_DETECT_MOD));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(signal_detect),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
