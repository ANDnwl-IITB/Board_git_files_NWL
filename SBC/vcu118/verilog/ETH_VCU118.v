module ETH_TOP
(
     /*
     * Clock: 100MHz Reference
     * Reset: Push button, active high
     */
    input  wire       clk_125mhz_p,
    input  wire       clk_125mhz_n,
    input  wire       reset,

    /* Leds */
    output wire [7:0] led,
    
    output wire clk_125mhz_int,
    //output wire clock_100mhz_int,
    //output wire clock_70mhz_int,
    output wire rst_125mhz_int,

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
    
    
    output wire       phy_reset_n, 
    


    //////////////////
    // AHIR PIPES
    //////////////////
     (* DONT_TOUCH = "TRUE" *)output [9:0] rx_pipe_data, 
     (* DONT_TOUCH = "TRUE" *)output rx_pipe_ack,
     (* DONT_TOUCH = "TRUE" *)input rx_pipe_req,  
     
     (* DONT_TOUCH = "TRUE" *)input [9:0] tx_pipe_data,
     (* DONT_TOUCH = "TRUE" *)input tx_pipe_ack,
     (* DONT_TOUCH = "TRUE" *)output tx_pipe_req
     //output wire [9:0] count_125,
     //output wire [9:0] count_100
     

);

wire [9:0]  rx_pipe_pipe_write_data;//in
wire        rx_pipe_pipe_write_req;//in
wire        rx_pipe_pipe_write_ack; //out
wire [9:0]  tx_pipe_pipe_read_data;//out
wire        tx_pipe_pipe_read_req;//in
wire        tx_pipe_pipe_read_ack;

wire [9:0]  rx_pipe_pipe_write_data_Qb;//in
wire        rx_pipe_pipe_write_req_Qb;//in
wire        rx_pipe_pipe_write_ack_Qb; //out
wire [9:0]  rx_pipe_pipe_read_data_fifo;//out
wire        rx_pipe_pipe_read_req_fifo;//in
wire        rx_pipe_pipe_read_ack_fifo;
wire [9:0]  tx_pipe_pipe_write_data_Qb;//in
wire        tx_pipe_pipe_write_req_Qb;//in
wire        tx_pipe_pipe_write_ack_Qb; //out
wire [9:0]  tx_pipe_pipe_read_data_fifo;//out
wire        tx_pipe_pipe_read_req_fifo;//in
wire        tx_pipe_pipe_read_ack_fifo;  
    
wire [9:0]  tx_pipe_pipe_read_data_queue;//out
wire        tx_pipe_pipe_read_req_queue;//in
wire        tx_pipe_pipe_read_ack_queue;    

(* DONT_TOUCH = "TRUE" *) wire [7:0]  tx_axis_tdata;
(* DONT_TOUCH = "TRUE" *) wire        tx_axis_tvalid;
(* DONT_TOUCH = "TRUE" *) wire        tx_axis_tready;
(* DONT_TOUCH = "TRUE" *) wire        tx_axis_tlast;
(* DONT_TOUCH = "TRUE" *) wire        tx_axis_tuser;

(* DONT_TOUCH = "TRUE" *) wire [7:0]  rx_axis_tdata;
(* DONT_TOUCH = "TRUE" *) wire        rx_axis_tvalid;
(* DONT_TOUCH = "TRUE" *) wire        rx_axis_tlast;
(* DONT_TOUCH = "TRUE" *) wire        rx_axis_tuser;
(* DONT_TOUCH = "TRUE" *) wire        rx_axis_tready;
//wire [9:0]   count_100_r, count_125_r

// Parameter to change the depth of Rx/Tx FIFO in Ethernet MAC
parameter DEPTH = 8192;        // Initially it was 1000
//assign count_125 = count_125_r;
//assign count_100 = count_100_r;
fpga_top_vcu118 fpga_top_vcu118_inst
(
     .clk_125mhz_p(clk_125mhz_p),
     .clk_125mhz_n(clk_125mhz_n),
     .reset(reset),

     .led(led),
     .clk_125mhz_int(clk_125mhz_int),
     //.clock_100mhz_int(clock_100mhz_int),
     //.clock_70mhz_int(clock_70mhz_int),
     .rst_125mhz_int(rst_125mhz_int),

     .phy_sgmii_rx_p(phy_sgmii_rx_p),
     .phy_sgmii_rx_n(phy_sgmii_rx_n),
     .phy_sgmii_tx_p(phy_sgmii_tx_p),
     .phy_sgmii_tx_n(phy_sgmii_tx_n),
     .phy_sgmii_clk_p(phy_sgmii_clk_p),
     .phy_sgmii_clk_n(phy_sgmii_clk_n),
    
     .phy_int_n(phy_int_n),
     .phy_mdio(phy_mdio),
     .phy_mdc(phy_mdc),
     
     // ADDED: Map the reset out
     .phy_reset_n(phy_reset_n),
     
     // REMOVED: phy_mdio and phy_mdc mappings
    
    .tx_axis_tdata(tx_axis_tdata),//8
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tready(tx_axis_tready),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_axis_tuser(tx_axis_tuser),

    .rx_axis_tdata(rx_axis_tdata),//8
    .rx_axis_tvalid(rx_axis_tvalid),
    .rx_axis_tready(rx_axis_tready),
    .rx_axis_tlast(rx_axis_tlast),
    .rx_axis_tuser(rx_axis_tuser)

);
/*
 DualClockedQueue  DualClockedQueue_rx_loopback
    (
        // read 
        .read_req_in(rx_pipe_req), 
        .read_data_out(rx_pipe_data), 
        .read_ack_out(rx_pipe_ack), 
         // write
        .write_req_out(rx_axis_tready),   
        .write_data_in({rx_axis_tlast, rx_axis_tdata,1'b0}),
        .write_ack_in(rx_axis_tvalid), 
         
        .read_clk(clk_125mhz_int),
        .write_clk(clk_125mhz_int),
    
        .reset(rst_125mhz_int)
    );

    DualClockedQueue  DualClockedQueue_tx_loopback
    (
        .read_req_in(tx_axis_tready),   
        .read_data_out({tx_axis_tlast, tx_axis_tdata, 1'b0}), 
        .read_ack_out(tx_axis_tvalid),
        
        // write 
        .write_req_out(tx_pipe_req), 
        .write_data_in(tx_pipe_data), 
        .write_ack_in(tx_pipe_ack),         
    
        .read_clk(clk_125mhz_int),
        .write_clk(clk_125mhz_int),
    
        .reset(rst_125mhz_int)
    );*/
    
/*    SynchFifoWithDPRAM
    #("rx_interface",DEPTH,10)
    rx_queue
    (
         .clk(clk_125mhz_int),    //: in std_logic;
         .reset(rst_125mhz_int),  //: in std_logic;
         .data_in(rx_pipe_pipe_read_data_fifo),    //: in std_logic_vector(data_width-1 downto 0);
         .push_req(rx_pipe_pipe_read_ack_fifo),   //: in std_logic;
         .push_ack(rx_pipe_pipe_read_req_fifo),   // : out std_logic;
         .nearly_full(),    //: out std_logic;
         .data_out(rx_pipe_data),   //: out std_logic_vector(data_width-1 downto 0);
         .pop_ack(rx_pipe_ack),    // : out std_logic;
         .pop_req(rx_pipe_req)     //: in std_logic);
    );
    
    SynchFifoWithDPRAM
        #("tx_interface",DEPTH,10)
        tx_queue
        (
             .clk(clk_125mhz_int),    //: in std_logic;
             .reset(rst_125mhz_int),  //: in std_logic;
             .data_in(tx_pipe_data),    //: in std_logic_vector(data_width-1 downto 0);
             .push_req(tx_pipe_ack),   //: in std_logic;
             .push_ack(tx_pipe_req),   // : out std_logic;
             .nearly_full(),    //: out std_logic;
             .data_out(tx_pipe_pipe_read_data),   //: out std_logic_vector(data_width-1 downto 0);
             .pop_ack(tx_pipe_pipe_read_ack),    // : out std_logic;
             .pop_req(tx_pipe_pipe_read_req)     //: in std_logic);
        );*/
        SynchFifoWithDPRAM
    #("rx_interface", DEPTH, 10)
    rx_queue
    (
        .clk      (clk_125mhz_int),
        .reset    (rst_125mhz_int),
        .data_in  ({rx_axis_tlast, rx_axis_tdata, 1'b0}),
        .push_req (rx_axis_tvalid),   // MAC drives: "data valid"
        .push_ack (rx_axis_tready),   // FIFO drives: "ready to accept" → tready
        .nearly_full(),
        .data_out (rx_pipe_data),
        .pop_ack  (rx_pipe_ack),
        .pop_req  (rx_pipe_req)
    );
    
    SynchFifoWithDPRAM
        #("tx_interface",DEPTH,10)
        tx_queue
        (
             .clk(clk_125mhz_int),    //: in std_logic;
             .reset(rst_125mhz_int),  //: in std_logic;
             .data_in(tx_pipe_data),    //: in std_logic_vector(data_width-1 downto 0);
             .push_req(tx_pipe_ack),   //: in std_logic;
             .push_ack(tx_pipe_req),   // : out std_logic;
             .nearly_full(),    //: out std_logic;
             .data_out({tx_axis_tlast, tx_axis_tdata, 1'b0}),   //: out std_logic_vector(data_width-1 downto 0);
             .pop_ack(tx_axis_tvalid),    // : out std_logic;
             .pop_req(tx_axis_tready)     //: in std_logic);
        );



endmodule

