/*
 * FPGA top-level module for KCU105
 */
module fpga_top_kcu105 (
    /*
     * Clock: 125MHz LVDS
     * Reset: Push button, active low
     */
    input  wire       CLKREF_P, //100MHz reference
    input  wire       CLKREF_N,
    input  wire       reset,

    /* Leds */
    output wire [7:0] led,
    output wire clk_125mhz_int,
    output wire clock_100mhz_int,
    output wire clock_70mhz_int,
    output wire phy_gmii_rst_int,
    
    /*
     * Ethernet: 1000BASE-T SGMII
     */
    input  wire       phy_sgmii_rx_p,
    input  wire       phy_sgmii_rx_n,
    output wire       phy_sgmii_tx_p,
    output wire       phy_sgmii_tx_n,
    input  wire       phy_sgmii_clk_p,
    input  wire       phy_sgmii_clk_n,
    input  wire       phy_int_n,
    inout  wire       phy_mdio,
    output wire       phy_mdc,
    
    /*
     * AXI input
     */
    input  wire [7:0]                 tx_axis_tdata,
    input  wire                       tx_axis_tvalid,
    output wire                       tx_axis_tready,
    input  wire                       tx_axis_tlast,
    input  wire                       tx_axis_tuser,

    /*
     * AXI output
     */
    output wire [7:0]                 rx_axis_tdata,
    output wire                       rx_axis_tvalid,
    input  wire                       rx_axis_tready,
    output wire                       rx_axis_tlast,
    output wire                       rx_axis_tuser
);

// Removed I/O (stubbed internally)
wire       btnu;
wire       btnl;
wire       btnd;
wire       btnr;
wire       btnc;
wire [3:0] sw;

assign btnu = 1'b0;
assign btnl = 1'b0;
assign btnd = 1'b0;
assign btnr = 1'b0;
assign btnc = 1'b0;
assign sw   = 4'b0001;

// Clock and reset
wire clk_100mhz_ibufg;
wire clk_125mhz_mmcm_out;
wire clock_100mhz, clock_70mhz;

wire mmcm_rst = reset;
wire mmcm_locked;
wire mmcm_clkfb;

IBUFGDS #(
   .DIFF_TERM("FALSE"),
   .IBUF_LOW_PWR("FALSE")   
)
clk_100mhz_ibufg_inst (
   .O   (clk_100mhz_ibufg),
   .I   (CLKREF_P),
   .IB  (CLKREF_N) 
);

// MMCM instance
// 100 MHz in, 125 MHz out
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
    .CLKIN1_PERIOD(10.00),
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

wire rst_125mhz_int;

sync_reset #(
    .N(4)
)
sync_reset_125mhz_inst (
    .clk(clk_125mhz_int),
    .rst(~mmcm_locked),
    .out(rst_125mhz_int)
);

// GPIO
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

wire [4:0] pcspma_config_vector;

assign pcspma_config_vector[4] = 1'b1; // autonegotiation enable
assign pcspma_config_vector[3] = 1'b0; // isolate
assign pcspma_config_vector[2] = 1'b0; // power down
assign pcspma_config_vector[1] = 1'b0; // loopback enable
assign pcspma_config_vector[0] = 1'b0; // unidirectional enable

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

// *** UPDATED IP INSTANTIATION FOR KCU105 ***
gig_ethernet_pcs_pma_0 eth_pcspma (
    // SGMII
    .txp(phy_sgmii_tx_p),
    .txn(phy_sgmii_tx_n),
    .rxp(phy_sgmii_rx_p),
    .rxn(phy_sgmii_rx_n),

    // Ref clock from PHY (125 MHz for KCU105)
    .refclk125_p(phy_sgmii_clk_p),
    .refclk125_n(phy_sgmii_clk_n),

    // async reset
    .reset(rst_125mhz_int),

    // clock and reset outputs
    .clk125_out(phy_gmii_clk_int),
    .clk312_out(),
    .clk625_out(),
    .rst_125_out(phy_gmii_rst_int),
    .mmcm_locked_out(),  // Can monitor if needed
    .idelay_rdy_out(),

    // MAC clocking
    .sgmii_clk_r(),
    .sgmii_clk_f(),
    .sgmii_clk_en(phy_gmii_clk_en_int),
    
    // Speed control
    .speed_is_10_100(pcspma_status_speed != 2'b10),
    .speed_is_100(pcspma_status_speed == 2'b01),

    // Internal GMII (NO _0 suffix)
    .gmii_txd(phy_gmii_txd_int),
    .gmii_tx_en(phy_gmii_tx_en_int),
    .gmii_tx_er(phy_gmii_tx_er_int),
    .gmii_rxd(phy_gmii_rxd_int),
    .gmii_rx_dv(phy_gmii_rx_dv_int),
    .gmii_rx_er(phy_gmii_rx_er_int),
    .gmii_isolate(),

    // Configuration (NO configuration_valid, an_adv_config_val)
    .configuration_vector(pcspma_config_vector),
    .an_interrupt(),
    .an_adv_config_vector(pcspma_an_config_vector),
    .an_restart_config(1'b0),

    // Status
    .status_vector(pcspma_status_vector),
    .signal_detect(1'b1)
);

// MDIO Management - External controller (retained from VCU128 code)
reg [19:0] delay_reg = 20'hfffff;

reg [4:0] mdio_cmd_phy_addr = 5'h03;
reg [4:0] mdio_cmd_reg_addr = 5'h00;
reg [15:0] mdio_cmd_data = 16'd0;
reg [1:0] mdio_cmd_opcode = 2'b01;
reg mdio_cmd_valid = 1'b0;
wire mdio_cmd_ready;
wire [15:0] mdio_read_data;
wire mdio_data_out_valid;

reg [4:0] state_reg = 0;

always @(posedge clk_125mhz_int) begin
    if (rst_125mhz_int) begin
        state_reg <= 0;
        delay_reg <= 20'hfffff;
        mdio_cmd_reg_addr <= 5'h00;
        mdio_cmd_data <= 16'd0;
        mdio_cmd_valid <= 1'b0;
    end else begin
        mdio_cmd_valid <= mdio_cmd_valid & !mdio_cmd_ready;
        if (delay_reg > 0) begin
            delay_reg <= delay_reg - 1;
        end else if (!mdio_cmd_ready) begin
            state_reg <= state_reg;
        end else begin
            mdio_cmd_valid <= 1'b0;
            case (state_reg)
                // set SGMII autonegotiation timer to 11 ms
                // write 0x0070 to CFG4 (0x0031)
                5'd0: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h001F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd1;
                end
                5'd1: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h0031;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd2;
                end
                5'd2: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h401F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd3;
                end
                5'd3: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h0070;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd4;
                end
                // enable SGMII clock output
                // write 0x4000 to SGMIICTL1 (0x00D3)
                5'd4: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h001F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd5;
                end
                5'd5: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h00D3;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd6;
                end
                5'd6: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h401F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd7;
                end
                5'd7: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h4000;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd8;
                end
                // enable 10Mbps operation
                // write 0x0015 to 10M_SGMII_CFG (0x016F)
                5'd8: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h001F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd9;
                end
                5'd9: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h016F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd10;
                end
                5'd10: begin
                    mdio_cmd_reg_addr <= 5'h0D;
                    mdio_cmd_data <= 16'h401F;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd11;
                end
                5'd11: begin
                    mdio_cmd_reg_addr <= 5'h0E;
                    mdio_cmd_data <= 16'h0015;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd13;
                end
                // enable SGMII mode (if needed for KCU105)
                5'd13: begin
                    mdio_cmd_reg_addr <= 5'h10;
                    mdio_cmd_opcode <= 2'b10;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd14;
                end
                5'd14: begin
                    mdio_cmd_reg_addr <= 5'h10;
                    mdio_cmd_data <= 16'h0800;
                    mdio_cmd_opcode <= 2'b01;
                    mdio_cmd_valid <= 1'b1;
                    state_reg <= 5'd16;
                end
                5'd16: begin
                    state_reg <= 5'd16;
                end
            endcase
        end
    end
end

wire mdc;
wire mdio_i;
wire mdio_o;
wire mdio_t;

mdio_master mdio_master_inst (
    .clk(clk_125mhz_int),
    .rst(rst_125mhz_int),
    .cmd_phy_addr(mdio_cmd_phy_addr),
    .cmd_reg_addr(mdio_cmd_reg_addr),
    .cmd_data(mdio_cmd_data),
    .cmd_opcode(mdio_cmd_opcode),
    .cmd_valid(mdio_cmd_valid),
    .cmd_ready(mdio_cmd_ready),
    .data_out(mdio_read_data),
    .data_out_valid(mdio_data_out_valid),
    .data_out_ready(1'b1),
    .mdc_o(mdc),
    .mdio_i(mdio_i),
    .mdio_o(mdio_o),
    .mdio_t(mdio_t),
    .busy(),
    .prescale(8'd3)
);

assign phy_mdc = mdc;
assign mdio_i = phy_mdio;
assign phy_mdio = mdio_t ? 1'bz : mdio_o;

wire [7:0] led_int;

// SGMII interface debug
assign led = sw[0] ? (sw[1] ? pcspma_status_vector[15:8] : pcspma_status_vector[7:0]) : led_int;

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
    .phy_reset_n(),
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

ila_0 your_instance_name (
    .clk(clk_125mhz_int),
    .probe0(tx_axis_tready),
    .probe1(tx_axis_tdata),
    .probe2(tx_axis_tvalid),
    .probe3(tx_axis_tlast),
    .probe4(tx_axis_tuser),
    .probe5(rx_axis_tready),
    .probe6(rx_axis_tdata),
    .probe7(rx_axis_tvalid),
    .probe8(rx_axis_tlast),
    .probe9(rx_axis_tuser)
);

endmodule

`resetall
