// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Apr 13 17:55:43 2026
// Host        : vivado running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madhav/KCU105/kcu105_ip_generated/fifo_generator_acb_req/fifo_generator_acb_req.srcs/sources_1/ip/fifo_generator_acb_req/fifo_generator_acb_req_stub.v
// Design      : fifo_generator_acb_req
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module fifo_generator_acb_req(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  wr_ack, empty, valid)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[109:0],wr_en,rd_en,dout[109:0],full,wr_ack,empty,valid" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [109:0]din;
  input wr_en;
  input rd_en;
  output [109:0]dout;
  output full;
  output wr_ack;
  output empty;
  output valid;
endmodule
