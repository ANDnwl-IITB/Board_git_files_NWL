-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Mar 31 13:59:37 2026
-- Host        : vivado running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madhav/KCU105/kcu105_ip_generated/ila_dram/ila_dram.srcs/sources_1/ip/ila_dram/ila_dram_stub.vhdl
-- Design      : ila_dram
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_dram is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 612 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 521 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ila_dram;

architecture stub of ila_dram is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[612:0],probe1[521:0],probe2[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2019.2";
begin
end;
