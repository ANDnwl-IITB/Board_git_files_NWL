/*
 * FPGA top-level module for KCU105 (Standard SelectIO / Async SGMII)
 * Hardware strapping used for PHY configuration (No MDIO required)
 */
`resetall
`timescale 1ns / 1ps
`default_nettype none

module fpga_top_kcu105 (
    /*
     * Clock: 100MHz Reference
     * Reset: Push button, active high
     */
    input  wire       clk_100mhz_ibufg,
    input  wire       reset,

    /* Leds */
    output wire [7:0] led,
    output wire       clk_125mhz_int,
    output wire       clock_100mhz_int,
    output wire       clock_70mhz_int,
    output wire       phy_gmii_rst_int,
    
    /*
     * Ethernet: 1000BASE-T SGMII (LVDS SelectIO)
     */
    input  wire       phy_sgmii_rx_p,
    input  wire       phy_sgmii_rx_n,
    output wire       phy_sgmii_tx_p,
    output wire       phy_sgmii_tx_n,
    input  wire       phy_sgmii_clk_p,
    input  wire       phy_sgmii_clk_n,
    input  wire       phy_int_n,
    output wire       phy_reset_n, // Physical pin connected to KCU105 Marvell PHY reset
    
    /*
     * AXI input
     */
    input  wire [7:0] tx_axis_tdata,
    input  wire       tx_axis_tvalid,
    output wire       tx_axis_tready,
    input  wire       tx_axis_tlast,
    input  wire       tx_axis_tuser,

    /*
     * AXI output
     */
    output wire [7:0] rx_axis_tdata,
    output wire       rx_axis_tvalid,
    input  wire       rx_axis_tready,
    output wire       rx_axis_tlast,
    output wire       rx_axis_tuser
);

// Removed I/O (stubbed internally)
wire       btnu = 1'b0;
wire       btnl = 1'b0;
wire       btnd = 1'b0;
wire       btnr = 1'b0;
wire       btnc = 1'b0;
wire [3:0] sw   = 4'b0001;

// Clock and reset signals
wire clk_125mhz_mmcm_out;
wire clock_70mhz, clock_100mhz;

wire mmcm_rst = reset;
wire mmcm_locked;
wire mmcm_clkfb;

// MMCM instance (UltraScale MMCME3_BASE)
MMCME3_BASE #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKOUT0_DIVIDE_F(20),     // 50MHz
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE(0),
    .CLKOUT1_DIVIDE(8),        // 125MHz
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE(0),
    .CLKOUT2_DIVIDE(10),       // 100MHz
    .CLKOUT2_DUTY_CYCLE(0.5),
    .CLKOUT2_PHASE(0),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.5),
    .CLKOUT3_PHASE(0),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.5),
    .CLKOUT4_PHASE(0),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.5),
    .CLKOUT5_PHASE(0),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.5),
    .CLKOUT6_PHASE(0),
    .CLKFBOUT_MULT_F(10),
    .CLKFBOUT_PHASE(0),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010),
    .CLKIN1_PERIOD(10),
    .STARTUP_WAIT("FALSE"),
    .CLKOUT4_CASCADE("FALSE")
)
clk_mmcm_inst (
    .CLKIN1(clk_100mhz_ibufg), 
    .CLKFBIN(mmcm_clkfb),
    .RST(mmcm_rst),
    .PWRDWN(1'b0),
    .CLKOUT0(clock_70mhz),
    .CLKOUT0B(),
    .CLKOUT1(clk_125mhz_mmcm_out),
    .CLKOUT1B(),
    .CLKOUT2(clock_100mhz),
    .CLKOUT2B(),
    .CLKOUT3(),
    .CLKOUT3B(),
    .CLKOUT4(),
    .CLKOUT5(),
    .CLKOUT6(),
    .CLKFBOUT(mmcm_clkfb),
    .CLKFBOUTB(),
    .LOCKED(mmcm_locked)
);

BUFG clk_125mhz_bufg_inst (
    .I(clk_125mhz_mmcm_out),
    .O(clk_125mhz_int)
);

BUFG clk_100mhz_bufg_inst (
    .I(clock_100mhz),
    .O(clock_100mhz_int)
);

BUFG clk_70mhz_bufg_inst (
    .I(clock_70mhz),
    .O(clock_70mhz_int)
);

// 
// -----------------------------------------------------------------------------

wire rst_125mhz_int;

sync_reset #(
    .N(4)
)
sync_reset_125mhz_inst (
    .clk(clk_125mhz_int),
    .rst(~mmcm_locked),
    .out(rst_125mhz_int)
);

// GPIO Debouncers
wire btnu_int;
wire btnl_int;
wire btnd_int;
wire btnr_int;
wire btnc_int;
wire [3:0] sw_int;

debounce_switch #(
    .WIDTH(9),
    .N(4),
    .RATE(125000)
)
debounce_switch_inst (
    .clk(clk_125mhz_int),
    .rst(rst_125mhz_int),
    .in({btnu, btnl, btnd, btnr, btnc, sw}),
    .out({btnu_int, btnl_int, btnd_int, btnr_int, btnc_int, sw_int})
);

// SGMII interface to PHY
wire phy_gmii_clk_int;
wire phy_gmii_clk_en_int;
wire [7:0] phy_gmii_txd_int;
wire phy_gmii_tx_en_int; 
wire phy_gmii_tx_er_int;
wire [7:0] phy_gmii_rxd_int;
wire phy_gmii_rx_dv_int;
wire phy_gmii_rx_er_int;

wire [15:0] pcspma_status_vector; 
wire dbg_phy_gmii_rst_int = phy_gmii_rst_int; 
wire dbg_phy_reset_n = phy_reset_n; 
	
wire pcspma_status_link_status              = pcspma_status_vector[0];
wire pcspma_status_link_synchronization     = pcspma_status_vector[1];
wire pcspma_status_rudi_c                   = pcspma_status_vector[2];
wire pcspma_status_rudi_i                   = pcspma_status_vector[3];
wire pcspma_status_rudi_invalid             = pcspma_status_vector[4];
wire pcspma_status_rxdisperr                = pcspma_status_vector[5];
wire pcspma_status_rxnotintable             = pcspma_status_vector[6];
wire pcspma_status_phy_link_status          = pcspma_status_vector[7];
wire [1:0] pcspma_status_remote_fault_encdg = pcspma_status_vector[9:8];
wire [1:0] pcspma_status_speed              = pcspma_status_vector[11:10];
wire pcspma_status_duplex                   = pcspma_status_vector[12];
wire pcspma_status_remote_fault             = pcspma_status_vector[13];
wire [1:0] pcspma_status_pause              = pcspma_status_vector[15:14];
//wire [1:0]  pcspma_status_speed = pcspma_status_vector[11:10];

wire [4:0] pcspma_config_vector;
assign pcspma_config_vector[4] = 1'b1; // autonegotiation enable
assign pcspma_config_vector[3] = 1'b0; // isolate
assign pcspma_config_vector[2] = 1'b0; // power down
assign pcspma_config_vector[1] = 1'b0; // loopback enable
assign pcspma_config_vector[0] = 1'b0; // unidirectional enable
wire rst_125mhz_int_uc;
wire rst_125mhz_int_uc_sync;  //added to check
wire [15:0] pcspma_an_config_vector;
assign pcspma_an_config_vector[15]    = 1'b1;    // SGMII link status
assign pcspma_an_config_vector[14]    = 1'b1;    // SGMII Acknowledge
assign pcspma_an_config_vector[13:12] = 2'b01;   // full duplex
assign pcspma_an_config_vector[11:10] = 2'b10;   // SGMII speed
assign pcspma_an_config_vector[9]     = 1'b0;    // reserved
assign pcspma_an_config_vector[8:7]   = 2'b00;   // pause frames - SGMII reserved
assign pcspma_an_config_vector[6]     = 1'b0;    // reserved
assign pcspma_an_config_vector[5]     = 1'b0;    // full duplex - SGMII reserved
assign pcspma_an_config_vector[4:1]   = 4'b0000; // reserved
assign pcspma_an_config_vector[0]     = 1'b1;    // SGMII

// *** UPDATED IP INSTANTIATION FOR KCU105 (Standard SelectIO) ***
gig_ethernet_pcs_pma_0 eth_pcspma (
    .txn(phy_sgmii_tx_n),
    .txp(phy_sgmii_tx_p),
    .rxn(phy_sgmii_rx_n),
    .rxp(phy_sgmii_rx_p),
    .mmcm_locked_out(),               
    .sgmii_clk_r(),
    .sgmii_clk_f(),
    .sgmii_clk_en(phy_gmii_clk_en_int),
    .clk125_out(phy_gmii_clk_int),
    .clk625_out(),                    
    .clk312_out(),                    
    .rst_125_out(phy_gmii_rst_int),
    .refclk625_n(phy_sgmii_clk_n),
    .refclk625_p(phy_sgmii_clk_p),
    .gmii_txd(phy_gmii_txd_int),
    .gmii_tx_en(phy_gmii_tx_en_int),
    .gmii_tx_er(phy_gmii_tx_er_int),
    .gmii_rxd(phy_gmii_rxd_int),
    .gmii_rx_dv(phy_gmii_rx_dv_int),
    .gmii_rx_er(phy_gmii_rx_er_int),
    .gmii_isolate(),
    .configuration_vector(pcspma_config_vector),
    .an_interrupt(),
    .an_adv_config_vector(pcspma_an_config_vector),
    .an_restart_config(1'b0),
    .speed_is_10_100(pcspma_status_speed != 2'b10),
    .speed_is_100(pcspma_status_speed == 2'b01),
    .status_vector(pcspma_status_vector),
    .reset(rst_125mhz_int_uc_sync),
    .signal_detect(1'b1),
    .idelay_rdy_out()                 
);


wire [7:0] led_int;

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
vio_1 your_instance_name (
  .clk(clk_100mhz_ibufg),                // input wire clk
  .probe_in0(rst_125mhz_int),    // input wire [0 : 0] probe_in0
  .probe_out0(rst_125mhz_int_uc)  // output wire [0 : 0] probe_out0
);

ila_pcs_pma ila_pcs (
        .clk(clk_125mhz_int), // input wire clk


        .probe0(pcspma_status_vector), // input wire [15:0]  probe0
        .probe1(phy_gmii_tx_en_int), // input wire [0:0]  probe1
        .probe2(dbg_phy_gmii_rst_int), // input wire [0:0]  probe2
        .probe3(dbg_phy_reset_n), // input wire [0:0]  probe3
        .probe4(phy_gmii_clk_en_int) // input wire [0:0]  probe4
);

//added to check


sync_reset #(
 .N(4)
)
pcspma_reset_sync (
 .clk(clk_125mhz_int),
 .rst(rst_125mhz_int_uc),
 .out(rst_125mhz_int_uc_sync)
);

//added to check 

// SGMII interface debug
assign led = sw[0] ? (sw[1] ? pcspma_status_vector[15:8] : pcspma_status_vector[7:0]) : led_int;

// Core Logic Instantiation
fpga_core core_inst (
    .clk(clk_125mhz_int),
    .rst(rst_125mhz_int),
    .btnu(btnu_int),
    .btnl(btnl_int),
    .btnd(btnd_int),
    .btnr(btnr_int),
    .btnc(btnc_int),
    .sw(sw_int),
    .led(led_int),
    .phy_gmii_clk(phy_gmii_clk_int),
    .phy_gmii_rst(phy_gmii_rst_int),
    .phy_gmii_clk_en(phy_gmii_clk_en_int),
    .phy_gmii_rxd(phy_gmii_rxd_int),
    .phy_gmii_rx_dv(phy_gmii_rx_dv_int),
    .phy_gmii_rx_er(phy_gmii_rx_er_int),
    .phy_gmii_txd(phy_gmii_txd_int),
    .phy_gmii_tx_en(phy_gmii_tx_en_int),
    .phy_gmii_tx_er(phy_gmii_tx_er_int),
    .phy_reset_n(phy_reset_n), // Handled by our custom deadlock block above, left empty here
    .phy_int_n(phy_int_n),
    .tx_axis_tdata(tx_axis_tdata),
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tready(tx_axis_tready),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_axis_tuser(tx_axis_tuser),
    .rx_axis_tdata(rx_axis_tdata),
    .rx_axis_tvalid(rx_axis_tvalid),
    .rx_axis_tready(rx_axis_tready),
    .rx_axis_tlast(rx_axis_tlast),
    .rx_axis_tuser(rx_axis_tuser)
);

endmodule
`default_nettype wire
