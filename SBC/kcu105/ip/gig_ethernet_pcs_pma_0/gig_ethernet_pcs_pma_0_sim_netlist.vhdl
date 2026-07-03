-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Apr 21 16:15:05 2026
-- Host        : vivado running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madhav/ethernet_kcu105/ethernet_kcu105.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base is
  port (
    rxcharisk : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrundisp : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k : in STD_LOGIC;
    \grdni.run_disp_i_reg_0\ : in STD_LOGIC;
    code_err_i : in STD_LOGIC;
    \grdni.run_disp_i_reg_1\ : in STD_LOGIC;
    \gdeni.disp_err_reg_0\ : in STD_LOGIC;
    b3 : in STD_LOGIC_VECTOR ( 7 downto 5 );
    \out\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base : entity is "gig_ethernet_pcs_pma_0_decode_8b10b_lut_base";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base is
begin
\dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \out\(0),
      Q => rxdata(0),
      R => '0'
    );
\dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \out\(1),
      Q => rxdata(1),
      R => '0'
    );
\dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \out\(2),
      Q => rxdata(2),
      R => '0'
    );
\dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \out\(3),
      Q => rxdata(3),
      R => '0'
    );
\dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \out\(4),
      Q => rxdata(4),
      R => '0'
    );
\dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => b3(5),
      Q => rxdata(5),
      R => '0'
    );
\dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => b3(6),
      Q => rxdata(6),
      R => '0'
    );
\dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => b3(7),
      Q => rxdata(7),
      R => '0'
    );
\gcerr.code_err_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => code_err_i,
      Q => rxnotintable(0),
      R => '0'
    );
\gdeni.disp_err_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \gdeni.disp_err_reg_0\,
      Q => rxdisperr(0),
      R => '0'
    );
\grdni.run_disp_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => \grdni.run_disp_i_reg_1\,
      Q => rxrundisp(0),
      R => '0'
    );
kout_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \grdni.run_disp_i_reg_0\,
      CE => '1',
      D => k,
      Q => rxcharisk(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap is
  port (
    pd_min : out STD_LOGIC;
    pd_max : out STD_LOGIC;
    meq_max : out STD_LOGIC;
    meq_min_reg_0 : out STD_LOGIC;
    upd_flag_reg_0 : out STD_LOGIC;
    delay_change_reg_0 : out STD_LOGIC;
    dec_run_reg_0 : out STD_LOGIC;
    inc_run_reg_0 : out STD_LOGIC;
    sload : out STD_LOGIC;
    data_mux_reg_0 : out STD_LOGIC;
    pd_min_reg_0 : out STD_LOGIC;
    s_ovflw12_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_delay_val_int142_out : out STD_LOGIC;
    \s_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ovflw1 : out STD_LOGIC;
    \msxor_ctd_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \msxor_cti_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_delay_val_int_reg[1]_0\ : out STD_LOGIC;
    \s_state_reg[2]_0\ : out STD_LOGIC;
    \s_state_reg[1]_0\ : out STD_LOGIC;
    \s_state_reg[3]_1\ : out STD_LOGIC;
    \s_state_reg[2]_1\ : out STD_LOGIC;
    dec_run : out STD_LOGIC;
    mload : out STD_LOGIC;
    \s_delay_val_int_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    upd_flag_reg_1 : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    delay_change_reg_1 : in STD_LOGIC;
    dec_run_reg_1 : in STD_LOGIC;
    inc_run_reg_1 : in STD_LOGIC;
    data_mux_reg_1 : in STD_LOGIC;
    sload_reg_0 : in STD_LOGIC;
    \m_delay_val_int_reg[5]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sdataoutc_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_delay_val_int_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sdataouta_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \action_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap : entity is "gig_ethernet_pcs_pma_0_delay_controller_wrap";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \action[0]_i_1_n_0\ : STD_LOGIC;
  signal \action_reg_n_0_[0]\ : STD_LOGIC;
  signal \^data_mux_reg_0\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \^dec_run_reg_0\ : STD_LOGIC;
  signal \^delay_change_reg_0\ : STD_LOGIC;
  signal \^inc_run_reg_0\ : STD_LOGIC;
  signal \m_delay_mux[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_mux[1]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_mux_reg_n_0_[0]\ : STD_LOGIC;
  signal \m_delay_mux_reg_n_0_[1]\ : STD_LOGIC;
  signal m_delay_val_int : STD_LOGIC;
  signal m_delay_val_int00_in : STD_LOGIC_VECTOR ( 5 to 5 );
  signal m_delay_val_int1 : STD_LOGIC;
  signal \^m_delay_val_int142_out\ : STD_LOGIC;
  signal \m_delay_val_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[6]_i_10_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[6]_i_8_n_0\ : STD_LOGIC;
  signal \m_delay_val_int[6]_i_9_n_0\ : STD_LOGIC;
  signal \mdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal mdataoutb : STD_LOGIC;
  signal mdataoutc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mdataoutc[0]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[1]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[2]_i_1_n_0\ : STD_LOGIC;
  signal \mdataoutc[3]_i_1_n_0\ : STD_LOGIC;
  signal \^meq_max\ : STD_LOGIC;
  signal meq_max_i_1_n_0 : STD_LOGIC;
  signal meq_max_i_2_n_0 : STD_LOGIC;
  signal meq_max_i_3_n_0 : STD_LOGIC;
  signal meq_min_i_1_n_0 : STD_LOGIC;
  signal meq_min_i_2_n_0 : STD_LOGIC;
  signal \^meq_min_reg_0\ : STD_LOGIC;
  signal \^mload\ : STD_LOGIC;
  signal mload_0 : STD_LOGIC;
  signal mload_i_2_n_0 : STD_LOGIC;
  signal \msxor_ctd[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_ctd[1]_i_1_n_0\ : STD_LOGIC;
  signal \^msxor_ctd_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msxor_cti[0]_i_1_n_0\ : STD_LOGIC;
  signal \msxor_cti[1]_i_1_n_0\ : STD_LOGIC;
  signal \^msxor_cti_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in25_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in32_in : STD_LOGIC;
  signal p_0_in43_in : STD_LOGIC;
  signal p_0_in62_in : STD_LOGIC;
  signal p_0_in74_in : STD_LOGIC;
  signal p_0_in86_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_15_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pd_hold[1]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[2]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[3]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[4]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[5]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[6]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_1_n_0\ : STD_LOGIC;
  signal \pd_hold[7]_i_2_n_0\ : STD_LOGIC;
  signal \^pd_max\ : STD_LOGIC;
  signal pd_max0 : STD_LOGIC;
  signal pd_max238_in : STD_LOGIC;
  signal \^pd_min\ : STD_LOGIC;
  signal pd_min0 : STD_LOGIC;
  signal pd_min237_in : STD_LOGIC;
  signal pdcount1 : STD_LOGIC;
  signal \pdcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_1_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_2_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_3_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_4_n_0\ : STD_LOGIC;
  signal \pdcount[5]_i_5_n_0\ : STD_LOGIC;
  signal pdcount_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \s_delay_mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_mux[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_mux_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_delay_mux_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_delay_val_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_10_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_11_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_12_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_delay_val_int[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_delay_val_int_reg[6]_i_4_n_5\ : STD_LOGIC;
  signal \s_delay_val_int_reg[6]_i_4_n_6\ : STD_LOGIC;
  signal \s_delay_val_int_reg[6]_i_4_n_7\ : STD_LOGIC;
  signal s_ovflw0 : STD_LOGIC;
  signal \^s_ovflw1\ : STD_LOGIC;
  signal \^s_ovflw12_out\ : STD_LOGIC;
  signal s_ovflw_i_1_n_0 : STD_LOGIC;
  signal s_ovflw_reg_n_0 : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \^s_state_reg[1]_0\ : STD_LOGIC;
  signal \^s_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sdataouta_reg_n_0_[0]\ : STD_LOGIC;
  signal sdataoutb : STD_LOGIC;
  signal sdataoutc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sdataoutc[0]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[1]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[2]_i_1_n_0\ : STD_LOGIC;
  signal \sdataoutc[3]_i_1_n_0\ : STD_LOGIC;
  signal \^sload\ : STD_LOGIC;
  signal sload_i_1_n_0 : STD_LOGIC;
  signal sload_i_3_n_0 : STD_LOGIC;
  signal sload_i_4_n_0 : STD_LOGIC;
  signal upd_flag : STD_LOGIC;
  signal \^upd_flag_reg_0\ : STD_LOGIC;
  signal \NLW_s_delay_val_int_reg[6]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_s_delay_val_int_reg[6]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_mux_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of dec_run_i_2 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of dec_run_i_3 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_delay_mux[1]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_delay_mux[1]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_delay_val_int[2]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_delay_val_int[4]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_delay_val_int[5]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_10\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_5\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_6\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_delay_val_int[6]_i_7\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of meq_max_i_1 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of mload_i_3 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of mload_i_4 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \msxor_ctd[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \msxor_ctd[1]_i_5\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \msxor_cti[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \msxor_cti[1]_i_5\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \pd_hold[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \pd_hold[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pd_hold[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \pd_hold[3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \pd_hold[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \pd_hold[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pd_hold[6]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pd_hold[7]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of pd_max_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \pdcount[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \pdcount[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \pdcount[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pdcount[5]_i_4\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \pdcount[5]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \s_delay_mux[1]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_delay_val_int[1]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_delay_val_int[1]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \s_delay_val_int[2]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_delay_val_int[2]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \s_delay_val_int[3]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_delay_val_int[4]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_delay_val_int[5]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_delay_val_int[6]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_state[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_state[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_state[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_state[3]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of sload_i_5 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of upd_flag_i_2 : label is "soft_lutpair81";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  data_mux_reg_0 <= \^data_mux_reg_0\;
  dec_run_reg_0 <= \^dec_run_reg_0\;
  delay_change_reg_0 <= \^delay_change_reg_0\;
  inc_run_reg_0 <= \^inc_run_reg_0\;
  m_delay_val_int142_out <= \^m_delay_val_int142_out\;
  meq_max <= \^meq_max\;
  meq_min_reg_0 <= \^meq_min_reg_0\;
  mload <= \^mload\;
  \msxor_ctd_reg[1]_0\(1 downto 0) <= \^msxor_ctd_reg[1]_0\(1 downto 0);
  \msxor_cti_reg[1]_0\(1 downto 0) <= \^msxor_cti_reg[1]_0\(1 downto 0);
  pd_max <= \^pd_max\;
  pd_min <= \^pd_min\;
  s_ovflw1 <= \^s_ovflw1\;
  s_ovflw12_out <= \^s_ovflw12_out\;
  \s_state_reg[1]_0\ <= \^s_state_reg[1]_0\;
  \s_state_reg[3]_0\(0) <= \^s_state_reg[3]_0\(0);
  sload <= \^sload\;
  upd_flag_reg_0 <= \^upd_flag_reg_0\;
\action[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => \^msxor_ctd_reg[1]_0\(1),
      I1 => \^msxor_cti_reg[1]_0\(1),
      I2 => \^msxor_ctd_reg[1]_0\(0),
      I3 => \^msxor_cti_reg[1]_0\(0),
      O => \action[0]_i_1_n_0\
    );
\action_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \action[0]_i_1_n_0\,
      Q => \action_reg_n_0_[0]\,
      R => '0'
    );
\action_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \action_reg[1]_0\(0),
      Q => p_0_in43_in,
      R => '0'
    );
data_mux_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \^pd_min\,
      I1 => \^delay_change_reg_0\,
      I2 => \^meq_min_reg_0\,
      I3 => \^dec_run_reg_0\,
      O => pd_min_reg_0
    );
data_mux_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data_mux_reg_1,
      Q => \^data_mux_reg_0\,
      R => reset_out
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdataoutc(0),
      I1 => \^data_mux_reg_0\,
      I2 => mdataoutc(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdataoutc(1),
      I1 => \^data_mux_reg_0\,
      I2 => mdataoutc(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdataoutc(2),
      I1 => \^data_mux_reg_0\,
      I2 => mdataoutc(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sdataoutc(3),
      I1 => \^data_mux_reg_0\,
      I2 => mdataoutc(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \data_out_reg[3]_0\(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \data_out_reg[3]_0\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \data_out_reg[3]_0\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \data_out_reg[3]_0\(3),
      R => '0'
    );
dec_run_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      I2 => \^s_state_reg[3]_0\(0),
      O => dec_run
    );
dec_run_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3DF"
    )
        port map (
      I0 => \^s_state_reg[3]_0\(0),
      I1 => s_state(2),
      I2 => s_state(0),
      I3 => s_state(1),
      O => \s_state_reg[3]_1\
    );
dec_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dec_run_reg_1,
      Q => \^dec_run_reg_0\,
      R => reset_out
    );
delay_change_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delay_change_reg_1,
      Q => \^delay_change_reg_0\,
      R => reset_out
    );
inc_run_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => inc_run_reg_1,
      Q => \^inc_run_reg_0\,
      R => reset_out
    );
\m_delay_mux[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_delay_mux_reg_n_0_[0]\,
      O => \m_delay_mux[0]_i_1_n_0\
    );
\m_delay_mux[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7474744400000000"
    )
        port map (
      I0 => \^m_delay_val_int142_out\,
      I1 => \^s_ovflw12_out\,
      I2 => \^s_ovflw1\,
      I3 => \^dec_run_reg_0\,
      I4 => \^meq_min_reg_0\,
      I5 => \m_delay_mux[1]_i_3_n_0\,
      O => \m_delay_mux[1]_i_1_n_0\
    );
\m_delay_mux[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A996566"
    )
        port map (
      I0 => \m_delay_mux_reg_n_0_[0]\,
      I1 => \^inc_run_reg_0\,
      I2 => \^delay_change_reg_0\,
      I3 => \^pd_max\,
      I4 => \m_delay_mux_reg_n_0_[1]\,
      O => \m_delay_mux[1]_i_2_n_0\
    );
\m_delay_mux[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      I2 => \^s_state_reg[3]_0\(0),
      I3 => s_state(0),
      O => \m_delay_mux[1]_i_3_n_0\
    );
\m_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \m_delay_mux[1]_i_1_n_0\,
      D => \m_delay_mux[0]_i_1_n_0\,
      Q => \m_delay_mux_reg_n_0_[0]\,
      S => reset_out
    );
\m_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_mux[1]_i_1_n_0\,
      D => \m_delay_mux[1]_i_2_n_0\,
      Q => \m_delay_mux_reg_n_0_[1]\,
      R => reset_out
    );
\m_delay_val_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(1),
      I1 => reset_out,
      I2 => \^m_delay_val_int142_out\,
      I3 => \^q\(0),
      I4 => \^s_ovflw12_out\,
      I5 => \m_delay_val_int[0]_i_2_n_0\,
      O => \m_delay_val_int[0]_i_1_n_0\
    );
\m_delay_val_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^dec_run_reg_0\,
      I2 => \^meq_min_reg_0\,
      I3 => \m_delay_val_int_reg[5]_0\(0),
      O => \m_delay_val_int[0]_i_2_n_0\
    );
\m_delay_val_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38833BB338830880"
    )
        port map (
      I0 => \^m_delay_val_int142_out\,
      I1 => \^s_ovflw12_out\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => m_delay_val_int1,
      I5 => \m_delay_val_int_reg[5]_0\(1),
      O => \m_delay_val_int_reg[1]_0\
    );
\m_delay_val_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(3),
      I1 => reset_out,
      I2 => \m_delay_val_int[2]_i_2_n_0\,
      I3 => \^s_ovflw12_out\,
      I4 => \m_delay_val_int[2]_i_3_n_0\,
      O => \m_delay_val_int[2]_i_1_n_0\
    );
\m_delay_val_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01101010"
    )
        port map (
      I0 => \^inc_run_reg_0\,
      I1 => \^meq_max\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \m_delay_val_int[2]_i_2_n_0\
    );
\m_delay_val_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE1000000E1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^dec_run_reg_0\,
      I4 => \^meq_min_reg_0\,
      I5 => \m_delay_val_int_reg[5]_0\(2),
      O => \m_delay_val_int[2]_i_3_n_0\
    );
\m_delay_val_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(4),
      I1 => reset_out,
      I2 => \m_delay_val_int[3]_i_2_n_0\,
      I3 => \^s_ovflw12_out\,
      I4 => \m_delay_val_int[3]_i_3_n_0\,
      O => \m_delay_val_int[3]_i_1_n_0\
    );
\m_delay_val_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => \^inc_run_reg_0\,
      I1 => \^meq_max\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \m_delay_val_int[3]_i_2_n_0\
    );
\m_delay_val_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => m_delay_val_int1,
      I5 => \m_delay_val_int_reg[5]_0\(3),
      O => \m_delay_val_int[3]_i_3_n_0\
    );
\m_delay_val_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(5),
      I1 => reset_out,
      I2 => \m_delay_val_int[4]_i_2_n_0\,
      I3 => \^s_ovflw12_out\,
      I4 => \m_delay_val_int[4]_i_3_n_0\,
      O => \m_delay_val_int[4]_i_1_n_0\
    );
\m_delay_val_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \^m_delay_val_int142_out\,
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \m_delay_val_int[4]_i_2_n_0\
    );
\m_delay_val_int[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF90009"
    )
        port map (
      I0 => \m_delay_val_int[4]_i_4_n_0\,
      I1 => \^q\(4),
      I2 => \^dec_run_reg_0\,
      I3 => \^meq_min_reg_0\,
      I4 => \m_delay_val_int_reg[5]_0\(4),
      O => \m_delay_val_int[4]_i_3_n_0\
    );
\m_delay_val_int[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \m_delay_val_int[4]_i_4_n_0\
    );
\m_delay_val_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(6),
      I1 => reset_out,
      I2 => \^m_delay_val_int142_out\,
      I3 => m_delay_val_int00_in(5),
      I4 => \^s_ovflw12_out\,
      I5 => \m_delay_val_int[5]_i_3_n_0\,
      O => \m_delay_val_int[5]_i_1_n_0\
    );
\m_delay_val_int[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => m_delay_val_int00_in(5)
    );
\m_delay_val_int[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF90009"
    )
        port map (
      I0 => \m_delay_val_int[6]_i_10_n_0\,
      I1 => \^q\(5),
      I2 => \^dec_run_reg_0\,
      I3 => \^meq_min_reg_0\,
      I4 => \m_delay_val_int_reg[5]_0\(5),
      O => \m_delay_val_int[5]_i_3_n_0\
    );
\m_delay_val_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAAFAFAFEAA"
    )
        port map (
      I0 => reset_out,
      I1 => m_delay_val_int1,
      I2 => m_delay_val_int,
      I3 => \^s_ovflw1\,
      I4 => \^s_ovflw12_out\,
      I5 => \^m_delay_val_int142_out\,
      O => \m_delay_val_int[6]_i_1_n_0\
    );
\m_delay_val_int[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \m_delay_val_int[6]_i_10_n_0\
    );
\m_delay_val_int[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EE22222"
    )
        port map (
      I0 => \m_delay_val_int[6]_i_8_n_0\,
      I1 => \^s_ovflw12_out\,
      I2 => \m_delay_val_int[6]_i_9_n_0\,
      I3 => \^q\(6),
      I4 => \^m_delay_val_int142_out\,
      I5 => reset_out,
      O => \m_delay_val_int[6]_i_2_n_0\
    );
\m_delay_val_int[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dec_run_reg_0\,
      I1 => \^meq_min_reg_0\,
      O => m_delay_val_int1
    );
\m_delay_val_int[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^s_state_reg[3]_0\(0),
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => s_state(1),
      O => m_delay_val_int
    );
\m_delay_val_int[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^dec_run_reg_0\,
      I1 => \^delay_change_reg_0\,
      I2 => \^pd_min\,
      O => \^s_ovflw1\
    );
\m_delay_val_int[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^inc_run_reg_0\,
      I1 => \^delay_change_reg_0\,
      I2 => \^pd_max\,
      O => \^s_ovflw12_out\
    );
\m_delay_val_int[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^meq_max\,
      I1 => \^inc_run_reg_0\,
      O => \^m_delay_val_int142_out\
    );
\m_delay_val_int[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE1000000E1"
    )
        port map (
      I0 => \^q\(5),
      I1 => \m_delay_val_int[6]_i_10_n_0\,
      I2 => \^q\(6),
      I3 => \^dec_run_reg_0\,
      I4 => \^meq_min_reg_0\,
      I5 => \m_delay_val_int_reg[5]_0\(6),
      O => \m_delay_val_int[6]_i_8_n_0\
    );
\m_delay_val_int[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \m_delay_val_int[6]_i_9_n_0\
    );
\m_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\m_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int_reg[1]_1\(0),
      Q => \^q\(1),
      R => '0'
    );
\m_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\m_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\m_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\m_delay_val_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\m_delay_val_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \m_delay_val_int[6]_i_1_n_0\,
      D => \m_delay_val_int[6]_i_2_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\mdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => \mdataouta_reg_n_0_[0]\,
      R => '0'
    );
\mdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => p_0_in25_in,
      R => '0'
    );
\mdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => p_0_in28_in,
      R => '0'
    );
\mdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => p_0_in32_in,
      R => '0'
    );
mdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in32_in,
      Q => mdataoutb,
      R => '0'
    );
\mdataoutc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => mdataoutb,
      I1 => \mdataouta_reg_n_0_[0]\,
      I2 => \m_delay_mux_reg_n_0_[1]\,
      I3 => \m_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in25_in,
      O => \mdataoutc[0]_i_1_n_0\
    );
\mdataoutc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => \mdataouta_reg_n_0_[0]\,
      I1 => p_0_in25_in,
      I2 => \m_delay_mux_reg_n_0_[1]\,
      I3 => \m_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in28_in,
      O => \mdataoutc[1]_i_1_n_0\
    );
\mdataoutc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => p_0_in28_in,
      I2 => \m_delay_mux_reg_n_0_[1]\,
      I3 => \m_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in32_in,
      O => \mdataoutc[2]_i_1_n_0\
    );
\mdataoutc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => p_0_in28_in,
      I1 => p_0_in32_in,
      I2 => \m_delay_mux_reg_n_0_[1]\,
      I3 => \m_delay_mux_reg_n_0_[0]\,
      I4 => D(0),
      O => \mdataoutc[3]_i_1_n_0\
    );
\mdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \mdataoutc[0]_i_1_n_0\,
      Q => mdataoutc(0),
      R => '0'
    );
\mdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \mdataoutc[1]_i_1_n_0\,
      Q => mdataoutc(1),
      R => '0'
    );
\mdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \mdataoutc[2]_i_1_n_0\,
      Q => mdataoutc(2),
      R => '0'
    );
\mdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \mdataoutc[3]_i_1_n_0\,
      Q => mdataoutc(3),
      R => '0'
    );
meq_max_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \m_delay_val_int_reg[5]_0\(6),
      I2 => meq_max_i_2_n_0,
      I3 => meq_max_i_3_n_0,
      O => meq_max_i_1_n_0
    );
meq_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \m_delay_val_int_reg[5]_0\(3),
      I2 => \m_delay_val_int_reg[5]_0\(5),
      I3 => \^q\(5),
      I4 => \m_delay_val_int_reg[5]_0\(4),
      I5 => \^q\(4),
      O => meq_max_i_2_n_0
    );
meq_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_delay_val_int_reg[5]_0\(0),
      I2 => \m_delay_val_int_reg[5]_0\(2),
      I3 => \^q\(2),
      I4 => \m_delay_val_int_reg[5]_0\(1),
      I5 => \^q\(1),
      O => meq_max_i_3_n_0
    );
meq_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => meq_max_i_1_n_0,
      Q => \^meq_max\,
      R => '0'
    );
meq_min_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888B"
    )
        port map (
      I0 => \^meq_min_reg_0\,
      I1 => reset_out,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => meq_min_i_2_n_0,
      O => meq_min_i_1_n_0
    );
meq_min_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => meq_min_i_2_n_0
    );
meq_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => meq_min_i_1_n_0,
      Q => \^meq_min_reg_0\,
      R => '0'
    );
mload_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAEAAAAAAAE"
    )
        port map (
      I0 => reset_out,
      I1 => \^s_ovflw1\,
      I2 => \^dec_run_reg_0\,
      I3 => \^meq_min_reg_0\,
      I4 => \^s_ovflw12_out\,
      I5 => \^m_delay_val_int142_out\,
      O => upd_flag
    );
mload_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBF088888800"
    )
        port map (
      I0 => \^s_state_reg[1]_0\,
      I1 => mload_0,
      I2 => \^upd_flag_reg_0\,
      I3 => \^s_ovflw12_out\,
      I4 => \^s_ovflw1\,
      I5 => \^mload\,
      O => mload_i_2_n_0
    );
mload_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(0),
      O => \^s_state_reg[1]_0\
    );
mload_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B7E"
    )
        port map (
      I0 => s_state(2),
      I1 => \^s_state_reg[3]_0\(0),
      I2 => s_state(1),
      I3 => s_state(0),
      O => mload_0
    );
mload_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => mload_i_2_n_0,
      Q => \^mload\,
      S => upd_flag
    );
\msxor_ctd[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E996"
    )
        port map (
      I0 => p_15_out(0),
      I1 => p_15_out(1),
      I2 => p_15_out(3),
      I3 => p_15_out(2),
      O => \msxor_ctd[0]_i_1_n_0\
    );
\msxor_ctd[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => p_15_out(2),
      I1 => p_15_out(3),
      I2 => p_15_out(1),
      I3 => p_15_out(0),
      O => \msxor_ctd[1]_i_1_n_0\
    );
\msxor_ctd[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04B00780"
    )
        port map (
      I0 => p_0_in74_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in25_in,
      I3 => p_0_in28_in,
      I4 => p_0_in62_in,
      O => p_15_out(2)
    );
\msxor_ctd[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04B00780"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in28_in,
      I3 => p_0_in32_in,
      I4 => p_0_in74_in,
      O => p_15_out(3)
    );
\msxor_ctd[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04B00780"
    )
        port map (
      I0 => p_0_in62_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \mdataouta_reg_n_0_[0]\,
      I3 => p_0_in25_in,
      I4 => \sdataouta_reg_n_0_[0]\,
      O => p_15_out(1)
    );
\msxor_ctd[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047B800"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => p_15_out(0)
    );
\msxor_ctd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[0]_i_1_n_0\,
      Q => \^msxor_ctd_reg[1]_0\(0),
      R => '0'
    );
\msxor_ctd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_ctd[1]_i_1_n_0\,
      Q => \^msxor_ctd_reg[1]_0\(1),
      R => '0'
    );
\msxor_cti[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E996"
    )
        port map (
      I0 => p_14_out(0),
      I1 => p_14_out(1),
      I2 => p_14_out(3),
      I3 => p_14_out(2),
      O => \msxor_cti[0]_i_1_n_0\
    );
\msxor_cti[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => p_14_out(2),
      I1 => p_14_out(3),
      I2 => p_14_out(1),
      I3 => p_14_out(0),
      O => \msxor_cti[1]_i_1_n_0\
    );
\msxor_cti[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in74_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in62_in,
      I3 => p_0_in25_in,
      I4 => p_0_in28_in,
      O => p_14_out(2)
    );
\msxor_cti[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in86_in,
      I1 => s_ovflw_reg_n_0,
      I2 => p_0_in74_in,
      I3 => p_0_in28_in,
      I4 => p_0_in32_in,
      O => p_14_out(3)
    );
\msxor_cti[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => p_0_in62_in,
      I1 => s_ovflw_reg_n_0,
      I2 => \sdataouta_reg_n_0_[0]\,
      I3 => \mdataouta_reg_n_0_[0]\,
      I4 => p_0_in25_in,
      O => p_14_out(1)
    );
\msxor_cti[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B84700"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => s_ovflw_reg_n_0,
      I2 => sdataoutb,
      I3 => mdataoutb,
      I4 => \mdataouta_reg_n_0_[0]\,
      O => p_14_out(0)
    );
\msxor_cti_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[0]_i_1_n_0\,
      Q => \^msxor_cti_reg[1]_0\(0),
      R => '0'
    );
\msxor_cti_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \msxor_cti[1]_i_1_n_0\,
      Q => \^msxor_cti_reg[1]_0\(1),
      R => '0'
    );
\pd_hold[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^delay_change_reg_0\,
      I1 => \^inc_run_reg_0\,
      I2 => \^dec_run_reg_0\,
      O => pdcount1
    );
\pd_hold[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[1]_i_1_n_0\
    );
\pd_hold[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[2]_i_1_n_0\
    );
\pd_hold[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[3]_i_1_n_0\
    );
\pd_hold[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[4]_i_1_n_0\
    );
\pd_hold[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[5]_i_1_n_0\
    );
\pd_hold[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(6),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[6]_i_1_n_0\
    );
\pd_hold[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[7]_i_1_n_0\
    );
\pd_hold[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in1_in(7),
      I1 => \^dec_run_reg_0\,
      I2 => \^inc_run_reg_0\,
      I3 => \^delay_change_reg_0\,
      O => \pd_hold[7]_i_2_n_0\
    );
\pd_hold_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => pdcount1,
      Q => p_0_in1_in(1),
      R => reset_out
    );
\pd_hold_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[1]_i_1_n_0\,
      Q => p_0_in1_in(2),
      R => reset_out
    );
\pd_hold_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[2]_i_1_n_0\,
      Q => p_0_in1_in(3),
      R => reset_out
    );
\pd_hold_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[3]_i_1_n_0\,
      Q => p_0_in1_in(4),
      R => reset_out
    );
\pd_hold_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[4]_i_1_n_0\,
      Q => p_0_in1_in(5),
      R => reset_out
    );
\pd_hold_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[5]_i_1_n_0\,
      Q => p_0_in1_in(6),
      R => reset_out
    );
\pd_hold_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[6]_i_1_n_0\,
      Q => p_0_in1_in(7),
      R => reset_out
    );
\pd_hold_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pd_hold[7]_i_1_n_0\,
      D => \pd_hold[7]_i_2_n_0\,
      Q => p_0_in,
      R => reset_out
    );
pd_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pd_max238_in,
      I1 => \^delay_change_reg_0\,
      I2 => \^pd_max\,
      O => pd_max0
    );
pd_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pdcount_reg(5),
      I1 => pdcount_reg(4),
      I2 => pdcount_reg(1),
      I3 => pdcount_reg(0),
      I4 => pdcount_reg(3),
      I5 => pdcount_reg(2),
      O => pd_max238_in
    );
pd_max_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => pd_max0,
      Q => \^pd_max\,
      R => '0'
    );
pd_min_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pd_min237_in,
      I1 => \^delay_change_reg_0\,
      I2 => \^pd_min\,
      O => pd_min0
    );
pd_min_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pdcount_reg(5),
      I1 => pdcount_reg(4),
      I2 => pdcount_reg(1),
      I3 => pdcount_reg(0),
      I4 => pdcount_reg(3),
      I5 => pdcount_reg(2),
      O => pd_min237_in
    );
pd_min_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => pd_min0,
      Q => \^pd_min\,
      R => '0'
    );
\pdcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pdcount_reg(0),
      O => \pdcount[0]_i_1_n_0\
    );
\pdcount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pdcount_reg(0),
      I1 => \pdcount[5]_i_4_n_0\,
      I2 => pdcount_reg(1),
      O => \pdcount[1]_i_1_n_0\
    );
\pdcount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => pdcount_reg(0),
      I1 => \pdcount[5]_i_4_n_0\,
      I2 => pdcount_reg(2),
      I3 => pdcount_reg(1),
      O => \pdcount[2]_i_1_n_0\
    );
\pdcount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \pdcount[5]_i_4_n_0\,
      I1 => pdcount_reg(0),
      I2 => pdcount_reg(1),
      I3 => pdcount_reg(3),
      I4 => pdcount_reg(2),
      O => \pdcount[3]_i_1_n_0\
    );
\pdcount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => pdcount_reg(1),
      I1 => pdcount_reg(0),
      I2 => \pdcount[5]_i_4_n_0\,
      I3 => pdcount_reg(2),
      I4 => pdcount_reg(4),
      I5 => pdcount_reg(3),
      O => \pdcount[4]_i_1_n_0\
    );
\pdcount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset_out,
      I1 => p_0_in,
      I2 => \^delay_change_reg_0\,
      I3 => \^inc_run_reg_0\,
      I4 => \^dec_run_reg_0\,
      O => \pdcount[5]_i_1_n_0\
    );
\pdcount[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pdcount[5]_i_4_n_0\,
      I1 => pd_min237_in,
      I2 => p_0_in43_in,
      O => \pdcount[5]_i_2_n_0\
    );
\pdcount[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \pdcount[5]_i_5_n_0\,
      I1 => pdcount_reg(3),
      I2 => pdcount_reg(5),
      I3 => pdcount_reg(4),
      O => \pdcount[5]_i_3_n_0\
    );
\pdcount[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \action_reg_n_0_[0]\,
      I1 => pd_max238_in,
      O => \pdcount[5]_i_4_n_0\
    );
\pdcount[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555554"
    )
        port map (
      I0 => pdcount_reg(3),
      I1 => pdcount_reg(2),
      I2 => \pdcount[5]_i_4_n_0\,
      I3 => pdcount_reg(0),
      I4 => pdcount_reg(1),
      O => \pdcount[5]_i_5_n_0\
    );
\pdcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[0]_i_1_n_0\,
      Q => pdcount_reg(0),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[1]_i_1_n_0\,
      Q => pdcount_reg(1),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[2]_i_1_n_0\,
      Q => pdcount_reg(2),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[3]_i_1_n_0\,
      Q => pdcount_reg(3),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[4]_i_1_n_0\,
      Q => pdcount_reg(4),
      R => \pdcount[5]_i_1_n_0\
    );
\pdcount_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \pdcount[5]_i_2_n_0\,
      D => \pdcount[5]_i_3_n_0\,
      Q => pdcount_reg(5),
      S => \pdcount[5]_i_1_n_0\
    );
\s_delay_mux[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7474744400000000"
    )
        port map (
      I0 => \^m_delay_val_int142_out\,
      I1 => \^s_ovflw12_out\,
      I2 => \^s_ovflw1\,
      I3 => \^dec_run_reg_0\,
      I4 => \^meq_min_reg_0\,
      I5 => \s_delay_mux[1]_i_2_n_0\,
      O => \s_delay_mux[1]_i_1_n_0\
    );
\s_delay_mux[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      I3 => \^s_state_reg[3]_0\(0),
      O => \s_delay_mux[1]_i_2_n_0\
    );
\s_delay_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \s_delay_mux[1]_i_1_n_0\,
      D => \m_delay_mux_reg_n_0_[0]\,
      Q => \s_delay_mux_reg_n_0_[0]\,
      S => reset_out
    );
\s_delay_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_mux[1]_i_1_n_0\,
      D => \m_delay_mux_reg_n_0_[1]\,
      Q => \s_delay_mux_reg_n_0_[1]\,
      R => reset_out
    );
\s_delay_val_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(0),
      I1 => \^s_ovflw12_out\,
      I2 => \m_delay_val_int_reg[5]_0\(1),
      I3 => \^q\(0),
      I4 => \^s_ovflw1\,
      O => \s_delay_val_int[0]_i_1_n_0\
    );
\s_delay_val_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(1),
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[1]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => \s_delay_val_int[1]_i_3_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[1]_i_1_n_0\
    );
\s_delay_val_int[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_ovflw0,
      I1 => \m_delay_val_int_reg[5]_0\(2),
      O => \s_delay_val_int[1]_i_2_n_0\
    );
\s_delay_val_int[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(1),
      I1 => s_ovflw0,
      I2 => \^q\(0),
      O => \s_delay_val_int[1]_i_3_n_0\
    );
\s_delay_val_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(2),
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[2]_i_2_n_0\,
      I3 => \^q\(2),
      I4 => \s_delay_val_int[2]_i_3_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[2]_i_1_n_0\
    );
\s_delay_val_int[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_ovflw0,
      I1 => \m_delay_val_int_reg[5]_0\(3),
      O => \s_delay_val_int[2]_i_2_n_0\
    );
\s_delay_val_int[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE28B8B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \m_delay_val_int_reg[5]_0\(2),
      I2 => s_ovflw0,
      I3 => \^q\(0),
      I4 => \m_delay_val_int_reg[5]_0\(1),
      O => \s_delay_val_int[2]_i_3_n_0\
    );
\s_delay_val_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(3),
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[3]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \s_delay_val_int[3]_i_3_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[3]_i_1_n_0\
    );
\s_delay_val_int[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_ovflw0,
      I1 => \m_delay_val_int_reg[5]_0\(4),
      O => \s_delay_val_int[3]_i_2_n_0\
    );
\s_delay_val_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_delay_val_int_reg[5]_0\(3),
      I2 => s_ovflw0,
      I3 => \s_delay_val_int[2]_i_3_n_0\,
      O => \s_delay_val_int[3]_i_3_n_0\
    );
\s_delay_val_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(4),
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[4]_i_2_n_0\,
      I3 => \^q\(4),
      I4 => \s_delay_val_int[4]_i_3_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[4]_i_1_n_0\
    );
\s_delay_val_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_ovflw0,
      I1 => \m_delay_val_int_reg[5]_0\(5),
      O => \s_delay_val_int[4]_i_2_n_0\
    );
\s_delay_val_int[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => \^q\(3),
      I1 => \m_delay_val_int_reg[5]_0\(4),
      I2 => s_ovflw0,
      I3 => \s_delay_val_int[2]_i_3_n_0\,
      I4 => \m_delay_val_int_reg[5]_0\(3),
      I5 => \^q\(2),
      O => \s_delay_val_int[4]_i_3_n_0\
    );
\s_delay_val_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(5),
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[5]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \s_delay_val_int[5]_i_3_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[5]_i_1_n_0\
    );
\s_delay_val_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_ovflw0,
      I1 => \m_delay_val_int_reg[5]_0\(6),
      O => \s_delay_val_int[5]_i_2_n_0\
    );
\s_delay_val_int[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \^q\(4),
      I1 => \m_delay_val_int_reg[5]_0\(5),
      I2 => s_ovflw0,
      I3 => \s_delay_val_int[4]_i_3_n_0\,
      O => \s_delay_val_int[5]_i_3_n_0\
    );
\s_delay_val_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4070404040707373"
    )
        port map (
      I0 => \^m_delay_val_int142_out\,
      I1 => \^s_ovflw12_out\,
      I2 => \s_delay_val_int[6]_i_3_n_0\,
      I3 => m_delay_val_int1,
      I4 => \^s_ovflw1\,
      I5 => \^upd_flag_reg_0\,
      O => \s_delay_val_int[6]_i_1_n_0\
    );
\s_delay_val_int[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \m_delay_val_int_reg[5]_0\(5),
      I2 => \^q\(5),
      I3 => \m_delay_val_int_reg[5]_0\(6),
      O => \s_delay_val_int[6]_i_10_n_0\
    );
\s_delay_val_int[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_delay_val_int_reg[5]_0\(3),
      I2 => \^q\(3),
      I3 => \m_delay_val_int_reg[5]_0\(4),
      O => \s_delay_val_int[6]_i_11_n_0\
    );
\s_delay_val_int[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_delay_val_int_reg[5]_0\(1),
      I2 => \^q\(1),
      I3 => \m_delay_val_int_reg[5]_0\(2),
      O => \s_delay_val_int[6]_i_12_n_0\
    );
\s_delay_val_int[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B88B8BB8"
    )
        port map (
      I0 => \m_delay_val_int_reg[5]_0\(6),
      I1 => \^s_ovflw12_out\,
      I2 => s_ovflw0,
      I3 => \^q\(6),
      I4 => \s_delay_val_int[6]_i_5_n_0\,
      I5 => \^s_ovflw1\,
      O => \s_delay_val_int[6]_i_2_n_0\
    );
\s_delay_val_int[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_state(2),
      I1 => \^s_state_reg[3]_0\(0),
      I2 => s_state(1),
      I3 => s_state(0),
      O => \s_delay_val_int[6]_i_3_n_0\
    );
\s_delay_val_int[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => \^q\(5),
      I1 => \m_delay_val_int_reg[5]_0\(6),
      I2 => s_ovflw0,
      I3 => \s_delay_val_int[4]_i_3_n_0\,
      I4 => \m_delay_val_int_reg[5]_0\(5),
      I5 => \^q\(4),
      O => \s_delay_val_int[6]_i_5_n_0\
    );
\s_delay_val_int[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => \m_delay_val_int_reg[5]_0\(5),
      I2 => \m_delay_val_int_reg[5]_0\(6),
      I3 => \^q\(5),
      O => \s_delay_val_int[6]_i_6_n_0\
    );
\s_delay_val_int[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => \m_delay_val_int_reg[5]_0\(3),
      I2 => \m_delay_val_int_reg[5]_0\(4),
      I3 => \^q\(3),
      O => \s_delay_val_int[6]_i_7_n_0\
    );
\s_delay_val_int[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_delay_val_int_reg[5]_0\(1),
      I2 => \m_delay_val_int_reg[5]_0\(2),
      I3 => \^q\(1),
      O => \s_delay_val_int[6]_i_8_n_0\
    );
\s_delay_val_int[6]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \s_delay_val_int[6]_i_9_n_0\
    );
\s_delay_val_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[0]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(0),
      R => reset_out
    );
\s_delay_val_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[1]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(1),
      R => reset_out
    );
\s_delay_val_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[2]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(2),
      R => reset_out
    );
\s_delay_val_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[3]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(3),
      R => reset_out
    );
\s_delay_val_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[4]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(4),
      R => reset_out
    );
\s_delay_val_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[5]_i_1_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(5),
      R => reset_out
    );
\s_delay_val_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_delay_val_int[6]_i_1_n_0\,
      D => \s_delay_val_int[6]_i_2_n_0\,
      Q => \s_delay_val_int_reg[6]_0\(6),
      R => reset_out
    );
\s_delay_val_int_reg[6]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_s_delay_val_int_reg[6]_i_4_CO_UNCONNECTED\(7 downto 4),
      CO(3) => s_ovflw0,
      CO(2) => \s_delay_val_int_reg[6]_i_4_n_5\,
      CO(1) => \s_delay_val_int_reg[6]_i_4_n_6\,
      CO(0) => \s_delay_val_int_reg[6]_i_4_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \^q\(6),
      DI(2) => \s_delay_val_int[6]_i_6_n_0\,
      DI(1) => \s_delay_val_int[6]_i_7_n_0\,
      DI(0) => \s_delay_val_int[6]_i_8_n_0\,
      O(7 downto 0) => \NLW_s_delay_val_int_reg[6]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => \s_delay_val_int[6]_i_9_n_0\,
      S(2) => \s_delay_val_int[6]_i_10_n_0\,
      S(1) => \s_delay_val_int[6]_i_11_n_0\,
      S(0) => \s_delay_val_int[6]_i_12_n_0\
    );
s_ovflw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA8AB"
    )
        port map (
      I0 => s_ovflw_reg_n_0,
      I1 => \^upd_flag_reg_0\,
      I2 => \^s_ovflw12_out\,
      I3 => s_ovflw0,
      I4 => \^s_ovflw1\,
      I5 => reset_out,
      O => s_ovflw_i_1_n_0
    );
s_ovflw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => s_ovflw_i_1_n_0,
      Q => s_ovflw_reg_n_0,
      R => '0'
    );
\s_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_state(0),
      O => \s_state[0]_i_1_n_0\
    );
\s_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      O => \s_state[1]_i_1_n_0\
    );
\s_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      I2 => s_state(2),
      O => \s_state[2]_i_1_n_0\
    );
\s_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFE0EFE0E0E0"
    )
        port map (
      I0 => \^inc_run_reg_0\,
      I1 => \^meq_max\,
      I2 => \^s_ovflw12_out\,
      I3 => \^s_ovflw1\,
      I4 => \^meq_min_reg_0\,
      I5 => \^dec_run_reg_0\,
      O => \s_state[3]_i_1_n_0\
    );
\s_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => \^s_state_reg[3]_0\(0),
      O => \s_state[3]_i_2_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[0]_i_1_n_0\,
      Q => s_state(0),
      R => reset_out
    );
\s_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[1]_i_1_n_0\,
      Q => s_state(1),
      R => reset_out
    );
\s_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[2]_i_1_n_0\,
      Q => s_state(2),
      R => reset_out
    );
\s_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \s_state[3]_i_1_n_0\,
      D => \s_state[3]_i_2_n_0\,
      Q => \^s_state_reg[3]_0\(0),
      R => reset_out
    );
\sdataouta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sdataouta_reg[3]_0\(0),
      Q => \sdataouta_reg_n_0_[0]\,
      R => '0'
    );
\sdataouta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sdataouta_reg[3]_0\(1),
      Q => p_0_in62_in,
      R => '0'
    );
\sdataouta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sdataouta_reg[3]_0\(2),
      Q => p_0_in74_in,
      R => '0'
    );
\sdataouta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sdataouta_reg[3]_0\(3),
      Q => p_0_in86_in,
      R => '0'
    );
sdataoutb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in86_in,
      Q => sdataoutb,
      R => '0'
    );
\sdataoutc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => sdataoutb,
      I1 => \sdataouta_reg_n_0_[0]\,
      I2 => \s_delay_mux_reg_n_0_[1]\,
      I3 => \s_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in62_in,
      O => \sdataoutc[0]_i_1_n_0\
    );
\sdataoutc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => \sdataouta_reg_n_0_[0]\,
      I1 => p_0_in62_in,
      I2 => \s_delay_mux_reg_n_0_[1]\,
      I3 => \s_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in74_in,
      O => \sdataoutc[1]_i_1_n_0\
    );
\sdataoutc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => p_0_in62_in,
      I1 => p_0_in74_in,
      I2 => \s_delay_mux_reg_n_0_[1]\,
      I3 => \s_delay_mux_reg_n_0_[0]\,
      I4 => p_0_in86_in,
      O => \sdataoutc[2]_i_1_n_0\
    );
\sdataoutc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC0ACCFA"
    )
        port map (
      I0 => p_0_in74_in,
      I1 => p_0_in86_in,
      I2 => \s_delay_mux_reg_n_0_[1]\,
      I3 => \s_delay_mux_reg_n_0_[0]\,
      I4 => \sdataoutc_reg[3]_0\(0),
      O => \sdataoutc[3]_i_1_n_0\
    );
\sdataoutc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \sdataoutc[0]_i_1_n_0\,
      Q => sdataoutc(0),
      R => '0'
    );
\sdataoutc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \sdataoutc[1]_i_1_n_0\,
      Q => sdataoutc(1),
      R => '0'
    );
\sdataoutc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \sdataoutc[2]_i_1_n_0\,
      Q => sdataoutc(2),
      R => '0'
    );
\sdataoutc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \sdataoutc[3]_i_1_n_0\,
      Q => sdataoutc(3),
      R => '0'
    );
sload_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => \^sload\,
      I1 => sload_reg_0,
      I2 => sload_i_3_n_0,
      I3 => sload_i_4_n_0,
      I4 => reset_out,
      O => sload_i_1_n_0
    );
sload_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(0),
      I2 => s_state(1),
      I3 => \^s_state_reg[3]_0\(0),
      I4 => \^s_ovflw1\,
      I5 => \^s_ovflw12_out\,
      O => sload_i_3_n_0
    );
sload_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003030001"
    )
        port map (
      I0 => \^pd_min\,
      I1 => \^dec_run_reg_0\,
      I2 => \^upd_flag_reg_0\,
      I3 => \^pd_max\,
      I4 => \^delay_change_reg_0\,
      I5 => \^inc_run_reg_0\,
      O => sload_i_4_n_0
    );
sload_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DBF"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(0),
      I2 => \^s_state_reg[3]_0\(0),
      I3 => s_state(1),
      O => \s_state_reg[2]_1\
    );
sload_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => sload_i_1_n_0,
      Q => \^sload\,
      R => '0'
    );
upd_flag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F76"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(1),
      I2 => \^s_state_reg[3]_0\(0),
      I3 => s_state(0),
      O => \s_state_reg[2]_0\
    );
upd_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => upd_flag_reg_1,
      Q => \^upd_flag_reg_0\,
      R => upd_flag
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base is
  port (
    tx_data_10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ngdb.disp_run_reg_0\ : in STD_LOGIC;
    txchardispval : in STD_LOGIC;
    txchardispmode : in STD_LOGIC;
    txdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txcharisk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base : entity is "gig_ethernet_pcs_pma_0_encode_8b10b_lut_base";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base is
  signal b4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal b6 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \disp_in_i__0\ : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2_n_0\ : STD_LOGIC;
  signal \dout[9]_i_4_n_0\ : STD_LOGIC;
  signal \dout[9]_i_5_n_0\ : STD_LOGIC;
  signal \k28__4\ : STD_LOGIC;
  signal \ngdb.disp_run_i_3_n_0\ : STD_LOGIC;
  signal \ngdb.disp_run_reg_n_0\ : STD_LOGIC;
  signal pdes4 : STD_LOGIC;
  signal \pdes6__13\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dout[1]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dout[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dout[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dout[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dout[5]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dout[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair56";
begin
\dout[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => txchardispval,
      I1 => txchardispmode,
      I2 => \ngdb.disp_run_reg_n_0\,
      I3 => \k28__4\,
      I4 => b6(0),
      O => \dout[0]_i_1_n_0\
    );
\dout[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D807F017F01FE4B"
    )
        port map (
      I0 => txdata(3),
      I1 => txdata(4),
      I2 => \disp_in_i__0\,
      I3 => txdata(0),
      I4 => txdata(1),
      I5 => txdata(2),
      O => b6(0)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => txchardispval,
      I1 => txchardispmode,
      I2 => \ngdb.disp_run_reg_n_0\,
      I3 => \k28__4\,
      I4 => b6(1),
      O => \dout[1]_i_1_n_0\
    );
\dout[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"987170F170F171E6"
    )
        port map (
      I0 => txdata(0),
      I1 => \disp_in_i__0\,
      I2 => txdata(1),
      I3 => txdata(2),
      I4 => txdata(4),
      I5 => txdata(3),
      O => b6(1)
    );
\dout[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txchardispval,
      I1 => txchardispmode,
      I2 => \ngdb.disp_run_reg_n_0\,
      O => \disp_in_i__0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b6(2),
      I1 => \k28__4\,
      O => \dout[2]_i_1_n_0\
    );
\dout[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47807F09BF01FE16"
    )
        port map (
      I0 => txdata(4),
      I1 => txdata(3),
      I2 => txdata(1),
      I3 => txdata(2),
      I4 => txdata(0),
      I5 => \disp_in_i__0\,
      O => b6(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b6(3),
      I1 => \k28__4\,
      O => \dout[3]_i_1_n_0\
    );
\dout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44C4CCD4CCDCED1"
    )
        port map (
      I0 => txdata(4),
      I1 => txdata(3),
      I2 => txdata(0),
      I3 => \disp_in_i__0\,
      I4 => txdata(1),
      I5 => txdata(2),
      O => b6(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b6(4),
      I1 => \k28__4\,
      O => \dout[4]_i_1_n_0\
    );
\dout[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F6F08107FEF9061"
    )
        port map (
      I0 => txdata(2),
      I1 => txdata(1),
      I2 => \disp_in_i__0\,
      I3 => txdata(0),
      I4 => txdata(4),
      I5 => txdata(3),
      O => b6(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \k28__4\,
      I1 => \ngdb.disp_run_reg_n_0\,
      I2 => txchardispmode,
      I3 => txchardispval,
      O => \dout[5]_i_1_n_0\
    );
\dout[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b6(5),
      I1 => \k28__4\,
      O => \dout[5]_i_2_n_0\
    );
\dout[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59969660A117177F"
    )
        port map (
      I0 => txdata(3),
      I1 => txdata(4),
      I2 => txdata(2),
      I3 => txdata(1),
      I4 => txdata(0),
      I5 => \disp_in_i__0\,
      O => b6(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F0000B0BFFF0F"
    )
        port map (
      I0 => \dout[9]_i_2_n_0\,
      I1 => txdata(7),
      I2 => txdata(6),
      I3 => \k28__4\,
      I4 => txdata(5),
      I5 => \pdes6__13\,
      O => b4(0)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5B5B0D58"
    )
        port map (
      I0 => txdata(5),
      I1 => \k28__4\,
      I2 => \pdes6__13\,
      I3 => txdata(7),
      I4 => txdata(6),
      O => b4(1)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66AA9A59"
    )
        port map (
      I0 => txdata(7),
      I1 => txdata(6),
      I2 => \k28__4\,
      I3 => txdata(5),
      I4 => \pdes6__13\,
      O => b4(2)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"737330304C43CF3F"
    )
        port map (
      I0 => \dout[9]_i_2_n_0\,
      I1 => txdata(7),
      I2 => txdata(6),
      I3 => \k28__4\,
      I4 => txdata(5),
      I5 => \pdes6__13\,
      O => b4(3)
    );
\dout[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \pdes6__13\,
      I1 => \dout[9]_i_4_n_0\,
      I2 => \dout[9]_i_5_n_0\,
      I3 => txcharisk,
      O => \dout[9]_i_2_n_0\
    );
\dout[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => txdata(2),
      I1 => txdata(1),
      I2 => txcharisk,
      I3 => txdata(0),
      I4 => txdata(3),
      I5 => txdata(4),
      O => \k28__4\
    );
\dout[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400040000000"
    )
        port map (
      I0 => txdata(4),
      I1 => \disp_in_i__0\,
      I2 => txdata(3),
      I3 => txdata(2),
      I4 => txdata(0),
      I5 => txdata(1),
      O => \dout[9]_i_4_n_0\
    );
\dout[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400040400"
    )
        port map (
      I0 => \disp_in_i__0\,
      I1 => txdata(4),
      I2 => txdata(3),
      I3 => txdata(2),
      I4 => txdata(0),
      I5 => txdata(1),
      O => \dout[9]_i_5_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[0]_i_1_n_0\,
      Q => tx_data_10b(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[1]_i_1_n_0\,
      Q => tx_data_10b(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[2]_i_1_n_0\,
      Q => tx_data_10b(2),
      S => \dout[5]_i_1_n_0\
    );
\dout_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[3]_i_1_n_0\,
      Q => tx_data_10b(3),
      S => \dout[5]_i_1_n_0\
    );
\dout_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[4]_i_1_n_0\,
      Q => tx_data_10b(4),
      S => \dout[5]_i_1_n_0\
    );
\dout_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => \dout[5]_i_2_n_0\,
      Q => tx_data_10b(5),
      S => \dout[5]_i_1_n_0\
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => b4(0),
      Q => tx_data_10b(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => b4(1),
      Q => tx_data_10b(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => b4(2),
      Q => tx_data_10b(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => b4(3),
      Q => tx_data_10b(9),
      R => '0'
    );
\ngdb.disp_run_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C83"
    )
        port map (
      I0 => txdata(7),
      I1 => txdata(6),
      I2 => txdata(5),
      I3 => \pdes6__13\,
      O => pdes4
    );
\ngdb.disp_run_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303FAAAA"
    )
        port map (
      I0 => \ngdb.disp_run_i_3_n_0\,
      I1 => txchardispval,
      I2 => txchardispmode,
      I3 => \ngdb.disp_run_reg_n_0\,
      I4 => \k28__4\,
      O => \pdes6__13\
    );
\ngdb.disp_run_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56696AA96AA9A995"
    )
        port map (
      I0 => \disp_in_i__0\,
      I1 => txdata(2),
      I2 => txdata(1),
      I3 => txdata(0),
      I4 => txdata(4),
      I5 => txdata(3),
      O => \ngdb.disp_run_i_3_n_0\
    );
\ngdb.disp_run_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \ngdb.disp_run_reg_0\,
      CE => '1',
      D => pdes4,
      Q => \ngdb.disp_run_reg_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    \loop0[0].dataout_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \loop0[0].dataout_reg[9]_0\ : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10 : entity is "gig_ethernet_pcs_pma_0_gearbox_4_to_10";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10 is
  signal dummy_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dummy_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \loop0[0].dataout[0]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[1]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[2]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[3]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[4]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[5]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[6]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[7]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[8]_i_1_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[9]_i_1_n_0\ : STD_LOGIC;
  signal mux : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mux[0]_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ramouta : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_addra : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addra[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addra[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addra[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addra[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_addra[3]_i_2_n_0\ : STD_LOGIC;
  signal read_addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addrb[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[3]_i_1_n_0\ : STD_LOGIC;
  signal read_addrc : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \read_addrc[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrc[2]_i_1_n_0\ : STD_LOGIC;
  signal read_enable : STD_LOGIC;
  signal read_enable_i_1_n_0 : STD_LOGIC;
  signal read_enabler : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal write_addr0_n_0 : STD_LOGIC;
  signal \write_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[4]_i_1_n_0\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \loop2[0].ram_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[1].ram_inst\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_addra[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \read_addra[1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \read_addra[2]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \read_addra[3]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \read_addrb[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \read_addrb[1]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \read_addrb[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \read_addrb[3]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \read_addrc[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \read_addrc[2]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of write_addr0 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \write_addr[0]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \write_addr[4]_i_1\ : label is "soft_lutpair100";
begin
\loop0[0].dataout[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ramouta(0),
      I1 => mux(0),
      I2 => ramouta(2),
      O => \loop0[0].dataout[0]_i_1_n_0\
    );
\loop0[0].dataout[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ramouta(1),
      I1 => mux(0),
      I2 => ramouta(3),
      O => \loop0[0].dataout[1]_i_1_n_0\
    );
\loop0[0].dataout[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ramouta(2),
      I1 => mux(0),
      I2 => p_4_out(0),
      O => \loop0[0].dataout[2]_i_1_n_0\
    );
\loop0[0].dataout[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ramouta(3),
      I1 => mux(0),
      I2 => p_4_out(1),
      O => \loop0[0].dataout[3]_i_1_n_0\
    );
\loop0[0].dataout[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_4_out(0),
      I1 => mux(0),
      I2 => p_1_out(0),
      O => \loop0[0].dataout[4]_i_1_n_0\
    );
\loop0[0].dataout[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_4_out(1),
      I1 => mux(0),
      I2 => p_1_out(1),
      O => \loop0[0].dataout[5]_i_1_n_0\
    );
\loop0[0].dataout[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_1_out(0),
      I1 => mux(0),
      I2 => p_3_out(0),
      O => \loop0[0].dataout[6]_i_1_n_0\
    );
\loop0[0].dataout[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_1_out(1),
      I1 => mux(0),
      I2 => p_3_out(1),
      O => \loop0[0].dataout[7]_i_1_n_0\
    );
\loop0[0].dataout[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_3_out(0),
      I1 => mux(0),
      I2 => p_0_out(0),
      O => \loop0[0].dataout[8]_i_1_n_0\
    );
\loop0[0].dataout[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_3_out(1),
      I1 => mux(0),
      I2 => p_0_out(1),
      O => \loop0[0].dataout[9]_i_1_n_0\
    );
\loop0[0].dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\loop0[0].dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\loop0[0].dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\loop0[0].dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\loop0[0].dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[4]_i_1_n_0\,
      Q => Q(4),
      R => '0'
    );
\loop0[0].dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[5]_i_1_n_0\,
      Q => Q(5),
      R => '0'
    );
\loop0[0].dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[6]_i_1_n_0\,
      Q => Q(6),
      R => '0'
    );
\loop0[0].dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[7]_i_1_n_0\,
      Q => Q(7),
      R => '0'
    );
\loop0[0].dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[8]_i_1_n_0\,
      Q => Q(8),
      R => '0'
    );
\loop0[0].dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \loop0[0].dataout[9]_i_1_n_0\,
      Q => Q(9),
      R => '0'
    );
\loop2[0].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => read_addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3) => read_addrb(3),
      ADDRC(2 downto 1) => read_addrc(2 downto 1),
      ADDRC(0) => read_addra(0),
      ADDRD(4 downto 0) => write_addr(4 downto 0),
      DIA(1 downto 0) => \loop0[0].dataout_reg[3]_0\(1 downto 0),
      DIB(1 downto 0) => \loop0[0].dataout_reg[3]_0\(1 downto 0),
      DIC(1 downto 0) => \loop0[0].dataout_reg[3]_0\(1 downto 0),
      DID(1 downto 0) => dummy_0(1 downto 0),
      DOA(1 downto 0) => ramouta(1 downto 0),
      DOB(1 downto 0) => p_4_out(1 downto 0),
      DOC(1 downto 0) => p_3_out(1 downto 0),
      DOD(1 downto 0) => dummy_0(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\loop2[1].ram_inst\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => read_addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3) => read_addrb(3),
      ADDRC(2 downto 1) => read_addrc(2 downto 1),
      ADDRC(0) => read_addra(0),
      ADDRD(4 downto 0) => write_addr(4 downto 0),
      DIA(1 downto 0) => \loop0[0].dataout_reg[3]_0\(3 downto 2),
      DIB(1 downto 0) => \loop0[0].dataout_reg[3]_0\(3 downto 2),
      DIC(1 downto 0) => \loop0[0].dataout_reg[3]_0\(3 downto 2),
      DID(1 downto 0) => dummy_2(1 downto 0),
      DOA(1 downto 0) => ramouta(3 downto 2),
      DOB(1 downto 0) => p_1_out(1 downto 0),
      DOC(1 downto 0) => p_0_out(1 downto 0),
      DOD(1 downto 0) => dummy_2(1 downto 0),
      WCLK => CLK,
      WE => '1'
    );
\mux[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1009FFFF10090000"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      I2 => read_addra(3),
      I3 => read_addra(1),
      I4 => read_enabler,
      I5 => mux(0),
      O => \mux[0]_i_1_n_0\
    );
\mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \mux[0]_i_1_n_0\,
      Q => mux(0),
      R => '0'
    );
\read_addra[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1004"
    )
        port map (
      I0 => read_addra(3),
      I1 => read_addra(1),
      I2 => read_addra(2),
      I3 => read_addra(0),
      O => \read_addra[0]_i_1_n_0\
    );
\read_addra[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A1"
    )
        port map (
      I0 => read_addra(2),
      I1 => read_addra(1),
      I2 => read_addra(0),
      I3 => read_addra(3),
      O => \read_addra[1]_i_1_n_0\
    );
\read_addra[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0430"
    )
        port map (
      I0 => read_addra(3),
      I1 => read_addra(0),
      I2 => read_addra(1),
      I3 => read_addra(2),
      O => \read_addra[2]_i_1_n_0\
    );
\read_addra[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_enabler,
      O => \read_addra[3]_i_1_n_0\
    );
\read_addra[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0820"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(2),
      I2 => read_addra(3),
      I3 => read_addra(0),
      O => \read_addra[3]_i_2_n_0\
    );
\read_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addra[0]_i_1_n_0\,
      Q => read_addra(0),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addra[1]_i_1_n_0\,
      Q => read_addra(1),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addra[2]_i_1_n_0\,
      Q => read_addra(2),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addra[3]_i_2_n_0\,
      Q => read_addra(3),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addrb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => read_addra(3),
      I1 => read_addra(0),
      I2 => read_addra(1),
      I3 => read_addra(2),
      O => \read_addrb[0]_i_1_n_0\
    );
\read_addrb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4101"
    )
        port map (
      I0 => read_addra(3),
      I1 => read_addra(2),
      I2 => read_addra(0),
      I3 => read_addra(1),
      O => \read_addrb[1]_i_1_n_0\
    );
\read_addrb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(2),
      I2 => read_addra(0),
      O => \read_addrb[2]_i_1_n_0\
    );
\read_addrb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1088"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      I2 => read_addra(1),
      I3 => read_addra(3),
      O => \read_addrb[3]_i_1_n_0\
    );
\read_addrb_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrb[0]_i_1_n_0\,
      Q => read_addrb(0),
      S => \read_addra[3]_i_1_n_0\
    );
\read_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrb[1]_i_1_n_0\,
      Q => read_addrb(1),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrb[2]_i_1_n_0\,
      Q => read_addrb(2),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrb[3]_i_1_n_0\,
      Q => read_addrb(3),
      R => \read_addra[3]_i_1_n_0\
    );
\read_addrc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFFE"
    )
        port map (
      I0 => read_addra(3),
      I1 => read_addra(1),
      I2 => read_addra(2),
      I3 => read_addra(0),
      O => \read_addrc[1]_i_1_n_0\
    );
\read_addrc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1091"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(2),
      I2 => read_addra(1),
      I3 => read_addra(3),
      O => \read_addrc[2]_i_1_n_0\
    );
\read_addrc_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrc[1]_i_1_n_0\,
      Q => read_addrc(1),
      S => \read_addra[3]_i_1_n_0\
    );
\read_addrc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => \read_addrc[2]_i_1_n_0\,
      Q => read_addrc(2),
      R => \read_addra[3]_i_1_n_0\
    );
read_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444F44"
    )
        port map (
      I0 => reset_out,
      I1 => read_enable,
      I2 => write_addr(2),
      I3 => write_addr0_n_0,
      I4 => write_addr(4),
      I5 => write_addr(3),
      O => read_enable_i_1_n_0
    );
read_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => read_enable_i_1_n_0,
      Q => read_enable,
      R => '0'
    );
read_enabler_reg: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]_0\,
      CE => '1',
      D => read_enable,
      Q => read_enabler,
      R => '0'
    );
write_addr0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(0),
      O => write_addr0_n_0
    );
\write_addr[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF7F"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(3),
      I2 => write_addr(2),
      I3 => write_addr(4),
      I4 => write_addr(0),
      O => \write_addr[0]_i_1__0_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555AA2A"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(3),
      I2 => write_addr(2),
      I3 => write_addr(4),
      I4 => write_addr(0),
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AF070"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(3),
      I2 => write_addr(2),
      I3 => write_addr(4),
      I4 => write_addr(0),
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6CCC4C"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(3),
      I2 => write_addr(2),
      I3 => write_addr(4),
      I4 => write_addr(0),
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(3),
      I2 => write_addr(2),
      I3 => write_addr(4),
      I4 => write_addr(0),
      O => \write_addr[4]_i_1_n_0\
    );
\write_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[0]_i_1__0_n_0\,
      Q => write_addr(0),
      R => reset_out
    );
\write_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[1]_i_1_n_0\,
      Q => write_addr(1),
      R => reset_out
    );
\write_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[2]_i_1_n_0\,
      Q => write_addr(2),
      R => reset_out
    );
\write_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[3]_i_1_n_0\,
      Q => write_addr(3),
      R => reset_out
    );
\write_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \write_addr[4]_i_1_n_0\,
      Q => write_addr(4),
      R => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr is
  port (
    clk12_5 : out STD_LOGIC;
    clk_en_12_5_fall0 : out STD_LOGIC;
    clk_en_12_5_rise0 : out STD_LOGIC;
    speed_is_10_100_fall_reg : out STD_LOGIC;
    reg4_reg_0 : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    clk12_5_reg : in STD_LOGIC;
    speed_is_10_100_fall : in STD_LOGIC;
    speed_is_100_fall : in STD_LOGIC;
    clk1_25 : in STD_LOGIC;
    reset_fall : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr : entity is "gig_ethernet_pcs_pma_0_johnson_cntr";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr is
  signal \^clk12_5\ : STD_LOGIC;
  signal reg1 : STD_LOGIC;
  signal reg1_i_1_n_0 : STD_LOGIC;
  signal reg2 : STD_LOGIC;
  signal reg4 : STD_LOGIC;
  signal reg5 : STD_LOGIC;
  signal reg5_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_en_12_5_fall_i_1 : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of clk_en_12_5_rise_i_1 : label is "soft_lutpair139";
begin
  clk12_5 <= \^clk12_5\;
clk_en_12_5_fall_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk12_5_reg,
      I1 => \^clk12_5\,
      O => clk_en_12_5_fall0
    );
clk_en_12_5_rise_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^clk12_5\,
      I1 => clk12_5_reg,
      O => clk_en_12_5_rise0
    );
reg1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg5_reg_n_0,
      O => reg1_i_1_n_0
    );
reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => '1',
      D => reg1_i_1_n_0,
      Q => reg1,
      R => reg5
    );
reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => '1',
      D => reg1,
      Q => reg2,
      R => reg5
    );
reg3_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => '1',
      D => reg2,
      Q => \^clk12_5\,
      R => reg5
    );
reg4_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => '1',
      D => \^clk12_5\,
      Q => reg4,
      R => reg5
    );
reg5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => reg4,
      I1 => reg5_reg_n_0,
      I2 => reset_out,
      O => reg5
    );
reg5_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => '1',
      D => reg4,
      Q => reg5_reg_n_0,
      R => reg5
    );
sgmii_clk_f_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFD5"
    )
        port map (
      I0 => speed_is_10_100_fall,
      I1 => \^clk12_5\,
      I2 => speed_is_100_fall,
      I3 => clk1_25,
      I4 => reset_fall,
      O => speed_is_10_100_fall_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2 is
  port (
    clk1_25 : out STD_LOGIC;
    sgmii_clk_r0_out : out STD_LOGIC;
    clk_en_1_25_fall0 : out STD_LOGIC;
    clk_en_12_5_rise : in STD_LOGIC;
    reg4_reg_0 : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    sgmii_clk_r_reg : in STD_LOGIC;
    data_out : in STD_LOGIC;
    clk12_5 : in STD_LOGIC;
    clk1_25_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2 : entity is "gig_ethernet_pcs_pma_0_johnson_cntr";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2 is
  signal \^clk1_25\ : STD_LOGIC;
  signal \reg1_i_1__0_n_0\ : STD_LOGIC;
  signal reg1_reg_n_0 : STD_LOGIC;
  signal reg2_reg_n_0 : STD_LOGIC;
  signal reg4 : STD_LOGIC;
  signal reg5 : STD_LOGIC;
  signal reg5_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_en_1_25_fall_i_1 : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of sgmii_clk_r_i_1 : label is "soft_lutpair140";
begin
  clk1_25 <= \^clk1_25\;
clk_en_1_25_fall_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk1_25_reg,
      I1 => \^clk1_25\,
      O => clk_en_1_25_fall0
    );
\reg1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg5_reg_n_0,
      O => \reg1_i_1__0_n_0\
    );
reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => clk_en_12_5_rise,
      D => \reg1_i_1__0_n_0\,
      Q => reg1_reg_n_0,
      R => reg5
    );
reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => clk_en_12_5_rise,
      D => reg1_reg_n_0,
      Q => reg2_reg_n_0,
      R => reg5
    );
reg3_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => clk_en_12_5_rise,
      D => reg2_reg_n_0,
      Q => \^clk1_25\,
      R => reg5
    );
reg4_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => clk_en_12_5_rise,
      D => \^clk1_25\,
      Q => reg4,
      R => reg5
    );
\reg5_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => reg4,
      I1 => clk_en_12_5_rise,
      I2 => reg5_reg_n_0,
      I3 => reset_out,
      O => reg5
    );
reg5_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg_0,
      CE => clk_en_12_5_rise,
      D => reg4,
      Q => reg5_reg_n_0,
      R => reg5
    );
sgmii_clk_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => sgmii_clk_r_reg,
      I1 => \^clk1_25\,
      I2 => data_out,
      I3 => clk12_5,
      O => sgmii_clk_r0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    reset_sync6_0 : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => '0',
      PRE => reset_in,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage1,
      PRE => reset_in,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage2,
      PRE => reset_in,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage3,
      PRE => reset_in,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage4,
      PRE => reset_in,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3 is
  port (
    reset_sync6_0 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_out,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage1,
      PRE => reset_out,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage2,
      PRE => reset_out,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage3,
      PRE => reset_out,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage4,
      PRE => reset_out,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_sync6_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_in,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage1,
      PRE => reset_in,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage2,
      PRE => reset_in,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage3,
      PRE => reset_in,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage4,
      PRE => reset_in,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_sync6_0 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_out,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage1,
      PRE => reset_out,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage2,
      PRE => reset_out,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage3,
      PRE => reset_out,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage4,
      PRE => reset_out,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_sync6_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6 is
  port (
    rxclk_r_reg : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    rxclk_r_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bt_val_rawa_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync6_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxclk_r : in STD_LOGIC;
    rxclk_int : in STD_LOGIC;
    rxclk_rd_1 : in STD_LOGIC;
    rxclk_rd : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phase : in STD_LOGIC;
    \count_in_reg[0]\ : in STD_LOGIC;
    \m_delay_val_int_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_delay_val_int_reg[1]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6 is
  signal \^reset_out\ : STD_LOGIC;
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_in[8]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_delay_val_int[1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of pd_min_i_1 : label is "soft_lutpair107";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute SOFT_HLUTNM of rxclk_rd_i_1 : label is "soft_lutpair106";
begin
  reset_out <= \^reset_out\;
\count_in[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEAAAAA"
    )
        port map (
      I0 => \^reset_out\,
      I1 => \count_in_reg[0]\,
      I2 => rxclk_r,
      I3 => rxclk_rd,
      I4 => rxclk_rd_1,
      O => SR(0)
    );
\m_delay_val_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_delay_val_int_reg[1]\(0),
      I1 => \^reset_out\,
      I2 => \m_delay_val_int_reg[1]_0\,
      O => \bt_val_rawa_reg[3]\(0)
    );
pd_min_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reset_out\,
      O => reset_sync6_0(0)
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_in,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage1,
      PRE => reset_in,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage2,
      PRE => reset_in,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage3,
      PRE => reset_in,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage4,
      PRE => reset_in,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => \^reset_out\
    );
rxclk_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxclk_r,
      I1 => \^reset_out\,
      I2 => rxclk_int,
      O => rxclk_r_reg
    );
rxclk_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rxclk_r,
      I1 => rxclk_rd_1,
      I2 => \^reset_out\,
      I3 => rxclk_rd,
      O => rxclk_r_reg_0
    );
\temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^reset_out\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => phase,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7 is
  port (
    reset_out : out STD_LOGIC;
    reset_sync6_0 : in STD_LOGIC;
    tx_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => '0',
      PRE => tx_rst,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage1,
      PRE => tx_rst,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage2,
      PRE => tx_rst,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage3,
      PRE => tx_rst,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage4,
      PRE => tx_rst,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => reset_sync6_0,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_enable_dom_ch : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8 is
  signal local_reset : STD_LOGIC;
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
\r_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => local_reset,
      I1 => read_enable_dom_ch,
      O => SR(0)
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_out,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage1,
      PRE => reset_out,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage2,
      PRE => reset_out,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage3,
      PRE => reset_out,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage4,
      PRE => reset_out,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => local_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    reset_in : out STD_LOGIC;
    reset_reg_0 : in STD_LOGIC;
    rst_125_out : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer : entity is "gig_ethernet_pcs_pma_0_reset_wtd_timer";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  signal \counter_stg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal counter_stg1_roll : STD_LOGIC;
  signal \counter_stg20_carry__0_n_6\ : STD_LOGIC;
  signal \counter_stg20_carry__0_n_7\ : STD_LOGIC;
  signal counter_stg20_carry_n_0 : STD_LOGIC;
  signal counter_stg20_carry_n_1 : STD_LOGIC;
  signal counter_stg20_carry_n_2 : STD_LOGIC;
  signal counter_stg20_carry_n_3 : STD_LOGIC;
  signal counter_stg20_carry_n_4 : STD_LOGIC;
  signal counter_stg20_carry_n_5 : STD_LOGIC;
  signal counter_stg20_carry_n_6 : STD_LOGIC;
  signal counter_stg20_carry_n_7 : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg30_carry__0_n_6\ : STD_LOGIC;
  signal \counter_stg30_carry__0_n_7\ : STD_LOGIC;
  signal counter_stg30_carry_n_0 : STD_LOGIC;
  signal counter_stg30_carry_n_1 : STD_LOGIC;
  signal counter_stg30_carry_n_2 : STD_LOGIC;
  signal counter_stg30_carry_n_3 : STD_LOGIC;
  signal counter_stg30_carry_n_4 : STD_LOGIC;
  signal counter_stg30_carry_n_5 : STD_LOGIC;
  signal counter_stg30_carry_n_6 : STD_LOGIC;
  signal counter_stg30_carry_n_7 : STD_LOGIC;
  signal \counter_stg3[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3[11]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal reset0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal three_sec_timeout0 : STD_LOGIC;
  signal wtd_reset : STD_LOGIC;
  signal \NLW_counter_stg20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_counter_stg20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter_stg30_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_counter_stg30_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \counter_stg2[0]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \counter_stg3[11]_i_3\ : label is "soft_lutpair137";
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => p_0_in(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      I1 => \counter_stg1_reg__0\(1),
      O => p_0_in(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(2),
      O => \counter_stg1[2]_i_1_n_0\
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(3),
      O => p_0_in(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(3),
      I4 => \counter_stg1_reg__0\(4),
      O => p_0_in(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => status_vector(0),
      I1 => counter_stg1_roll,
      I2 => p_3_in,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(4),
      I5 => counter_stg1_reg(5),
      O => p_0_in(5)
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => p_0_in(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => p_0_in(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => \counter_stg1[2]_i_1_n_0\,
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => p_0_in(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => p_0_in(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => '1',
      D => p_0_in(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
counter_stg20_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter_stg2_reg(0),
      CI_TOP => '0',
      CO(7) => counter_stg20_carry_n_0,
      CO(6) => counter_stg20_carry_n_1,
      CO(5) => counter_stg20_carry_n_2,
      CO(4) => counter_stg20_carry_n_3,
      CO(3) => counter_stg20_carry_n_4,
      CO(2) => counter_stg20_carry_n_5,
      CO(1) => counter_stg20_carry_n_6,
      CO(0) => counter_stg20_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
      S(7 downto 0) => counter_stg2_reg(8 downto 1)
    );
\counter_stg20_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_stg20_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_counter_stg20_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \counter_stg20_carry__0_n_6\,
      CO(0) => \counter_stg20_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_counter_stg20_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \p_0_in__0\(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => counter_stg2_reg(11 downto 9)
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \p_0_in__0\(0)
    );
\counter_stg2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => counter_stg1_reg(5),
      I2 => \counter_stg1_reg__0\(4),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(1),
      O => counter_stg1_roll
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(0),
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(10),
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(11),
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(1),
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(2),
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(3),
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(4),
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(5),
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(6),
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(7),
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(8),
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg1_roll,
      D => \p_0_in__0\(9),
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
counter_stg30_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter_stg3_reg(0),
      CI_TOP => '0',
      CO(7) => counter_stg30_carry_n_0,
      CO(6) => counter_stg30_carry_n_1,
      CO(5) => counter_stg30_carry_n_2,
      CO(4) => counter_stg30_carry_n_3,
      CO(3) => counter_stg30_carry_n_4,
      CO(2) => counter_stg30_carry_n_5,
      CO(1) => counter_stg30_carry_n_6,
      CO(0) => counter_stg30_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__1\(8 downto 1),
      S(7 downto 0) => counter_stg3_reg(8 downto 1)
    );
\counter_stg30_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_stg30_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_counter_stg30_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \counter_stg30_carry__0_n_6\,
      CO(0) => \counter_stg30_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_counter_stg30_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \p_0_in__1\(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => counter_stg3_reg(11 downto 9)
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \p_0_in__1\(0)
    );
\counter_stg3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \counter_stg3[11]_i_2_n_0\,
      I1 => counter_stg2_reg(11),
      I2 => counter_stg2_reg(10),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg2_reg(9),
      I5 => counter_stg1_roll,
      O => counter_stg30
    );
\counter_stg3[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter_stg2_reg(5),
      I1 => counter_stg2_reg(4),
      I2 => counter_stg2_reg(7),
      I3 => counter_stg2_reg(6),
      I4 => \counter_stg3[11]_i_3_n_0\,
      O => \counter_stg3[11]_i_2_n_0\
    );
\counter_stg3[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(2),
      I1 => counter_stg2_reg(3),
      I2 => counter_stg2_reg(0),
      I3 => counter_stg2_reg(1),
      O => \counter_stg3[11]_i_3_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(0),
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(10),
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(11),
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(1),
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(2),
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(3),
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(4),
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(5),
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(6),
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(7),
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(8),
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => reset_reg_0,
      CE => counter_stg30,
      D => \p_0_in__1\(9),
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_3_in,
      I1 => counter_stg1_reg(5),
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => reset_i_3_n_0,
      I1 => counter_stg3_reg(11),
      I2 => counter_stg3_reg(5),
      I3 => counter_stg3_reg(0),
      I4 => counter_stg3_reg(9),
      I5 => three_sec_timeout0,
      O => p_3_in
    );
reset_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => counter_stg3_reg(10),
      I1 => counter_stg3_reg(4),
      I2 => counter_stg3_reg(3),
      I3 => counter_stg3_reg(6),
      I4 => reset_i_5_n_0,
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(8),
      I2 => counter_stg2_reg(10),
      I3 => counter_stg2_reg(4),
      I4 => \counter_stg3[11]_i_3_n_0\,
      I5 => reset_i_6_n_0,
      O => three_sec_timeout0
    );
reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg3_reg(2),
      I1 => counter_stg3_reg(7),
      I2 => counter_stg3_reg(8),
      I3 => counter_stg3_reg(1),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter_stg2_reg(6),
      I1 => counter_stg2_reg(7),
      I2 => counter_stg2_reg(5),
      I3 => counter_stg2_reg(11),
      O => reset_i_6_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => reset_reg_0,
      CE => '1',
      D => reset0,
      Q => wtd_reset,
      R => '0'
    );
reset_sync1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_125_out,
      I1 => wtd_reset,
      I2 => reset_sync5,
      O => reset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt is
  port (
    gmii_rx_dv_out_reg_0 : out STD_LOGIC;
    gmii_rx_er_out_reg_0 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_out : in STD_LOGIC;
    gmii_rx_er_out_reg_1 : in STD_LOGIC;
    gmii_rx_dv : in STD_LOGIC;
    rx_er_aligned_reg_0 : in STD_LOGIC;
    gmii_rx_er : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt : entity is "gig_ethernet_pcs_pma_0_rx_rate_adapt";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt is
  signal muxsel : STD_LOGIC;
  signal muxsel_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_dv_aligned : STD_LOGIC;
  signal rx_dv_aligned_i_1_n_0 : STD_LOGIC;
  signal rx_dv_reg1 : STD_LOGIC;
  signal rx_dv_reg2 : STD_LOGIC;
  signal rx_er_aligned : STD_LOGIC;
  signal rx_er_aligned_0 : STD_LOGIC;
  signal rx_er_reg1 : STD_LOGIC;
  signal rx_er_reg2 : STD_LOGIC;
  signal rxd_aligned : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rxd_aligned[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_aligned[7]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \rxd_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \rxd_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \rxd_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal rxd_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sfd_enable : STD_LOGIC;
  signal sfd_enable0 : STD_LOGIC;
  signal sfd_enable_i_1_n_0 : STD_LOGIC;
  signal sfd_enable_i_2_n_0 : STD_LOGIC;
  signal sfd_enable_i_4_n_0 : STD_LOGIC;
  signal sfd_enable_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rx_dv_aligned_i_1 : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of rx_er_aligned_i_1 : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \rxd_aligned[0]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \rxd_aligned[1]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \rxd_aligned[2]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \rxd_aligned[3]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \rxd_aligned[4]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \rxd_aligned[5]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \rxd_aligned[6]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \rxd_aligned[7]_i_1\ : label is "soft_lutpair141";
begin
gmii_rx_dv_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_dv_aligned,
      Q => gmii_rx_dv_out_reg_0,
      R => reset_out
    );
gmii_rx_er_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_er_aligned,
      Q => gmii_rx_er_out_reg_0,
      R => reset_out
    );
\gmii_rxd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(0),
      Q => gmii_rxd(0),
      R => reset_out
    );
\gmii_rxd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(1),
      Q => gmii_rxd(1),
      R => reset_out
    );
\gmii_rxd_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(2),
      Q => gmii_rxd(2),
      R => reset_out
    );
\gmii_rxd_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(3),
      Q => gmii_rxd(3),
      R => reset_out
    );
\gmii_rxd_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(4),
      Q => gmii_rxd(4),
      R => reset_out
    );
\gmii_rxd_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(5),
      Q => gmii_rxd(5),
      R => reset_out
    );
\gmii_rxd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(6),
      Q => gmii_rxd(6),
      R => reset_out
    );
\gmii_rxd_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rxd_aligned(7),
      Q => gmii_rxd(7),
      R => reset_out
    );
muxsel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCA8CC"
    )
        port map (
      I0 => sfd_enable_i_5_n_0,
      I1 => muxsel,
      I2 => sfd_enable_i_2_n_0,
      I3 => sfd_enable,
      I4 => sfd_enable_i_4_n_0,
      I5 => reset_out,
      O => muxsel_i_1_n_0
    );
muxsel_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => '1',
      D => muxsel_i_1_n_0,
      Q => muxsel,
      R => '0'
    );
rx_dv_aligned_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => rx_dv_reg1,
      I1 => muxsel,
      I2 => rx_dv_reg2,
      O => rx_dv_aligned_i_1_n_0
    );
rx_dv_aligned_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_dv_aligned_i_1_n_0,
      Q => rx_dv_aligned,
      R => reset_out
    );
rx_dv_reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => gmii_rx_dv,
      Q => rx_dv_reg1,
      R => reset_out
    );
rx_dv_reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_dv_reg1,
      Q => rx_dv_reg2,
      R => reset_out
    );
rx_er_aligned_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => muxsel,
      I1 => rx_er_reg1,
      I2 => rx_er_reg2,
      O => rx_er_aligned_0
    );
rx_er_aligned_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_er_aligned_0,
      Q => rx_er_aligned,
      R => reset_out
    );
rx_er_reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => gmii_rx_er,
      Q => rx_er_reg1,
      R => reset_out
    );
rx_er_reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => rx_er_reg1,
      Q => rx_er_reg2,
      R => reset_out
    );
\rxd_aligned[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxd_reg2(4),
      I1 => muxsel,
      I2 => rxd_reg2(0),
      O => \rxd_aligned[0]_i_1_n_0\
    );
\rxd_aligned[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxd_reg2(5),
      I1 => muxsel,
      I2 => rxd_reg2(1),
      O => \rxd_aligned[1]_i_1_n_0\
    );
\rxd_aligned[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxd_reg2(6),
      I1 => muxsel,
      I2 => rxd_reg2(2),
      O => \rxd_aligned[2]_i_1_n_0\
    );
\rxd_aligned[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxd_reg2(7),
      I1 => muxsel,
      I2 => rxd_reg2(3),
      O => \rxd_aligned[3]_i_1_n_0\
    );
\rxd_aligned[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rxd_reg1_reg_n_0_[0]\,
      I1 => muxsel,
      I2 => rxd_reg2(4),
      O => \rxd_aligned[4]_i_1_n_0\
    );
\rxd_aligned[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rxd_reg1_reg_n_0_[1]\,
      I1 => muxsel,
      I2 => rxd_reg2(5),
      O => \rxd_aligned[5]_i_1_n_0\
    );
\rxd_aligned[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rxd_reg1_reg_n_0_[2]\,
      I1 => muxsel,
      I2 => rxd_reg2(6),
      O => \rxd_aligned[6]_i_1_n_0\
    );
\rxd_aligned[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rxd_reg1_reg_n_0_[3]\,
      I1 => muxsel,
      I2 => rxd_reg2(7),
      O => \rxd_aligned[7]_i_1_n_0\
    );
\rxd_aligned_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[0]_i_1_n_0\,
      Q => rxd_aligned(0),
      R => reset_out
    );
\rxd_aligned_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[1]_i_1_n_0\,
      Q => rxd_aligned(1),
      R => reset_out
    );
\rxd_aligned_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[2]_i_1_n_0\,
      Q => rxd_aligned(2),
      R => reset_out
    );
\rxd_aligned_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[3]_i_1_n_0\,
      Q => rxd_aligned(3),
      R => reset_out
    );
\rxd_aligned_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[4]_i_1_n_0\,
      Q => rxd_aligned(4),
      R => reset_out
    );
\rxd_aligned_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[5]_i_1_n_0\,
      Q => rxd_aligned(5),
      R => reset_out
    );
\rxd_aligned_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[6]_i_1_n_0\,
      Q => rxd_aligned(6),
      R => reset_out
    );
\rxd_aligned_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_aligned[7]_i_1_n_0\,
      Q => rxd_aligned(7),
      R => reset_out
    );
\rxd_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(0),
      Q => \rxd_reg1_reg_n_0_[0]\,
      R => reset_out
    );
\rxd_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(1),
      Q => \rxd_reg1_reg_n_0_[1]\,
      R => reset_out
    );
\rxd_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(2),
      Q => \rxd_reg1_reg_n_0_[2]\,
      R => reset_out
    );
\rxd_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(3),
      Q => \rxd_reg1_reg_n_0_[3]\,
      R => reset_out
    );
\rxd_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(4),
      Q => p_0_in(0),
      R => reset_out
    );
\rxd_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(5),
      Q => p_0_in(1),
      R => reset_out
    );
\rxd_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(6),
      Q => p_0_in(2),
      R => reset_out
    );
\rxd_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => D(7),
      Q => p_0_in(3),
      R => reset_out
    );
\rxd_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_reg1_reg_n_0_[0]\,
      Q => rxd_reg2(0),
      R => reset_out
    );
\rxd_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_reg1_reg_n_0_[1]\,
      Q => rxd_reg2(1),
      R => reset_out
    );
\rxd_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_reg1_reg_n_0_[2]\,
      Q => rxd_reg2(2),
      R => reset_out
    );
\rxd_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => \rxd_reg1_reg_n_0_[3]\,
      Q => rxd_reg2(3),
      R => reset_out
    );
\rxd_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => p_0_in(0),
      Q => rxd_reg2(4),
      R => reset_out
    );
\rxd_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => p_0_in(1),
      Q => rxd_reg2(5),
      R => reset_out
    );
\rxd_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => p_0_in(2),
      Q => rxd_reg2(6),
      R => reset_out
    );
\rxd_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => gmii_rx_er_out_reg_1,
      D => p_0_in(3),
      Q => rxd_reg2(7),
      R => reset_out
    );
sfd_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFCCC0C8C0CC"
    )
        port map (
      I0 => sfd_enable_i_2_n_0,
      I1 => sfd_enable0,
      I2 => gmii_rx_er_out_reg_1,
      I3 => sfd_enable_i_4_n_0,
      I4 => sfd_enable_i_5_n_0,
      I5 => sfd_enable,
      O => sfd_enable_i_1_n_0
    );
sfd_enable_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => D(0),
      I2 => D(1),
      I3 => D(3),
      I4 => D(2),
      O => sfd_enable_i_2_n_0
    );
sfd_enable_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gmii_rx_dv,
      I1 => rx_dv_reg1,
      O => sfd_enable0
    );
sfd_enable_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => gmii_rx_er_out_reg_1,
      I3 => p_0_in(2),
      O => sfd_enable_i_4_n_0
    );
sfd_enable_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \rxd_reg1_reg_n_0_[0]\,
      I1 => \rxd_reg1_reg_n_0_[3]\,
      I2 => p_0_in(3),
      I3 => \rxd_reg1_reg_n_0_[2]\,
      I4 => \rxd_reg1_reg_n_0_[1]\,
      O => sfd_enable_i_5_n_0
    );
sfd_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_er_aligned_reg_0,
      CE => '1',
      D => sfd_enable_i_1_n_0,
      Q => sfd_enable,
      R => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen is
  port (
    mmcm_locked_out : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    reset_1 : out STD_LOGIC;
    not_rxclk : out STD_LOGIC;
    refclk625_p : in STD_LOGIC;
    refclk625_n : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen : entity is "gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen is
  signal clk125_i : STD_LOGIC;
  signal clk625_i : STD_LOGIC;
  signal clk625_in : STD_LOGIC;
  signal clk_fb : STD_LOGIC;
  signal clk_fb_i : STD_LOGIC;
  signal \^reset_0\ : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CDDCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme3_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clk125_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clk125_buf : label is "BUFG";
  attribute BOX_TYPE of clk312_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clk625_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clk625_buf : label is "BUFG";
  attribute BOX_TYPE of clk625_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clk625_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clk625_ibufg : label is "0";
  attribute XILINX_LEGACY_PRIM of clk625_ibufg : label is "IBUFGDS";
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of clkf_buf : label is "BUFG";
  attribute BOX_TYPE of mmcme3_adv_inst : label is "PRIMITIVE";
begin
  not_rxclk <= \^reset_0\;
  reset_0 <= \^reset_0\;
clk125_buf: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE"
    )
        port map (
      CE => '1',
      I => clk125_i,
      O => reset_1
    );
clk312_buf: unisim.vcomponents.BUFGCE_DIV
    generic map(
      BUFGCE_DIVIDE => 2,
      CE_TYPE => "SYNC",
      HARDSYNC_CLR => "FALSE",
      IS_CE_INVERTED => '0',
      IS_CLR_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk625_i,
      O => CLK
    );
clk625_buf: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE"
    )
        port map (
      CE => '1',
      I => clk625_i,
      O => \^reset_0\
    );
clk625_ibufg: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => refclk625_p,
      IB => refclk625_n,
      O => clk625_in
    );
clkf_buf: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE"
    )
        port map (
      CE => '1',
      I => clk_fb_i,
      O => clk_fb
    );
mmcme3_adv_inst: unisim.vcomponents.MMCME3_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 2.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => "FALSE",
      CLKIN1_PERIOD => 1.600000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 5.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => "FALSE",
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => "FALSE",
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => "FALSE",
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => "FALSE",
      CLKOUT4_CASCADE => "FALSE",
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => "FALSE",
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => "FALSE",
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => "FALSE",
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 2,
      IS_CLKFBIN_INVERTED => '0',
      IS_CLKIN1_INVERTED => '0',
      IS_CLKIN2_INVERTED => '0',
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CDDCDONE => NLW_mmcme3_adv_inst_CDDCDONE_UNCONNECTED,
      CDDCREQ => '0',
      CLKFBIN => clk_fb,
      CLKFBOUT => clk_fb_i,
      CLKFBOUTB => NLW_mmcme3_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcme3_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk625_in,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcme3_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk125_i,
      CLKOUT0B => NLW_mmcme3_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcme3_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcme3_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clk625_i,
      CLKOUT2B => NLW_mmcme3_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcme3_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcme3_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcme3_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcme3_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcme3_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcme3_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcme3_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => mmcm_locked_out,
      PSCLK => '0',
      PSDONE => NLW_mmcme3_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
  port (
    data_out : out STD_LOGIC;
    mmcm_locked_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => mmcm_locked_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    data_out : out STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => speed_is_100,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1 is
  port (
    data_out : out STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => speed_is_10_100,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_locked_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_locked_sync_125 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => mmcm_locked_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => mmcm_locked_sync_125,
      R => '0'
    );
\rst_dly[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_locked_sync_125,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt is
  port (
    gmii_tx_en : out STD_LOGIC;
    gmii_tx_er : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_tx_en_out_reg_0 : in STD_LOGIC;
    gmii_tx_en_out_reg_1 : in STD_LOGIC;
    gmii_tx_er_out_reg_0 : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt : entity is "gig_ethernet_pcs_pma_0_tx_rate_adapt";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt is
begin
gmii_tx_en_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_tx_en_out_reg_0,
      Q => gmii_tx_en,
      R => reset_out
    );
gmii_tx_er_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_tx_er_out_reg_0,
      Q => gmii_tx_er,
      R => reset_out
    );
\gmii_txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(0),
      Q => Q(0),
      R => reset_out
    );
\gmii_txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(1),
      Q => Q(1),
      R => reset_out
    );
\gmii_txd_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(2),
      Q => Q(2),
      R => reset_out
    );
\gmii_txd_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(3),
      Q => Q(3),
      R => reset_out
    );
\gmii_txd_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(4),
      Q => Q(4),
      R => reset_out
    );
\gmii_txd_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(5),
      Q => Q(5),
      R => reset_out
    );
\gmii_txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(6),
      Q => Q(6),
      R => reset_out
    );
\gmii_txd_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gmii_tx_en_out_reg_1,
      CE => E(0),
      D => gmii_txd(7),
      Q => Q(7),
      R => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_AUTO_NEG is
  port (
    ABILITY_MATCH_2 : out STD_LOGIC;
    IDLE_MATCH_2 : out STD_LOGIC;
    XMIT_DATA_INT : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RECEIVED_IDLE : out STD_LOGIC;
    ABILITY_MATCH : out STD_LOGIC;
    RX_CONFIG_REG_NULL_reg_0 : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]\ : out STD_LOGIC;
    \RX_CONFIG_REG_REG_reg[3]_0\ : out STD_LOGIC;
    \RX_CONFIG_REG_reg[15]\ : out STD_LOGIC;
    \RX_CONFIG_REG_REG_reg[12]_0\ : out STD_LOGIC;
    \RX_CONFIG_REG_REG_reg[13]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    XMIT_CONFIG : out STD_LOGIC;
    RX_DV0 : out STD_LOGIC;
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0\ : out STD_LOGIC;
    XMIT_DATA : out STD_LOGIC;
    \MR_LP_ADV_ABILITY_INT_reg[13]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \RX_CONFIG_SNAPSHOT_reg[13]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RESTART_AN_SET : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    RX_CONFIG_VALID : in STD_LOGIC;
    CONFIG_REG_MATCH_COMB : in STD_LOGIC;
    RX_IDLE : in STD_LOGIC;
    IDLE_MATCH0 : in STD_LOGIC;
    \MR_LP_ADV_ABILITY_INT_reg[16]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BASEX_REMOTE_FAULT_RSLVD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RECEIVED_IDLE_reg_0 : in STD_LOGIC;
    ABILITY_MATCH_reg_0 : in STD_LOGIC;
    RX_CONFIG_REG_NULL_reg_1 : in STD_LOGIC;
    RXSYNC_STATUS : in STD_LOGIC;
    ABILITY_MATCH_reg_1 : in STD_LOGIC;
    ABILITY_MATCH_reg_2 : in STD_LOGIC;
    CONSISTENCY_MATCH_reg_0 : in STD_LOGIC;
    \STATE_reg[2]_0\ : in STD_LOGIC;
    RX_INVALID : in STD_LOGIC;
    SOP_REG3 : in STD_LOGIC;
    RECEIVE : in STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RX_RUDI_INVALID_DELAY_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_AUTO_NEG : entity is "AUTO_NEG";
end gig_ethernet_pcs_pma_0_AUTO_NEG;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_AUTO_NEG is
  signal \^ability_match\ : STD_LOGIC;
  signal \^ability_match_2\ : STD_LOGIC;
  signal ABILITY_MATCH_2_i_10_n_0 : STD_LOGIC;
  signal ABILITY_MATCH_i_4_n_0 : STD_LOGIC;
  signal ACKNOWLEDGE_MATCH_2 : STD_LOGIC;
  signal ACKNOWLEDGE_MATCH_20 : STD_LOGIC;
  signal ACKNOWLEDGE_MATCH_30 : STD_LOGIC;
  signal ACKNOWLEDGE_MATCH_3_reg_n_0 : STD_LOGIC;
  signal AN_SYNC_STATUS : STD_LOGIC;
  signal AN_SYNC_STATUS_i_1_n_0 : STD_LOGIC;
  signal CONFIG_REG_MATCH : STD_LOGIC;
  signal CONSISTENCY_MATCH : STD_LOGIC;
  signal CONSISTENCY_MATCH_COMB : STD_LOGIC;
  signal CONSISTENCY_MATCH_i_2_n_0 : STD_LOGIC;
  signal CONSISTENCY_MATCH_i_4_n_0 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal GENERATE_REMOTE_FAULT : STD_LOGIC;
  signal GENERATE_REMOTE_FAULT0 : STD_LOGIC;
  signal GENERATE_REMOTE_FAULT_i_2_n_0 : STD_LOGIC;
  signal GENERATE_REMOTE_FAULT_i_3_n_0 : STD_LOGIC;
  signal GENERATE_REMOTE_FAULT_i_4_n_0 : STD_LOGIC;
  signal IDLE_MATCH : STD_LOGIC;
  signal \LINK_TIMER[0]_i_1_n_0\ : STD_LOGIC;
  signal \LINK_TIMER[9]_i_1_n_0\ : STD_LOGIC;
  signal \LINK_TIMER[9]_i_3_n_0\ : STD_LOGIC;
  signal LINK_TIMER_DONE : STD_LOGIC;
  signal LINK_TIMER_DONE_i_1_n_0 : STD_LOGIC;
  signal LINK_TIMER_DONE_i_2_n_0 : STD_LOGIC;
  signal LINK_TIMER_DONE_i_3_n_0 : STD_LOGIC;
  signal LINK_TIMER_SATURATED : STD_LOGIC;
  signal LINK_TIMER_SATURATED_COMB : STD_LOGIC;
  signal LINK_TIMER_SATURATED_i_2_n_0 : STD_LOGIC;
  signal LINK_TIMER_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal MR_AN_COMPLETE_i_1_n_0 : STD_LOGIC;
  signal MR_AN_ENABLE_CHANGE : STD_LOGIC;
  signal MR_AN_ENABLE_CHANGE0 : STD_LOGIC;
  signal MR_AN_ENABLE_REG1 : STD_LOGIC;
  signal MR_AN_ENABLE_REG2 : STD_LOGIC;
  signal \MR_LP_ADV_ABILITY_INT_reg_n_0_[16]\ : STD_LOGIC;
  signal MR_PAGE_RX_SET0 : STD_LOGIC;
  signal MR_REMOTE_FAULT_i_1_n_0 : STD_LOGIC;
  signal MR_RESTART_AN_INT : STD_LOGIC;
  signal MR_RESTART_AN_INT_i_1_n_0 : STD_LOGIC;
  signal MR_RESTART_AN_SET_REG1 : STD_LOGIC;
  signal MR_RESTART_AN_SET_REG2 : STD_LOGIC;
  signal \^no_management.configuration_vector_reg_reg[0]\ : STD_LOGIC;
  signal PREVIOUS_STATE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PULSE4096 : STD_LOGIC;
  signal PULSE40960 : STD_LOGIC;
  signal \^received_idle\ : STD_LOGIC;
  signal \^rx_config_reg_null_reg_0\ : STD_LOGIC;
  signal \^rx_config_reg_reg_reg[13]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \RX_CONFIG_REG_REG_reg_n_0_[11]\ : STD_LOGIC;
  signal \RX_CONFIG_REG_REG_reg_n_0_[3]\ : STD_LOGIC;
  signal \RX_CONFIG_REG_REG_reg_n_0_[4]\ : STD_LOGIC;
  signal RX_CONFIG_SNAPSHOT : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT[15]_i_2_n_0\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT[15]_i_3_n_0\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[10]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[11]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[15]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[6]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[7]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[8]\ : STD_LOGIC;
  signal \RX_CONFIG_SNAPSHOT_reg_n_0_[9]\ : STD_LOGIC;
  signal RX_IDLE_REG1 : STD_LOGIC;
  signal RX_IDLE_REG2 : STD_LOGIC;
  signal RX_RUDI_INVALID_DELAY : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \SGMII_SPEED[1]_i_2_n_0\ : STD_LOGIC;
  signal START_LINK_TIMER : STD_LOGIC;
  signal START_LINK_TIMER_REG : STD_LOGIC;
  signal START_LINK_TIMER_REG2 : STD_LOGIC;
  signal START_LINK_TIMER_REG_i_2_n_0 : STD_LOGIC;
  signal START_LINK_TIMER_REG_i_3_n_0 : STD_LOGIC;
  signal START_LINK_TIMER_REG_i_4_n_0 : STD_LOGIC;
  signal STATE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \STATE[0]_i_2_n_0\ : STD_LOGIC;
  signal \STATE[0]_i_3_n_0\ : STD_LOGIC;
  signal \STATE[0]_i_4_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_2_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_3_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_4_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_5_n_0\ : STD_LOGIC;
  signal \STATE[1]_i_6_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_2_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_3_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_4_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_5_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_6_n_0\ : STD_LOGIC;
  signal \STATE[2]_i_7_n_0\ : STD_LOGIC;
  signal \STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \STATE[3]_i_2_n_0\ : STD_LOGIC;
  signal \STATE[3]_i_3_n_0\ : STD_LOGIC;
  signal SYNC_STATUS_HELD : STD_LOGIC;
  signal SYNC_STATUS_HELD_i_1_n_0 : STD_LOGIC;
  signal TIMER4096_MSB_REG : STD_LOGIC;
  signal TIMER4096_reg : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \TIMER4096_reg_n_0_[0]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[10]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[1]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[2]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[3]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[4]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[5]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[6]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[7]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[8]\ : STD_LOGIC;
  signal \TIMER4096_reg_n_0_[9]\ : STD_LOGIC;
  signal TOGGLE_RX : STD_LOGIC;
  signal TOGGLE_TX : STD_LOGIC;
  signal TOGGLE_TX_i_1_n_0 : STD_LOGIC;
  signal TOGGLE_TX_i_2_n_0 : STD_LOGIC;
  signal \TX_CONFIG_REG_INT[11]_i_1_n_0\ : STD_LOGIC;
  signal \TX_CONFIG_REG_INT[14]_i_1_n_0\ : STD_LOGIC;
  signal XMIT_CONFIG_INT : STD_LOGIC;
  signal XMIT_CONFIG_INT_i_1_n_0 : STD_LOGIC;
  signal XMIT_CONFIG_INT_i_2_n_0 : STD_LOGIC;
  signal \^xmit_data_int\ : STD_LOGIC;
  signal XMIT_DATA_INT0 : STD_LOGIC;
  signal \^an_interrupt\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ABILITY_MATCH_2_i_7 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ABILITY_MATCH_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ACKNOWLEDGE_MATCH_2_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ACKNOWLEDGE_MATCH_3_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of AN_SYNC_STATUS_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of GENERATE_REMOTE_FAULT_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of GENERATE_REMOTE_FAULT_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LINK_TIMER[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \LINK_TIMER[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \LINK_TIMER[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LINK_TIMER[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LINK_TIMER[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \LINK_TIMER[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \LINK_TIMER[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \LINK_TIMER[9]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \RX_CONFIG_SNAPSHOT[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RX_CONFIG_SNAPSHOT[15]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of RX_ER_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SGMII_SPEED[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of START_LINK_TIMER_REG_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \STATE[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \STATE[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \STATE[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \STATE[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \STATE[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \STATE[1]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \STATE[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \STATE[2]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \STATE[2]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \STATE[2]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \STATE[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of STATUS_VECTOR_0_PRE_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of SYNC_STATUS_HELD_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TX_CONFIG_REG_INT[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \TX_CONFIG_REG_INT[11]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \TX_CONFIG_REG_INT[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of XMIT_CONFIG_INT_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \XMIT_CONFIG_INT_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of XMIT_DATA_INT_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \XMIT_DATA_INT_i_1__0\ : label is "soft_lutpair15";
begin
  ABILITY_MATCH <= \^ability_match\;
  ABILITY_MATCH_2 <= \^ability_match_2\;
  D(2 downto 0) <= \^d\(2 downto 0);
  \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]\ <= \^no_management.configuration_vector_reg_reg[0]\;
  RECEIVED_IDLE <= \^received_idle\;
  RX_CONFIG_REG_NULL_reg_0 <= \^rx_config_reg_null_reg_0\;
  \RX_CONFIG_REG_REG_reg[13]_0\(10 downto 0) <= \^rx_config_reg_reg_reg[13]_0\(10 downto 0);
  XMIT_DATA_INT <= \^xmit_data_int\;
  an_interrupt <= \^an_interrupt\;
  status_vector(5 downto 0) <= \^status_vector\(5 downto 0);
ABILITY_MATCH_2_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFFFAE"
    )
        port map (
      I0 => \^received_idle\,
      I1 => \RX_CONFIG_REG_REG_reg_n_0_[11]\,
      I2 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      I3 => \RX_CONFIG_REG_REG_reg_n_0_[4]\,
      I4 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(4),
      O => ABILITY_MATCH_2_i_10_n_0
    );
ABILITY_MATCH_2_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ABILITY_MATCH_2_i_10_n_0,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      I2 => p_0_in0_in,
      I3 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(3),
      I4 => \RX_CONFIG_REG_REG_reg_n_0_[3]\,
      O => \RX_CONFIG_REG_reg[15]\
    );
ABILITY_MATCH_2_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rx_config_reg_reg_reg[13]_0\(9),
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(12),
      I2 => \RX_CONFIG_REG_REG_reg_n_0_[11]\,
      I3 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      O => \RX_CONFIG_REG_REG_reg[12]_0\
    );
ABILITY_MATCH_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => CONFIG_REG_MATCH_COMB,
      Q => \^ability_match_2\,
      R => SR(0)
    );
ABILITY_MATCH_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ABILITY_MATCH_i_4_n_0,
      I1 => ABILITY_MATCH_2_i_10_n_0,
      I2 => ABILITY_MATCH_reg_1,
      I3 => ABILITY_MATCH_reg_2,
      O => \RX_CONFIG_REG_REG_reg[3]_0\
    );
ABILITY_MATCH_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \RX_CONFIG_REG_REG_reg_n_0_[3]\,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(3),
      I2 => p_0_in0_in,
      I3 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      O => ABILITY_MATCH_i_4_n_0
    );
ABILITY_MATCH_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => ABILITY_MATCH_reg_0,
      Q => \^ability_match\,
      R => '0'
    );
ACKNOWLEDGE_MATCH_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(14),
      O => ACKNOWLEDGE_MATCH_20
    );
ACKNOWLEDGE_MATCH_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => ACKNOWLEDGE_MATCH_20,
      Q => ACKNOWLEDGE_MATCH_2,
      R => SR(0)
    );
ACKNOWLEDGE_MATCH_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ACKNOWLEDGE_MATCH_2,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(14),
      I2 => p_0_in26_in,
      O => ACKNOWLEDGE_MATCH_30
    );
ACKNOWLEDGE_MATCH_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => ACKNOWLEDGE_MATCH_30,
      Q => ACKNOWLEDGE_MATCH_3_reg_n_0,
      R => SR(0)
    );
AN_SYNC_STATUS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => SYNC_STATUS_HELD,
      I1 => LINK_TIMER_SATURATED,
      I2 => PULSE4096,
      I3 => RXSYNC_STATUS,
      I4 => AN_SYNC_STATUS,
      O => AN_SYNC_STATUS_i_1_n_0
    );
AN_SYNC_STATUS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => AN_SYNC_STATUS_i_1_n_0,
      Q => AN_SYNC_STATUS,
      R => \out\
    );
\BASEX_REMOTE_FAULT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => BASEX_REMOTE_FAULT_RSLVD(0),
      Q => \^status_vector\(2),
      R => \out\
    );
CONFIG_REG_MATCH_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_REG_MATCH_COMB,
      Q => CONFIG_REG_MATCH,
      R => \out\
    );
CONSISTENCY_MATCH_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000009"
    )
        port map (
      I0 => \RX_CONFIG_SNAPSHOT_reg_n_0_[15]\,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      I2 => CONSISTENCY_MATCH_i_2_n_0,
      I3 => CONSISTENCY_MATCH_reg_0,
      I4 => CONSISTENCY_MATCH_i_4_n_0,
      O => CONSISTENCY_MATCH_COMB
    );
CONSISTENCY_MATCH_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \RX_CONFIG_SNAPSHOT_reg_n_0_[6]\,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(6),
      I2 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(8),
      I3 => \RX_CONFIG_SNAPSHOT_reg_n_0_[8]\,
      I4 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(7),
      I5 => \RX_CONFIG_SNAPSHOT_reg_n_0_[7]\,
      O => CONSISTENCY_MATCH_i_2_n_0
    );
CONSISTENCY_MATCH_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \RX_CONFIG_SNAPSHOT_reg_n_0_[9]\,
      I1 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(9),
      I2 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(10),
      I3 => \RX_CONFIG_SNAPSHOT_reg_n_0_[10]\,
      I4 => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      I5 => \RX_CONFIG_SNAPSHOT_reg_n_0_[11]\,
      O => CONSISTENCY_MATCH_i_4_n_0
    );
CONSISTENCY_MATCH_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => CONSISTENCY_MATCH_COMB,
      Q => CONSISTENCY_MATCH,
      R => \out\
    );
GENERATE_REMOTE_FAULT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000D00000"
    )
        port map (
      I0 => \STATE[0]_i_4_n_0\,
      I1 => GENERATE_REMOTE_FAULT_i_2_n_0,
      I2 => \STATE[2]_i_2_n_0\,
      I3 => \STATE[1]_i_2_n_0\,
      I4 => GENERATE_REMOTE_FAULT_i_3_n_0,
      I5 => \STATE[3]_i_1_n_0\,
      O => GENERATE_REMOTE_FAULT0
    );
GENERATE_REMOTE_FAULT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEFEEEFEEEE"
    )
        port map (
      I0 => \STATE[0]_i_2_n_0\,
      I1 => GENERATE_REMOTE_FAULT_i_4_n_0,
      I2 => \STATE[2]_i_4_n_0\,
      I3 => \STATE[2]_i_5_n_0\,
      I4 => STATE(0),
      I5 => LINK_TIMER_DONE,
      O => GENERATE_REMOTE_FAULT_i_2_n_0
    );
GENERATE_REMOTE_FAULT_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => STATE(3),
      I1 => STATE(0),
      I2 => STATE(2),
      I3 => STATE(1),
      O => GENERATE_REMOTE_FAULT_i_3_n_0
    );
GENERATE_REMOTE_FAULT_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000322"
    )
        port map (
      I0 => Q(3),
      I1 => STATE(2),
      I2 => LINK_TIMER_DONE,
      I3 => STATE(0),
      I4 => STATE(1),
      O => GENERATE_REMOTE_FAULT_i_4_n_0
    );
GENERATE_REMOTE_FAULT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => GENERATE_REMOTE_FAULT0,
      Q => GENERATE_REMOTE_FAULT,
      R => \out\
    );
IDLE_MATCH_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_IDLE_REG2,
      D => RX_IDLE,
      Q => IDLE_MATCH_2,
      R => \out\
    );
IDLE_MATCH_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_IDLE_REG2,
      D => IDLE_MATCH0,
      Q => IDLE_MATCH,
      R => \out\
    );
\LINK_TIMER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LINK_TIMER_reg(0),
      O => \LINK_TIMER[0]_i_1_n_0\
    );
\LINK_TIMER[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => LINK_TIMER_reg(1),
      I1 => LINK_TIMER_reg(0),
      O => \plusOp__0\(1)
    );
\LINK_TIMER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => LINK_TIMER_reg(2),
      I1 => LINK_TIMER_reg(1),
      I2 => LINK_TIMER_reg(0),
      O => \plusOp__0\(2)
    );
\LINK_TIMER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => LINK_TIMER_reg(3),
      I1 => LINK_TIMER_reg(0),
      I2 => LINK_TIMER_reg(1),
      I3 => LINK_TIMER_reg(2),
      O => \plusOp__0\(3)
    );
\LINK_TIMER[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => LINK_TIMER_reg(4),
      I1 => LINK_TIMER_reg(2),
      I2 => LINK_TIMER_reg(1),
      I3 => LINK_TIMER_reg(0),
      I4 => LINK_TIMER_reg(3),
      O => \plusOp__0\(4)
    );
\LINK_TIMER[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => LINK_TIMER_reg(3),
      I1 => LINK_TIMER_reg(0),
      I2 => LINK_TIMER_reg(1),
      I3 => LINK_TIMER_reg(2),
      I4 => LINK_TIMER_reg(4),
      I5 => LINK_TIMER_reg(5),
      O => \plusOp__0\(5)
    );
\LINK_TIMER[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => LINK_TIMER_reg(6),
      I1 => \LINK_TIMER[9]_i_3_n_0\,
      O => \plusOp__0\(6)
    );
\LINK_TIMER[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => LINK_TIMER_reg(7),
      I1 => \LINK_TIMER[9]_i_3_n_0\,
      I2 => LINK_TIMER_reg(6),
      O => \plusOp__0\(7)
    );
\LINK_TIMER[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => LINK_TIMER_reg(8),
      I1 => LINK_TIMER_reg(6),
      I2 => \LINK_TIMER[9]_i_3_n_0\,
      I3 => LINK_TIMER_reg(7),
      O => \plusOp__0\(8)
    );
\LINK_TIMER[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => LINK_TIMER_SATURATED,
      I1 => PULSE4096,
      I2 => START_LINK_TIMER_REG,
      I3 => \out\,
      O => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => LINK_TIMER_reg(9),
      I1 => LINK_TIMER_reg(7),
      I2 => \LINK_TIMER[9]_i_3_n_0\,
      I3 => LINK_TIMER_reg(6),
      I4 => LINK_TIMER_reg(8),
      O => \plusOp__0\(9)
    );
\LINK_TIMER[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => LINK_TIMER_reg(5),
      I1 => LINK_TIMER_reg(4),
      I2 => LINK_TIMER_reg(2),
      I3 => LINK_TIMER_reg(1),
      I4 => LINK_TIMER_reg(0),
      I5 => LINK_TIMER_reg(3),
      O => \LINK_TIMER[9]_i_3_n_0\
    );
LINK_TIMER_DONE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => LINK_TIMER_DONE_i_2_n_0,
      I1 => START_LINK_TIMER_REG_i_4_n_0,
      I2 => STATE(3),
      I3 => \STATE[2]_i_3_n_0\,
      I4 => LINK_TIMER_DONE_i_3_n_0,
      O => LINK_TIMER_DONE_i_1_n_0
    );
LINK_TIMER_DONE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => START_LINK_TIMER_REG,
      I1 => \out\,
      I2 => LINK_TIMER_SATURATED,
      I3 => LINK_TIMER_DONE,
      I4 => START_LINK_TIMER_REG2,
      O => LINK_TIMER_DONE_i_2_n_0
    );
LINK_TIMER_DONE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000002"
    )
        port map (
      I0 => Q(3),
      I1 => STATE(2),
      I2 => STATE(1),
      I3 => STATE(3),
      I4 => STATE(0),
      I5 => \STATE[1]_i_5_n_0\,
      O => LINK_TIMER_DONE_i_3_n_0
    );
LINK_TIMER_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => LINK_TIMER_DONE_i_1_n_0,
      Q => LINK_TIMER_DONE,
      R => '0'
    );
LINK_TIMER_SATURATED_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => LINK_TIMER_reg(2),
      I1 => LINK_TIMER_reg(5),
      I2 => LINK_TIMER_reg(4),
      I3 => LINK_TIMER_reg(8),
      I4 => LINK_TIMER_SATURATED_i_2_n_0,
      O => LINK_TIMER_SATURATED_COMB
    );
LINK_TIMER_SATURATED_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => LINK_TIMER_reg(1),
      I1 => LINK_TIMER_reg(0),
      I2 => LINK_TIMER_reg(6),
      I3 => LINK_TIMER_reg(9),
      I4 => LINK_TIMER_reg(3),
      I5 => LINK_TIMER_reg(7),
      O => LINK_TIMER_SATURATED_i_2_n_0
    );
LINK_TIMER_SATURATED_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => LINK_TIMER_SATURATED_COMB,
      Q => LINK_TIMER_SATURATED,
      R => \out\
    );
\LINK_TIMER_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \LINK_TIMER[0]_i_1_n_0\,
      Q => LINK_TIMER_reg(0),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(1),
      Q => LINK_TIMER_reg(1),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(2),
      Q => LINK_TIMER_reg(2),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(3),
      Q => LINK_TIMER_reg(3),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(4),
      Q => LINK_TIMER_reg(4),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(5),
      Q => LINK_TIMER_reg(5),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(6),
      Q => LINK_TIMER_reg(6),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(7),
      Q => LINK_TIMER_reg(7),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(8),
      Q => LINK_TIMER_reg(8),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
\LINK_TIMER_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => PULSE4096,
      D => \plusOp__0\(9),
      Q => LINK_TIMER_reg(9),
      R => \LINK_TIMER[9]_i_1_n_0\
    );
MR_AN_COMPLETE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2232222222222020"
    )
        port map (
      I0 => \^an_interrupt\,
      I1 => \out\,
      I2 => STATE(2),
      I3 => STATE(3),
      I4 => STATE(0),
      I5 => STATE(1),
      O => MR_AN_COMPLETE_i_1_n_0
    );
MR_AN_COMPLETE_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => MR_AN_COMPLETE_i_1_n_0,
      Q => \^an_interrupt\,
      R => '0'
    );
MR_AN_ENABLE_CHANGE_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MR_AN_ENABLE_REG2,
      I1 => MR_AN_ENABLE_REG1,
      O => MR_AN_ENABLE_CHANGE0
    );
MR_AN_ENABLE_CHANGE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MR_AN_ENABLE_CHANGE0,
      Q => MR_AN_ENABLE_CHANGE,
      R => \out\
    );
MR_AN_ENABLE_REG1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => Q(3),
      Q => MR_AN_ENABLE_REG1,
      R => \out\
    );
MR_AN_ENABLE_REG2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MR_AN_ENABLE_REG1,
      Q => MR_AN_ENABLE_REG2,
      R => \out\
    );
\MR_LP_ADV_ABILITY_INT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(12),
      Q => \MR_LP_ADV_ABILITY_INT_reg[13]_0\(0),
      R => \out\
    );
\MR_LP_ADV_ABILITY_INT_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      Q => \MR_LP_ADV_ABILITY_INT_reg_n_0_[16]\,
      R => \out\
    );
MR_REMOTE_FAULT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \MR_LP_ADV_ABILITY_INT_reg_n_0_[16]\,
      I1 => GENERATE_REMOTE_FAULT,
      I2 => \^status_vector\(5),
      O => MR_REMOTE_FAULT_i_1_n_0
    );
MR_REMOTE_FAULT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => MR_REMOTE_FAULT_i_1_n_0,
      Q => \^status_vector\(5),
      R => \out\
    );
MR_RESTART_AN_INT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE0C0C0C"
    )
        port map (
      I0 => START_LINK_TIMER_REG_i_2_n_0,
      I1 => MR_RESTART_AN_SET_REG1,
      I2 => MR_RESTART_AN_SET_REG2,
      I3 => Q(3),
      I4 => MR_RESTART_AN_INT,
      O => MR_RESTART_AN_INT_i_1_n_0
    );
MR_RESTART_AN_INT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MR_RESTART_AN_INT_i_1_n_0,
      Q => MR_RESTART_AN_INT,
      R => \out\
    );
MR_RESTART_AN_SET_REG1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESTART_AN_SET,
      Q => MR_RESTART_AN_SET_REG1,
      R => \out\
    );
MR_RESTART_AN_SET_REG2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MR_RESTART_AN_SET_REG1,
      Q => MR_RESTART_AN_SET_REG2,
      R => \out\
    );
\PREVIOUS_STATE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATE(0),
      Q => PREVIOUS_STATE(0),
      R => \out\
    );
\PREVIOUS_STATE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATE(1),
      Q => PREVIOUS_STATE(1),
      R => \out\
    );
\PREVIOUS_STATE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATE(2),
      Q => PREVIOUS_STATE(2),
      R => \out\
    );
\PREVIOUS_STATE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATE(3),
      Q => PREVIOUS_STATE(3),
      R => \out\
    );
PULSE4096_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TIMER4096_MSB_REG,
      I1 => TIMER4096_reg(11),
      O => PULSE40960
    );
PULSE4096_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => PULSE40960,
      Q => PULSE4096,
      R => \out\
    );
RECEIVED_IDLE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RECEIVED_IDLE_reg_0,
      Q => \^received_idle\,
      R => \out\
    );
RUDI_INVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_RUDI_INVALID_DELAY(1),
      Q => \^status_vector\(0),
      R => \out\
    );
RX_CONFIG_REG_NULL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_REG_NULL_reg_1,
      Q => \^rx_config_reg_null_reg_0\,
      R => \out\
    );
\RX_CONFIG_REG_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(0),
      Q => \^rx_config_reg_reg_reg[13]_0\(0),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(10),
      Q => \^rx_config_reg_reg_reg[13]_0\(8),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      Q => \RX_CONFIG_REG_REG_reg_n_0_[11]\,
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(12),
      Q => \^rx_config_reg_reg_reg[13]_0\(9),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(13),
      Q => \^rx_config_reg_reg_reg[13]_0\(10),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(14),
      Q => p_0_in26_in,
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      Q => p_0_in0_in,
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(1),
      Q => \^rx_config_reg_reg_reg[13]_0\(1),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(2),
      Q => \^rx_config_reg_reg_reg[13]_0\(2),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(3),
      Q => \RX_CONFIG_REG_REG_reg_n_0_[3]\,
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(4),
      Q => \RX_CONFIG_REG_REG_reg_n_0_[4]\,
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(5),
      Q => \^rx_config_reg_reg_reg[13]_0\(3),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(6),
      Q => \^rx_config_reg_reg_reg[13]_0\(4),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(7),
      Q => \^rx_config_reg_reg_reg[13]_0\(5),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(8),
      Q => \^rx_config_reg_reg_reg[13]_0\(6),
      R => SR(0)
    );
\RX_CONFIG_REG_REG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_VALID,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(9),
      Q => \^rx_config_reg_reg_reg[13]_0\(7),
      R => SR(0)
    );
\RX_CONFIG_SNAPSHOT[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D00000000000000"
    )
        port map (
      I0 => \RX_CONFIG_SNAPSHOT[15]_i_2_n_0\,
      I1 => \RX_CONFIG_SNAPSHOT[15]_i_3_n_0\,
      I2 => \^ability_match\,
      I3 => RX_CONFIG_VALID,
      I4 => \^ability_match_2\,
      I5 => CONFIG_REG_MATCH,
      O => RX_CONFIG_SNAPSHOT
    );
\RX_CONFIG_SNAPSHOT[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(0),
      I1 => STATE(1),
      O => \RX_CONFIG_SNAPSHOT[15]_i_2_n_0\
    );
\RX_CONFIG_SNAPSHOT[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(3),
      O => \RX_CONFIG_SNAPSHOT[15]_i_3_n_0\
    );
\RX_CONFIG_SNAPSHOT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(0),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(0),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(10),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[10]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[11]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(12),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(6),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(13),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(7),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[15]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(1),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(1),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(2),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(2),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(3),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(3),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(4),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(4),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(5),
      Q => \RX_CONFIG_SNAPSHOT_reg[13]_0\(5),
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(6),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[6]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(7),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[7]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(8),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[8]\,
      R => \out\
    );
\RX_CONFIG_SNAPSHOT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => RX_CONFIG_SNAPSHOT,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(9),
      Q => \RX_CONFIG_SNAPSHOT_reg_n_0_[9]\,
      R => \out\
    );
RX_DV_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^no_management.configuration_vector_reg_reg[0]\,
      I1 => SOP_REG3,
      I2 => Q(2),
      I3 => Q(1),
      O => RX_DV0
    );
RX_ER_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F2F200"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => \^xmit_data_int\,
      I3 => RECEIVE,
      I4 => RXSYNC_STATUS,
      O => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0\
    );
RX_IDLE_REG1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_IDLE,
      Q => RX_IDLE_REG1,
      R => \out\
    );
RX_IDLE_REG2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_IDLE_REG1,
      Q => RX_IDLE_REG2,
      R => \out\
    );
\RX_RUDI_INVALID_DELAY_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \RX_RUDI_INVALID_DELAY_reg[0]_0\(0),
      Q => RX_RUDI_INVALID_DELAY(0),
      R => \out\
    );
\RX_RUDI_INVALID_DELAY_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_RUDI_INVALID_DELAY(0),
      Q => RX_RUDI_INVALID_DELAY(1),
      R => \out\
    );
SGMII_PHY_STATUS_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15),
      Q => \^status_vector\(1),
      R => \out\
    );
\SGMII_SPEED[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \SGMII_SPEED[1]_i_2_n_0\,
      I1 => PREVIOUS_STATE(3),
      I2 => PREVIOUS_STATE(2),
      I3 => PREVIOUS_STATE(0),
      I4 => PREVIOUS_STATE(1),
      O => MR_PAGE_RX_SET0
    );
\SGMII_SPEED[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(1),
      I2 => STATE(3),
      I3 => STATE(0),
      O => \SGMII_SPEED[1]_i_2_n_0\
    );
\SGMII_SPEED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(10),
      Q => \^status_vector\(3),
      R => \out\
    );
\SGMII_SPEED_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      Q => \^status_vector\(4),
      S => \out\
    );
START_LINK_TIMER_REG2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => START_LINK_TIMER_REG,
      Q => START_LINK_TIMER_REG2,
      R => \out\
    );
START_LINK_TIMER_REG_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FFFFFFFF"
    )
        port map (
      I0 => START_LINK_TIMER_REG_i_2_n_0,
      I1 => Q(3),
      I2 => START_LINK_TIMER_REG_i_3_n_0,
      I3 => \STATE[2]_i_3_n_0\,
      I4 => STATE(3),
      I5 => START_LINK_TIMER_REG_i_4_n_0,
      O => START_LINK_TIMER
    );
START_LINK_TIMER_REG_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => STATE(3),
      I1 => STATE(2),
      I2 => STATE(1),
      I3 => STATE(0),
      O => START_LINK_TIMER_REG_i_2_n_0
    );
START_LINK_TIMER_REG_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000070"
    )
        port map (
      I0 => \^ability_match\,
      I1 => \^rx_config_reg_null_reg_0\,
      I2 => LINK_TIMER_DONE,
      I3 => STATE(0),
      I4 => STATE(3),
      I5 => \STATE[2]_i_5_n_0\,
      O => START_LINK_TIMER_REG_i_3_n_0
    );
START_LINK_TIMER_REG_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000D0000"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => \STATE_reg[2]_0\,
      I2 => MR_AN_ENABLE_CHANGE,
      I3 => MR_RESTART_AN_INT,
      I4 => AN_SYNC_STATUS,
      O => START_LINK_TIMER_REG_i_4_n_0
    );
START_LINK_TIMER_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => START_LINK_TIMER,
      Q => START_LINK_TIMER_REG,
      R => \out\
    );
\STATE[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \STATE[2]_i_2_n_0\,
      I1 => \STATE[0]_i_2_n_0\,
      I2 => \STATE[0]_i_3_n_0\,
      I3 => \STATE[0]_i_4_n_0\,
      O => \STATE[0]_i_1_n_0\
    );
\STATE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404004004440040"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(1),
      I2 => \^ability_match\,
      I3 => \^rx_config_reg_null_reg_0\,
      I4 => STATE(0),
      I5 => ACKNOWLEDGE_MATCH_3_reg_n_0,
      O => \STATE[0]_i_2_n_0\
    );
\STATE[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110033311100030"
    )
        port map (
      I0 => \STATE[2]_i_4_n_0\,
      I1 => STATE(1),
      I2 => STATE(0),
      I3 => LINK_TIMER_DONE,
      I4 => STATE(2),
      I5 => Q(3),
      O => \STATE[0]_i_3_n_0\
    );
\STATE[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBABABFB"
    )
        port map (
      I0 => \STATE[2]_i_7_n_0\,
      I1 => STATE(0),
      I2 => \^ability_match\,
      I3 => \RX_CONFIG_REG_REG_reg_n_0_[11]\,
      I4 => TOGGLE_RX,
      O => \STATE[0]_i_4_n_0\
    );
\STATE[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \STATE[2]_i_2_n_0\,
      I1 => \STATE[1]_i_2_n_0\,
      O => \STATE[1]_i_1_n_0\
    );
\STATE[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FB000000FB00"
    )
        port map (
      I0 => STATE(2),
      I1 => \STATE[1]_i_3_n_0\,
      I2 => \STATE[1]_i_4_n_0\,
      I3 => \STATE[2]_i_7_n_0\,
      I4 => \STATE[1]_i_5_n_0\,
      I5 => \STATE[1]_i_6_n_0\,
      O => \STATE[1]_i_2_n_0\
    );
\STATE[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => STATE(1),
      I1 => STATE(0),
      I2 => LINK_TIMER_DONE,
      O => \STATE[1]_i_3_n_0\
    );
\STATE[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => STATE(1),
      I1 => STATE(0),
      I2 => \^ability_match\,
      I3 => ACKNOWLEDGE_MATCH_3_reg_n_0,
      I4 => \^rx_config_reg_null_reg_0\,
      O => \STATE[1]_i_4_n_0\
    );
\STATE[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => LINK_TIMER_DONE,
      I1 => \^rx_config_reg_null_reg_0\,
      I2 => \^ability_match\,
      O => \STATE[1]_i_5_n_0\
    );
\STATE[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(1),
      I2 => STATE(0),
      I3 => IDLE_MATCH,
      O => \STATE[1]_i_6_n_0\
    );
\STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888AAAAA888A"
    )
        port map (
      I0 => \STATE[2]_i_2_n_0\,
      I1 => \STATE[2]_i_3_n_0\,
      I2 => \STATE[2]_i_4_n_0\,
      I3 => \STATE[2]_i_5_n_0\,
      I4 => \STATE[2]_i_6_n_0\,
      I5 => \STATE[2]_i_7_n_0\,
      O => \STATE[2]_i_1_n_0\
    );
\STATE[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000202"
    )
        port map (
      I0 => AN_SYNC_STATUS,
      I1 => MR_RESTART_AN_INT,
      I2 => MR_AN_ENABLE_CHANGE,
      I3 => \STATE_reg[2]_0\,
      I4 => XMIT_CONFIG_INT,
      I5 => STATE(3),
      O => \STATE[2]_i_2_n_0\
    );
\STATE[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^rx_config_reg_null_reg_0\,
      I1 => STATE(0),
      I2 => CONSISTENCY_MATCH,
      I3 => p_1_in(0),
      I4 => \^ability_match\,
      I5 => ACKNOWLEDGE_MATCH_3_reg_n_0,
      O => \STATE[2]_i_3_n_0\
    );
\STATE[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ability_match\,
      I1 => \^rx_config_reg_null_reg_0\,
      O => \STATE[2]_i_4_n_0\
    );
\STATE[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => STATE(1),
      I1 => STATE(2),
      O => \STATE[2]_i_5_n_0\
    );
\STATE[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \^ability_match\,
      I1 => \RX_CONFIG_REG_REG_reg_n_0_[11]\,
      I2 => TOGGLE_RX,
      O => \STATE[2]_i_6_n_0\
    );
\STATE[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8FFFFFF"
    )
        port map (
      I0 => \^rx_config_reg_null_reg_0\,
      I1 => \^ability_match\,
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => STATE(1),
      O => \STATE[2]_i_7_n_0\
    );
\STATE[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFB0000"
    )
        port map (
      I0 => \STATE[3]_i_2_n_0\,
      I1 => \STATE[3]_i_3_n_0\,
      I2 => MR_AN_ENABLE_CHANGE,
      I3 => MR_RESTART_AN_INT,
      I4 => AN_SYNC_STATUS,
      I5 => Q(3),
      O => \STATE[3]_i_1_n_0\
    );
\STATE[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020003"
    )
        port map (
      I0 => STATE(3),
      I1 => STATE(2),
      I2 => STATE(1),
      I3 => STATE(0),
      I4 => Q(3),
      O => \STATE[3]_i_2_n_0\
    );
\STATE[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFAEFFFFFFFF"
    )
        port map (
      I0 => RXSYNC_STATUS,
      I1 => Q(0),
      I2 => Q(3),
      I3 => \^xmit_data_int\,
      I4 => RX_INVALID,
      I5 => XMIT_CONFIG_INT,
      O => \STATE[3]_i_3_n_0\
    );
\STATE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \STATE[0]_i_1_n_0\,
      Q => STATE(0),
      R => \out\
    );
\STATE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \STATE[1]_i_1_n_0\,
      Q => STATE(1),
      R => \out\
    );
\STATE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \STATE[2]_i_1_n_0\,
      Q => STATE(2),
      R => \out\
    );
\STATE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \STATE[3]_i_1_n_0\,
      Q => STATE(3),
      R => \out\
    );
STATUS_VECTOR_0_PRE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => \^xmit_data_int\,
      I3 => RXSYNC_STATUS,
      O => \^no_management.configuration_vector_reg_reg[0]\
    );
SYNC_STATUS_HELD_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => RXSYNC_STATUS,
      I1 => LINK_TIMER_SATURATED,
      I2 => PULSE4096,
      I3 => SYNC_STATUS_HELD,
      O => SYNC_STATUS_HELD_i_1_n_0
    );
SYNC_STATUS_HELD_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_HELD_i_1_n_0,
      Q => SYNC_STATUS_HELD,
      R => \out\
    );
\TIMER4096[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \TIMER4096_reg_n_0_[0]\,
      O => plusOp(0)
    );
TIMER4096_MSB_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => TIMER4096_reg(11),
      Q => TIMER4096_MSB_REG,
      R => \out\
    );
\TIMER4096_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(0),
      Q => \TIMER4096_reg_n_0_[0]\,
      R => \out\
    );
\TIMER4096_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(10),
      Q => \TIMER4096_reg_n_0_[10]\,
      R => \out\
    );
\TIMER4096_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(11),
      Q => TIMER4096_reg(11),
      R => \out\
    );
\TIMER4096_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(1),
      Q => \TIMER4096_reg_n_0_[1]\,
      R => \out\
    );
\TIMER4096_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(2),
      Q => \TIMER4096_reg_n_0_[2]\,
      R => \out\
    );
\TIMER4096_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(3),
      Q => \TIMER4096_reg_n_0_[3]\,
      R => \out\
    );
\TIMER4096_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(4),
      Q => \TIMER4096_reg_n_0_[4]\,
      R => \out\
    );
\TIMER4096_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(5),
      Q => \TIMER4096_reg_n_0_[5]\,
      R => \out\
    );
\TIMER4096_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(6),
      Q => \TIMER4096_reg_n_0_[6]\,
      R => \out\
    );
\TIMER4096_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(7),
      Q => \TIMER4096_reg_n_0_[7]\,
      R => \out\
    );
\TIMER4096_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(8),
      Q => \TIMER4096_reg_n_0_[8]\,
      R => \out\
    );
\TIMER4096_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => plusOp(9),
      Q => \TIMER4096_reg_n_0_[9]\,
      R => \out\
    );
TOGGLE_RX_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => MR_PAGE_RX_SET0,
      D => \MR_LP_ADV_ABILITY_INT_reg[16]_0\(11),
      Q => TOGGLE_RX,
      R => \out\
    );
TOGGLE_TX_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333BABBCCCC8A88"
    )
        port map (
      I0 => an_adv_config_vector(0),
      I1 => MR_PAGE_RX_SET0,
      I2 => TOGGLE_TX_i_2_n_0,
      I3 => STATE(1),
      I4 => STATE(2),
      I5 => TOGGLE_TX,
      O => TOGGLE_TX_i_1_n_0
    );
TOGGLE_TX_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => STATE(0),
      I1 => STATE(3),
      O => TOGGLE_TX_i_2_n_0
    );
TOGGLE_TX_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => TOGGLE_TX_i_1_n_0,
      Q => TOGGLE_TX,
      R => \out\
    );
\TX_CONFIG_REG_INT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => STATE(1),
      I1 => STATE(2),
      O => p_1_in(0)
    );
\TX_CONFIG_REG_INT[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(1),
      I2 => STATE(3),
      I3 => STATE(0),
      O => \TX_CONFIG_REG_INT[11]_i_1_n_0\
    );
\TX_CONFIG_REG_INT[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => TOGGLE_TX,
      O => p_1_in(11)
    );
\TX_CONFIG_REG_INT[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFE0200"
    )
        port map (
      I0 => STATE(0),
      I1 => STATE(2),
      I2 => STATE(3),
      I3 => STATE(1),
      I4 => \^d\(2),
      O => \TX_CONFIG_REG_INT[14]_i_1_n_0\
    );
\TX_CONFIG_REG_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => \TX_CONFIG_REG_INT[11]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^d\(0),
      R => \out\
    );
\TX_CONFIG_REG_INT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => \TX_CONFIG_REG_INT[11]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^d\(1),
      R => \out\
    );
\TX_CONFIG_REG_INT_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \TX_CONFIG_REG_INT[14]_i_1_n_0\,
      Q => \^d\(2),
      R => \out\
    );
XMIT_CONFIG_INT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F002F20"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => XMIT_CONFIG_INT_i_2_n_0,
      I2 => START_LINK_TIMER_REG_i_2_n_0,
      I3 => Q(3),
      I4 => GENERATE_REMOTE_FAULT_i_3_n_0,
      I5 => \out\,
      O => XMIT_CONFIG_INT_i_1_n_0
    );
XMIT_CONFIG_INT_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => STATE(1),
      I1 => STATE(0),
      I2 => STATE(3),
      I3 => STATE(2),
      O => XMIT_CONFIG_INT_i_2_n_0
    );
\XMIT_CONFIG_INT_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => Q(3),
      I2 => Q(0),
      O => XMIT_CONFIG
    );
XMIT_CONFIG_INT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => XMIT_CONFIG_INT_i_1_n_0,
      Q => XMIT_CONFIG_INT,
      R => '0'
    );
XMIT_DATA_INT_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(1),
      I2 => STATE(0),
      I3 => STATE(3),
      O => XMIT_DATA_INT0
    );
\XMIT_DATA_INT_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^xmit_data_int\,
      I1 => Q(3),
      I2 => Q(0),
      O => XMIT_DATA
    );
XMIT_DATA_INT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => XMIT_DATA_INT0,
      Q => \^xmit_data_int\,
      R => \out\
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \TIMER4096_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => plusOp_carry_n_4,
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(8 downto 1),
      S(7) => \TIMER4096_reg_n_0_[8]\,
      S(6) => \TIMER4096_reg_n_0_[7]\,
      S(5) => \TIMER4096_reg_n_0_[6]\,
      S(4) => \TIMER4096_reg_n_0_[5]\,
      S(3) => \TIMER4096_reg_n_0_[4]\,
      S(2) => \TIMER4096_reg_n_0_[3]\,
      S(1) => \TIMER4096_reg_n_0_[2]\,
      S(0) => \TIMER4096_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \plusOp_carry__0_n_6\,
      CO(0) => \plusOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_plusOp_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2) => TIMER4096_reg(11),
      S(1) => \TIMER4096_reg_n_0_[10]\,
      S(0) => \TIMER4096_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_RX is
  port (
    RX_IDLE : out STD_LOGIC;
    RX_CONFIG_VALID : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 1 downto 0 );
    K28p5_REG1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    SOP_REG3 : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    RECEIVE : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    RX_INVALID : out STD_LOGIC;
    RX_CONFIG_VALID_INT_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CONFIG_REG_MATCH_COMB : out STD_LOGIC;
    \RX_CONFIG_REG_reg[8]_0\ : out STD_LOGIC;
    \RX_CONFIG_REG_reg[6]_0\ : out STD_LOGIC;
    \RX_CONFIG_REG_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \RX_CONFIG_REG_reg[12]_0\ : out STD_LOGIC;
    BASEX_REMOTE_FAULT_RSLVD : out STD_LOGIC_VECTOR ( 0 to 0 );
    RX_INVALID_reg_0 : out STD_LOGIC;
    IDLE_MATCH0 : out STD_LOGIC;
    RX_CONFIG_VALID_INT_reg_1 : out STD_LOGIC;
    RX_CONFIG_VALID_INT_reg_2 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    userclk2 : in STD_LOGIC;
    \IDLE_REG_reg[0]_0\ : in STD_LOGIC;
    SYNC_STATUS_REG0 : in STD_LOGIC;
    RXCHARISK_REG1_reg_0 : in STD_LOGIC;
    RXEVEN : in STD_LOGIC;
    ABILITY_MATCH_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ABILITY_MATCH : in STD_LOGIC;
    ABILITY_MATCH_2 : in STD_LOGIC;
    ABILITY_MATCH_2_reg : in STD_LOGIC;
    ABILITY_MATCH_2_reg_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ABILITY_MATCH_2_reg_1 : in STD_LOGIC;
    CONSISTENCY_MATCH_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    XMIT_DATA_INT : in STD_LOGIC;
    FALSE_CARRIER_i_2_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RXSYNC_STATUS : in STD_LOGIC;
    RX_INVALID_reg_1 : in STD_LOGIC;
    RX_ER_reg_0 : in STD_LOGIC;
    IDLE_MATCH_2 : in STD_LOGIC;
    D : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    FALSE_NIT_reg_0 : in STD_LOGIC;
    EXTEND_reg_0 : in STD_LOGIC;
    RECEIVED_IDLE : in STD_LOGIC;
    RX_DV0 : in STD_LOGIC;
    XMIT_DATA : in STD_LOGIC;
    RX_CONFIG_REG_NULL_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_RX : entity is "RX";
end gig_ethernet_pcs_pma_0_RX;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_RX is
  signal ABILITY_MATCH_2_i_2_n_0 : STD_LOGIC;
  signal ABILITY_MATCH_2_i_3_n_0 : STD_LOGIC;
  signal ABILITY_MATCH_2_i_4_n_0 : STD_LOGIC;
  signal ABILITY_MATCH_2_i_8_n_0 : STD_LOGIC;
  signal ABILITY_MATCH_i_3_n_0 : STD_LOGIC;
  signal C : STD_LOGIC;
  signal C0 : STD_LOGIC;
  signal CGBAD : STD_LOGIC;
  signal CGBAD_REG1 : STD_LOGIC;
  signal CGBAD_REG2 : STD_LOGIC;
  signal CGBAD_REG3 : STD_LOGIC;
  signal CONSISTENCY_MATCH_i_5_n_0 : STD_LOGIC;
  signal CONSISTENCY_MATCH_i_6_n_0 : STD_LOGIC;
  signal C_REG1 : STD_LOGIC;
  signal C_REG2 : STD_LOGIC;
  signal C_REG3 : STD_LOGIC;
  signal D0p0 : STD_LOGIC;
  signal D0p0_REG : STD_LOGIC;
  signal D0p0_REG_i_2_n_0 : STD_LOGIC;
  signal EOP : STD_LOGIC;
  signal EOP0 : STD_LOGIC;
  signal EOP_REG1 : STD_LOGIC;
  signal EOP_REG10 : STD_LOGIC;
  signal EOP_i_2_n_0 : STD_LOGIC;
  signal EXTEND : STD_LOGIC;
  signal EXTEND_ERR : STD_LOGIC;
  signal EXTEND_ERR0 : STD_LOGIC;
  signal EXTEND_REG1 : STD_LOGIC;
  signal EXTEND_REG2 : STD_LOGIC;
  signal EXTEND_REG3 : STD_LOGIC;
  signal EXTEND_i_1_n_0 : STD_LOGIC;
  signal EXT_ILLEGAL_K : STD_LOGIC;
  signal EXT_ILLEGAL_K0 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG1 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG2 : STD_LOGIC;
  signal FALSE_CARRIER : STD_LOGIC;
  signal FALSE_CARRIER0 : STD_LOGIC;
  signal FALSE_CARRIER_REG1 : STD_LOGIC;
  signal FALSE_CARRIER_REG2 : STD_LOGIC;
  signal FALSE_CARRIER_REG3 : STD_LOGIC;
  signal FALSE_CARRIER_i_1_n_0 : STD_LOGIC;
  signal FALSE_CARRIER_i_3_n_0 : STD_LOGIC;
  signal FALSE_DATA : STD_LOGIC;
  signal FALSE_DATA0 : STD_LOGIC;
  signal FALSE_DATA_i_2_n_0 : STD_LOGIC;
  signal FALSE_DATA_i_3_n_0 : STD_LOGIC;
  signal FALSE_K : STD_LOGIC;
  signal FALSE_K0 : STD_LOGIC;
  signal FALSE_K_i_2_n_0 : STD_LOGIC;
  signal FALSE_NIT : STD_LOGIC;
  signal FALSE_NIT0 : STD_LOGIC;
  signal FALSE_NIT_i_2_n_0 : STD_LOGIC;
  signal FALSE_NIT_i_3_n_0 : STD_LOGIC;
  signal FROM_IDLE_D : STD_LOGIC;
  signal FROM_IDLE_D0 : STD_LOGIC;
  signal FROM_RX_CX : STD_LOGIC;
  signal FROM_RX_CX0 : STD_LOGIC;
  signal FROM_RX_K : STD_LOGIC;
  signal FROM_RX_K0 : STD_LOGIC;
  signal I : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal \IDLE_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \IDLE_REG_reg_n_0_[2]\ : STD_LOGIC;
  signal ILLEGAL_K : STD_LOGIC;
  signal ILLEGAL_K0 : STD_LOGIC;
  signal ILLEGAL_K_REG1 : STD_LOGIC;
  signal ILLEGAL_K_REG2 : STD_LOGIC;
  signal I_i_2_n_0 : STD_LOGIC;
  signal I_i_3_n_0 : STD_LOGIC;
  signal I_i_4_n_0 : STD_LOGIC;
  signal I_i_5_n_0 : STD_LOGIC;
  signal I_i_6_n_0 : STD_LOGIC;
  signal K23p7 : STD_LOGIC;
  signal \^k28p5_reg1\ : STD_LOGIC;
  signal K28p5_REG1_i_1_n_0 : STD_LOGIC;
  signal K28p5_REG2 : STD_LOGIC;
  signal K29p7 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \^receive\ : STD_LOGIC;
  signal RECEIVE_i_1_n_0 : STD_LOGIC;
  signal \RUDI_C0__0\ : STD_LOGIC;
  signal RUDI_I0 : STD_LOGIC;
  signal RXCHARISK_REG1 : STD_LOGIC;
  signal RXDATA_REG5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RXD[0]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[1]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[2]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[3]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[4]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[5]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[6]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[7]_i_1_n_0\ : STD_LOGIC;
  signal \RX_CONFIG_REG[15]_i_1_n_0\ : STD_LOGIC;
  signal \RX_CONFIG_REG[7]_i_1_n_0\ : STD_LOGIC;
  signal RX_CONFIG_REG_NULL_i_2_n_0 : STD_LOGIC;
  signal RX_CONFIG_REG_NULL_i_3_n_0 : STD_LOGIC;
  signal RX_CONFIG_REG_NULL_i_4_n_0 : STD_LOGIC;
  signal RX_CONFIG_REG_NULL_i_5_n_0 : STD_LOGIC;
  signal \^rx_config_reg_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rx_config_reg_reg[6]_0\ : STD_LOGIC;
  signal \^rx_config_reg_reg[8]_0\ : STD_LOGIC;
  signal \^rx_config_valid\ : STD_LOGIC;
  signal RX_CONFIG_VALID_INT0 : STD_LOGIC;
  signal \RX_CONFIG_VALID_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_CONFIG_VALID_REG_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_DATA_ERROR : STD_LOGIC;
  signal RX_DATA_ERROR0 : STD_LOGIC;
  signal RX_DATA_ERROR_i_2_n_0 : STD_LOGIC;
  signal RX_DATA_ERROR_i_4_n_0 : STD_LOGIC;
  signal RX_DV_i_1_n_0 : STD_LOGIC;
  signal RX_ER0 : STD_LOGIC;
  signal RX_ER_i_3_n_0 : STD_LOGIC;
  signal \^rx_idle\ : STD_LOGIC;
  signal \^rx_invalid\ : STD_LOGIC;
  signal RX_INVALID_i_1_n_0 : STD_LOGIC;
  signal R_REG1 : STD_LOGIC;
  signal R_i_2_n_0 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal \^s2\ : STD_LOGIC;
  signal SOP : STD_LOGIC;
  signal SOP0 : STD_LOGIC;
  signal SOP_REG1 : STD_LOGIC;
  signal SOP_REG2 : STD_LOGIC;
  signal \^sop_reg3\ : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal S_i_2_n_0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T_REG1 : STD_LOGIC;
  signal T_REG2 : STD_LOGIC;
  signal WAIT_FOR_K : STD_LOGIC;
  signal WAIT_FOR_K_i_1_n_0 : STD_LOGIC;
  signal \^gmii_rx_dv\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ABILITY_MATCH_i_3 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \BASEX_REMOTE_FAULT[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of CGBAD_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of FALSE_DATA_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of IDLE_MATCH_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of I_i_5 : label is "soft_lutpair41";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \RXDATA_REG5_reg[0]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name : string;
  attribute srl_name of \RXDATA_REG5_reg[0]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[0]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[1]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[1]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[1]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[2]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[2]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[2]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[3]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[3]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[3]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[4]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[4]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[4]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[5]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[5]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[5]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[6]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[6]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[6]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[7]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[7]_srl5\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[7]_srl5 ";
  attribute SOFT_HLUTNM of \RXD[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \RXD[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \RXD[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \RXD[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \RXD[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \RXD[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \RXD[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of RX_CONFIG_REG_NULL_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \RX_CONFIG_REG_REG[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of RX_CONFIG_VALID_INT_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of RX_DATA_ERROR_i_4 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of RX_ER_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of R_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of S_i_2 : label is "soft_lutpair45";
begin
  K28p5_REG1 <= \^k28p5_reg1\;
  RECEIVE <= \^receive\;
  \RX_CONFIG_REG_reg[15]_0\(15 downto 0) <= \^rx_config_reg_reg[15]_0\(15 downto 0);
  \RX_CONFIG_REG_reg[6]_0\ <= \^rx_config_reg_reg[6]_0\;
  \RX_CONFIG_REG_reg[8]_0\ <= \^rx_config_reg_reg[8]_0\;
  RX_CONFIG_VALID <= \^rx_config_valid\;
  RX_IDLE <= \^rx_idle\;
  RX_INVALID <= \^rx_invalid\;
  S2 <= \^s2\;
  SOP_REG3 <= \^sop_reg3\;
  gmii_rx_dv <= \^gmii_rx_dv\;
ABILITY_MATCH_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ABILITY_MATCH_2_i_2_n_0,
      I1 => ABILITY_MATCH_2_i_3_n_0,
      I2 => ABILITY_MATCH_2_i_4_n_0,
      I3 => \^rx_config_reg_reg[8]_0\,
      I4 => \^rx_config_reg_reg[6]_0\,
      I5 => ABILITY_MATCH_2_reg,
      O => CONFIG_REG_MATCH_COMB
    );
ABILITY_MATCH_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(2),
      I1 => ABILITY_MATCH_2_reg_0(2),
      I2 => ABILITY_MATCH_2_reg_0(9),
      I3 => \^rx_config_reg_reg[15]_0\(12),
      I4 => ABILITY_MATCH_2_reg_0(0),
      I5 => \^rx_config_reg_reg[15]_0\(0),
      O => ABILITY_MATCH_2_i_2_n_0
    );
ABILITY_MATCH_2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(0),
      I1 => ABILITY_MATCH_2_reg_0(0),
      I2 => \^rx_config_reg_reg[15]_0\(1),
      I3 => ABILITY_MATCH_2_reg_0(1),
      I4 => \^rx_config_reg_reg[15]_0\(5),
      I5 => ABILITY_MATCH_2_reg_0(3),
      O => ABILITY_MATCH_2_i_3_n_0
    );
ABILITY_MATCH_2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022000020222022"
    )
        port map (
      I0 => ABILITY_MATCH_2_i_8_n_0,
      I1 => ABILITY_MATCH_2_reg_1,
      I2 => \^rx_config_reg_reg[15]_0\(9),
      I3 => ABILITY_MATCH_2_reg_0(7),
      I4 => \^rx_config_reg_reg[15]_0\(1),
      I5 => ABILITY_MATCH_2_reg_0(1),
      O => ABILITY_MATCH_2_i_4_n_0
    );
ABILITY_MATCH_2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(8),
      I1 => ABILITY_MATCH_2_reg_0(6),
      I2 => \^rx_config_reg_reg[15]_0\(13),
      I3 => ABILITY_MATCH_2_reg_0(10),
      I4 => \^rx_config_reg_reg[15]_0\(9),
      I5 => ABILITY_MATCH_2_reg_0(7),
      O => \^rx_config_reg_reg[8]_0\
    );
ABILITY_MATCH_2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(6),
      I1 => ABILITY_MATCH_2_reg_0(4),
      I2 => ABILITY_MATCH_2_reg_0(6),
      I3 => \^rx_config_reg_reg[15]_0\(8),
      I4 => \^rx_config_reg_reg[15]_0\(10),
      I5 => ABILITY_MATCH_2_reg_0(8),
      O => \^rx_config_reg_reg[6]_0\
    );
ABILITY_MATCH_2_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D00DD00D0000D00D"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(2),
      I1 => ABILITY_MATCH_2_reg_0(2),
      I2 => \^rx_config_reg_reg[15]_0\(7),
      I3 => ABILITY_MATCH_2_reg_0(5),
      I4 => ABILITY_MATCH_2_reg_0(4),
      I5 => \^rx_config_reg_reg[15]_0\(6),
      O => ABILITY_MATCH_2_i_8_n_0
    );
ABILITY_MATCH_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555755"
    )
        port map (
      I0 => \^rx_config_valid\,
      I1 => ABILITY_MATCH_2_i_2_n_0,
      I2 => ABILITY_MATCH_2_i_3_n_0,
      I3 => ABILITY_MATCH_2_i_4_n_0,
      I4 => ABILITY_MATCH_reg,
      I5 => ABILITY_MATCH_i_3_n_0,
      O => RX_CONFIG_VALID_INT_reg_0
    );
ABILITY_MATCH_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => \^rx_idle\,
      I1 => \out\,
      I2 => ABILITY_MATCH,
      I3 => \^rx_config_valid\,
      I4 => ABILITY_MATCH_2,
      O => ABILITY_MATCH_i_3_n_0
    );
\BASEX_REMOTE_FAULT[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(15),
      O => BASEX_REMOTE_FAULT_RSLVD(0)
    );
CGBAD_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD,
      Q => CGBAD_REG1,
      R => '0'
    );
CGBAD_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG1,
      Q => CGBAD_REG2,
      R => '0'
    );
CGBAD_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG2,
      Q => CGBAD_REG3,
      R => \IDLE_REG_reg[0]_0\
    );
CGBAD_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => D,
      I1 => RXNOTINTABLE_INT,
      O => \^s2\
    );
CGBAD_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \^s2\,
      Q => CGBAD,
      R => \IDLE_REG_reg[0]_0\
    );
CONSISTENCY_MATCH_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(12),
      I1 => CONSISTENCY_MATCH_reg(6),
      I2 => \^rx_config_reg_reg[15]_0\(13),
      I3 => CONSISTENCY_MATCH_reg(7),
      I4 => CONSISTENCY_MATCH_i_5_n_0,
      I5 => CONSISTENCY_MATCH_i_6_n_0,
      O => \RX_CONFIG_REG_reg[12]_0\
    );
CONSISTENCY_MATCH_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(1),
      I1 => CONSISTENCY_MATCH_reg(1),
      I2 => \^rx_config_reg_reg[15]_0\(2),
      I3 => CONSISTENCY_MATCH_reg(2),
      I4 => CONSISTENCY_MATCH_reg(0),
      I5 => \^rx_config_reg_reg[15]_0\(0),
      O => CONSISTENCY_MATCH_i_5_n_0
    );
CONSISTENCY_MATCH_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(5),
      I1 => CONSISTENCY_MATCH_reg(5),
      I2 => \^rx_config_reg_reg[15]_0\(4),
      I3 => CONSISTENCY_MATCH_reg(4),
      I4 => CONSISTENCY_MATCH_reg(3),
      I5 => \^rx_config_reg_reg[15]_0\(3),
      O => CONSISTENCY_MATCH_i_6_n_0
    );
C_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C,
      Q => C_REG1,
      R => '0'
    );
C_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C_REG1,
      Q => C_REG2,
      R => '0'
    );
C_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C_REG2,
      Q => C_REG3,
      R => '0'
    );
C_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => I_i_3_n_0,
      O => C0
    );
C_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C0,
      Q => C,
      R => '0'
    );
D0p0_REG_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => RXCHARISK_REG1_reg_0,
      I3 => D0p0_REG_i_2_n_0,
      O => D0p0
    );
D0p0_REG_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(6),
      I4 => Q(7),
      I5 => Q(5),
      O => D0p0_REG_i_2_n_0
    );
D0p0_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D0p0,
      Q => D0p0_REG,
      R => '0'
    );
EOP_REG1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => EOP,
      I1 => EXTEND,
      I2 => EXTEND_REG1,
      O => EOP_REG10
    );
EOP_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EOP_REG10,
      Q => EOP_REG1,
      R => \IDLE_REG_reg[0]_0\
    );
EOP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888000"
    )
        port map (
      I0 => T_REG2,
      I1 => R_REG1,
      I2 => RXEVEN,
      I3 => \^k28p5_reg1\,
      I4 => R,
      I5 => EOP_i_2_n_0,
      O => EOP0
    );
EOP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => D0p0_REG,
      I1 => C_REG1,
      I2 => RXEVEN,
      I3 => \^k28p5_reg1\,
      I4 => \^rx_idle\,
      O => EOP_i_2_n_0
    );
EOP_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EOP0,
      Q => EOP,
      R => \IDLE_REG_reg[0]_0\
    );
EXTEND_ERR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => EXT_ILLEGAL_K_REG2,
      I1 => EXTEND_REG3,
      I2 => CGBAD_REG3,
      O => EXTEND_ERR0
    );
EXTEND_ERR_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_ERR0,
      Q => EXTEND_ERR,
      R => SYNC_STATUS_REG0
    );
EXTEND_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND,
      Q => EXTEND_REG1,
      R => '0'
    );
EXTEND_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG1,
      Q => EXTEND_REG2,
      R => '0'
    );
EXTEND_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG2,
      Q => EXTEND_REG3,
      R => '0'
    );
EXTEND_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808080"
    )
        port map (
      I0 => R_REG1,
      I1 => R,
      I2 => \^receive\,
      I3 => EXTEND_reg_0,
      I4 => S,
      I5 => EXTEND,
      O => EXTEND_i_1_n_0
    );
EXTEND_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_i_1_n_0,
      Q => EXTEND,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K,
      Q => EXT_ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K_REG1,
      Q => EXT_ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000700"
    )
        port map (
      I0 => RXEVEN,
      I1 => \^k28p5_reg1\,
      I2 => S,
      I3 => EXTEND_REG1,
      I4 => R,
      O => EXT_ILLEGAL_K0
    );
EXT_ILLEGAL_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K0,
      Q => EXT_ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER,
      Q => FALSE_CARRIER_REG1,
      R => '0'
    );
FALSE_CARRIER_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG1,
      Q => FALSE_CARRIER_REG2,
      R => '0'
    );
FALSE_CARRIER_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG2,
      Q => FALSE_CARRIER_REG3,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => RXEVEN,
      I2 => FALSE_CARRIER0,
      I3 => FALSE_CARRIER,
      O => FALSE_CARRIER_i_1_n_0
    );
FALSE_CARRIER_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => FALSE_CARRIER_i_3_n_0,
      I1 => FALSE_K,
      I2 => FALSE_DATA,
      I3 => FALSE_NIT,
      I4 => \^k28p5_reg1\,
      I5 => S,
      O => FALSE_CARRIER0
    );
FALSE_CARRIER_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888080"
    )
        port map (
      I0 => \^rx_idle\,
      I1 => RXSYNC_STATUS,
      I2 => XMIT_DATA_INT,
      I3 => FALSE_CARRIER_i_2_0(3),
      I4 => FALSE_CARRIER_i_2_0(0),
      O => FALSE_CARRIER_i_3_n_0
    );
FALSE_CARRIER_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_i_1_n_0,
      Q => FALSE_CARRIER,
      R => SYNC_STATUS_REG0
    );
FALSE_DATA_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008882220"
    )
        port map (
      I0 => FALSE_DATA_i_2_n_0,
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(0),
      I5 => FALSE_DATA_i_3_n_0,
      O => FALSE_DATA0
    );
FALSE_DATA_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08300800"
    )
        port map (
      I0 => Q(2),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      I4 => Q(0),
      O => FALSE_DATA_i_2_n_0
    );
FALSE_DATA_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => RXNOTINTABLE_INT,
      I1 => RXCHARISK_REG1_reg_0,
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => FALSE_DATA_i_3_n_0
    );
FALSE_DATA_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_DATA0,
      Q => FALSE_DATA,
      R => \IDLE_REG_reg[0]_0\
    );
FALSE_K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00820000"
    )
        port map (
      I0 => FALSE_K_i_2_n_0,
      I1 => Q(5),
      I2 => Q(6),
      I3 => RXNOTINTABLE_INT,
      I4 => Q(7),
      O => FALSE_K0
    );
FALSE_K_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => Q(1),
      I5 => RXCHARISK_REG1_reg_0,
      O => FALSE_K_i_2_n_0
    );
FALSE_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_K0,
      Q => FALSE_K,
      R => \IDLE_REG_reg[0]_0\
    );
FALSE_NIT_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RXNOTINTABLE_INT,
      I1 => FALSE_NIT_i_2_n_0,
      O => FALSE_NIT0
    );
FALSE_NIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFAFFCAFFCFCCF"
    )
        port map (
      I0 => D0p0_REG_i_2_n_0,
      I1 => FALSE_NIT_i_3_n_0,
      I2 => RXCHARISK_REG1_reg_0,
      I3 => FALSE_NIT_reg_0,
      I4 => Q(0),
      I5 => Q(2),
      O => FALSE_NIT_i_2_n_0
    );
FALSE_NIT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      I2 => Q(7),
      I3 => Q(6),
      I4 => Q(4),
      I5 => Q(1),
      O => FALSE_NIT_i_3_n_0
    );
FALSE_NIT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_NIT0,
      Q => FALSE_NIT,
      R => \IDLE_REG_reg[0]_0\
    );
FROM_IDLE_D_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => \^rx_idle\,
      I2 => WAIT_FOR_K,
      I3 => RX_INVALID_reg_1,
      O => FROM_IDLE_D0
    );
FROM_IDLE_D_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FROM_IDLE_D0,
      Q => FROM_IDLE_D,
      R => SYNC_STATUS_REG0
    );
FROM_RX_CX_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8FFFCFCA8A8"
    )
        port map (
      I0 => RXCHARISK_REG1,
      I1 => C_REG1,
      I2 => C_REG2,
      I3 => EXTEND_reg_0,
      I4 => CGBAD,
      I5 => C_REG3,
      O => FROM_RX_CX0
    );
FROM_RX_CX_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FROM_RX_CX0,
      Q => FROM_RX_CX,
      R => SYNC_STATUS_REG0
    );
FROM_RX_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => RXCHARISK_REG1,
      I1 => CGBAD,
      I2 => K28p5_REG2,
      I3 => RX_INVALID_reg_1,
      O => FROM_RX_K0
    );
FROM_RX_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FROM_RX_K0,
      Q => FROM_RX_K,
      R => SYNC_STATUS_REG0
    );
IDLE_MATCH_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rx_idle\,
      I1 => IDLE_MATCH_2,
      O => IDLE_MATCH0
    );
\IDLE_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \^rx_idle\,
      Q => \IDLE_REG_reg_n_0_[0]\,
      R => \IDLE_REG_reg[0]_0\
    );
\IDLE_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IDLE_REG_reg_n_0_[0]\,
      Q => p_0_in1_in,
      R => \IDLE_REG_reg[0]_0\
    );
\IDLE_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in1_in,
      Q => \IDLE_REG_reg_n_0_[2]\,
      R => \IDLE_REG_reg[0]_0\
    );
ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K,
      Q => ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K_REG1,
      Q => ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => R,
      I1 => \^k28p5_reg1\,
      I2 => RXCHARISK_REG1,
      I3 => T,
      O => ILLEGAL_K0
    );
ILLEGAL_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K0,
      Q => ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
I_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => I,
      Q => \^rx_idle\,
      R => '0'
    );
I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E0EC"
    )
        port map (
      I0 => \^rx_idle\,
      I1 => \^k28p5_reg1\,
      I2 => RX_INVALID_reg_1,
      I3 => RXCHARISK_REG1_reg_0,
      I4 => I_i_2_n_0,
      I5 => I_i_3_n_0,
      O => I0
    );
I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => FALSE_NIT,
      I2 => FALSE_DATA,
      I3 => FALSE_K,
      I4 => RXEVEN,
      O => I_i_2_n_0
    );
I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001FFFF0001"
    )
        port map (
      I0 => I_i_4_n_0,
      I1 => RXCHARISK_REG1_reg_0,
      I2 => Q(2),
      I3 => Q(0),
      I4 => I_i_5_n_0,
      I5 => I_i_6_n_0,
      O => I_i_3_n_0
    );
I_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(4),
      I4 => Q(3),
      I5 => Q(1),
      O => I_i_4_n_0
    );
I_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => Q(6),
      O => I_i_5_n_0
    );
I_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => RXCHARISK_REG1_reg_0,
      I4 => Q(1),
      I5 => Q(4),
      O => I_i_6_n_0
    );
I_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => I0,
      Q => I,
      R => '0'
    );
K28p5_REG1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => FALSE_K_i_2_n_0,
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(7),
      O => K28p5_REG1_i_1_n_0
    );
K28p5_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K28p5_REG1_i_1_n_0,
      Q => \^k28p5_reg1\,
      R => '0'
    );
K28p5_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \^k28p5_reg1\,
      Q => K28p5_REG2,
      R => '0'
    );
RECEIVED_IDLE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^rx_config_valid\,
      I1 => \^rx_idle\,
      I2 => RECEIVED_IDLE,
      O => RX_CONFIG_VALID_INT_reg_1
    );
RECEIVE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => EOP,
      I1 => SOP_REG2,
      I2 => \^receive\,
      O => RECEIVE_i_1_n_0
    );
RECEIVE_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RECEIVE_i_1_n_0,
      Q => \^receive\,
      R => SYNC_STATUS_REG0
    );
RUDI_C0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \RX_CONFIG_VALID_REG_reg_n_0_[3]\,
      I2 => p_1_in,
      I3 => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      O => \RUDI_C0__0\
    );
RUDI_C_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RUDI_C0__0\,
      Q => status_vector(0),
      R => \IDLE_REG_reg[0]_0\
    );
RUDI_I_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \IDLE_REG_reg_n_0_[2]\,
      I1 => p_0_in1_in,
      O => RUDI_I0
    );
RUDI_I_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RUDI_I0,
      Q => status_vector(1),
      R => \IDLE_REG_reg[0]_0\
    );
RXCHARISK_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RXCHARISK_REG1_reg_0,
      Q => RXCHARISK_REG1,
      R => '0'
    );
\RXDATA_REG5_reg[0]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(0),
      Q => RXDATA_REG5(0)
    );
\RXDATA_REG5_reg[1]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(1),
      Q => RXDATA_REG5(1)
    );
\RXDATA_REG5_reg[2]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(2),
      Q => RXDATA_REG5(2)
    );
\RXDATA_REG5_reg[3]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(3),
      Q => RXDATA_REG5(3)
    );
\RXDATA_REG5_reg[4]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(4),
      Q => RXDATA_REG5(4)
    );
\RXDATA_REG5_reg[5]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(5),
      Q => RXDATA_REG5(5)
    );
\RXDATA_REG5_reg[6]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(6),
      Q => RXDATA_REG5(6)
    );
\RXDATA_REG5_reg[7]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(7),
      Q => RXDATA_REG5(7)
    );
\RXD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBA"
    )
        port map (
      I0 => \^sop_reg3\,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(0),
      O => \RXD[0]_i_1_n_0\
    );
\RXD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \^sop_reg3\,
      I1 => RXDATA_REG5(1),
      I2 => FALSE_CARRIER_REG3,
      I3 => EXTEND_REG1,
      O => \RXD[1]_i_1_n_0\
    );
\RXD[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => RXDATA_REG5(2),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => \^sop_reg3\,
      O => \RXD[2]_i_1_n_0\
    );
\RXD[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \^sop_reg3\,
      I1 => RXDATA_REG5(3),
      I2 => FALSE_CARRIER_REG3,
      I3 => EXTEND_REG1,
      O => \RXD[3]_i_1_n_0\
    );
\RXD[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => \^sop_reg3\,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_ERR,
      I3 => EXTEND_REG1,
      I4 => RXDATA_REG5(4),
      O => \RXD[4]_i_1_n_0\
    );
\RXD[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => RXDATA_REG5(5),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => \^sop_reg3\,
      O => \RXD[5]_i_1_n_0\
    );
\RXD[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \^sop_reg3\,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(6),
      O => \RXD[6]_i_1_n_0\
    );
\RXD[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => RXDATA_REG5(7),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => \^sop_reg3\,
      O => \RXD[7]_i_1_n_0\
    );
\RXD_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[0]_i_1_n_0\,
      Q => gmii_rxd(0),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[1]_i_1_n_0\,
      Q => gmii_rxd(1),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[2]_i_1_n_0\,
      Q => gmii_rxd(2),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[3]_i_1_n_0\,
      Q => gmii_rxd(3),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[4]_i_1_n_0\,
      Q => gmii_rxd(4),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[5]_i_1_n_0\,
      Q => gmii_rxd(5),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[6]_i_1_n_0\,
      Q => gmii_rxd(6),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RXD_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[7]_i_1_n_0\,
      Q => gmii_rxd(7),
      R => FALSE_CARRIER_i_2_0(2)
    );
\RX_CONFIG_REG[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => RXCHARISK_REG1_reg_0,
      I1 => C_REG1,
      I2 => RXCHARISK_REG1,
      O => \RX_CONFIG_REG[15]_i_1_n_0\
    );
\RX_CONFIG_REG[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => C,
      I1 => RXCHARISK_REG1_reg_0,
      O => \RX_CONFIG_REG[7]_i_1_n_0\
    );
RX_CONFIG_REG_NULL_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => RX_CONFIG_REG_NULL_i_2_n_0,
      I1 => RX_CONFIG_REG_NULL_i_3_n_0,
      I2 => RX_CONFIG_REG_NULL_i_4_n_0,
      I3 => RX_CONFIG_REG_NULL_i_5_n_0,
      I4 => \^rx_config_valid\,
      I5 => RX_CONFIG_REG_NULL_reg,
      O => RX_CONFIG_VALID_INT_reg_2
    );
RX_CONFIG_REG_NULL_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(12),
      I1 => \^rx_config_reg_reg[15]_0\(15),
      I2 => \^rx_config_reg_reg[15]_0\(13),
      I3 => \^rx_config_reg_reg[15]_0\(1),
      O => RX_CONFIG_REG_NULL_i_2_n_0
    );
RX_CONFIG_REG_NULL_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(6),
      I1 => \^rx_config_reg_reg[15]_0\(5),
      I2 => \^rx_config_reg_reg[15]_0\(11),
      I3 => \^rx_config_reg_reg[15]_0\(4),
      O => RX_CONFIG_REG_NULL_i_3_n_0
    );
RX_CONFIG_REG_NULL_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(2),
      I1 => \^rx_config_reg_reg[15]_0\(14),
      I2 => \^rx_config_reg_reg[15]_0\(10),
      I3 => \^rx_config_reg_reg[15]_0\(0),
      O => RX_CONFIG_REG_NULL_i_4_n_0
    );
RX_CONFIG_REG_NULL_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^rx_config_reg_reg[15]_0\(8),
      I1 => \^rx_config_reg_reg[15]_0\(7),
      I2 => \^rx_config_reg_reg[15]_0\(9),
      I3 => \^rx_config_reg_reg[15]_0\(3),
      O => RX_CONFIG_REG_NULL_i_5_n_0
    );
\RX_CONFIG_REG_REG[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \out\,
      I1 => \^rx_idle\,
      O => SR(0)
    );
\RX_CONFIG_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(0),
      Q => \^rx_config_reg_reg[15]_0\(0),
      R => '0'
    );
\RX_CONFIG_REG_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(2),
      Q => \^rx_config_reg_reg[15]_0\(10),
      R => '0'
    );
\RX_CONFIG_REG_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(3),
      Q => \^rx_config_reg_reg[15]_0\(11),
      R => '0'
    );
\RX_CONFIG_REG_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(4),
      Q => \^rx_config_reg_reg[15]_0\(12),
      R => '0'
    );
\RX_CONFIG_REG_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(5),
      Q => \^rx_config_reg_reg[15]_0\(13),
      R => '0'
    );
\RX_CONFIG_REG_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(6),
      Q => \^rx_config_reg_reg[15]_0\(14),
      R => '0'
    );
\RX_CONFIG_REG_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(7),
      Q => \^rx_config_reg_reg[15]_0\(15),
      R => '0'
    );
\RX_CONFIG_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(1),
      Q => \^rx_config_reg_reg[15]_0\(1),
      R => '0'
    );
\RX_CONFIG_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(2),
      Q => \^rx_config_reg_reg[15]_0\(2),
      R => '0'
    );
\RX_CONFIG_REG_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(3),
      Q => \^rx_config_reg_reg[15]_0\(3),
      R => '0'
    );
\RX_CONFIG_REG_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(4),
      Q => \^rx_config_reg_reg[15]_0\(4),
      R => '0'
    );
\RX_CONFIG_REG_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(5),
      Q => \^rx_config_reg_reg[15]_0\(5),
      R => '0'
    );
\RX_CONFIG_REG_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(6),
      Q => \^rx_config_reg_reg[15]_0\(6),
      R => '0'
    );
\RX_CONFIG_REG_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[7]_i_1_n_0\,
      D => Q(7),
      Q => \^rx_config_reg_reg[15]_0\(7),
      R => '0'
    );
\RX_CONFIG_REG_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(0),
      Q => \^rx_config_reg_reg[15]_0\(8),
      R => '0'
    );
\RX_CONFIG_REG_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \RX_CONFIG_REG[15]_i_1_n_0\,
      D => Q(1),
      Q => \^rx_config_reg_reg[15]_0\(9),
      R => '0'
    );
RX_CONFIG_VALID_INT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \RX_CONFIG_REG[15]_i_1_n_0\,
      I1 => CGBAD,
      I2 => RXSYNC_STATUS,
      I3 => D,
      I4 => RXNOTINTABLE_INT,
      O => RX_CONFIG_VALID_INT0
    );
RX_CONFIG_VALID_INT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_VALID_INT0,
      Q => \^rx_config_valid\,
      R => \IDLE_REG_reg[0]_0\
    );
\RX_CONFIG_VALID_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \^rx_config_valid\,
      Q => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      R => \IDLE_REG_reg[0]_0\
    );
\RX_CONFIG_VALID_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      Q => p_0_in2_in,
      R => \IDLE_REG_reg[0]_0\
    );
\RX_CONFIG_VALID_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in2_in,
      Q => p_1_in,
      R => \IDLE_REG_reg[0]_0\
    );
\RX_CONFIG_VALID_REG_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in,
      Q => \RX_CONFIG_VALID_REG_reg_n_0_[3]\,
      R => \IDLE_REG_reg[0]_0\
    );
RX_DATA_ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAAAA88888888"
    )
        port map (
      I0 => \^receive\,
      I1 => RX_DATA_ERROR_i_2_n_0,
      I2 => R,
      I3 => EXTEND_reg_0,
      I4 => R_REG1,
      I5 => T_REG2,
      O => RX_DATA_ERROR0
    );
RX_DATA_ERROR_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4544"
    )
        port map (
      I0 => R_REG1,
      I1 => \^k28p5_reg1\,
      I2 => T_REG1,
      I3 => R,
      I4 => RX_DATA_ERROR_i_4_n_0,
      O => RX_DATA_ERROR_i_2_n_0
    );
RX_DATA_ERROR_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CGBAD_REG3,
      I1 => C_REG1,
      I2 => ILLEGAL_K_REG2,
      I3 => \^rx_idle\,
      O => RX_DATA_ERROR_i_4_n_0
    );
RX_DATA_ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_DATA_ERROR0,
      Q => RX_DATA_ERROR,
      R => SYNC_STATUS_REG0
    );
RX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEEEAAAAAAAAA"
    )
        port map (
      I0 => RX_DV0,
      I1 => XMIT_DATA,
      I2 => \^receive\,
      I3 => RXSYNC_STATUS,
      I4 => EOP_REG1,
      I5 => \^gmii_rx_dv\,
      O => RX_DV_i_1_n_0
    );
RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_DV_i_1_n_0,
      Q => \^gmii_rx_dv\,
      R => \IDLE_REG_reg[0]_0\
    );
RX_ER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA2A"
    )
        port map (
      I0 => RX_ER_reg_0,
      I1 => RX_ER_i_3_n_0,
      I2 => RXSYNC_STATUS,
      I3 => RX_DATA_ERROR,
      I4 => FALSE_CARRIER_i_2_0(2),
      I5 => FALSE_CARRIER_i_2_0(1),
      O => RX_ER0
    );
RX_ER_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      O => RX_ER_i_3_n_0
    );
RX_ER_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_ER0,
      Q => gmii_rx_er,
      R => \IDLE_REG_reg[0]_0\
    );
RX_INVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55FDFFFF00FC"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => FROM_RX_K,
      I2 => FROM_IDLE_D,
      I3 => RX_INVALID_reg_1,
      I4 => FROM_RX_CX,
      I5 => \^rx_invalid\,
      O => RX_INVALID_i_1_n_0
    );
RX_INVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_INVALID_i_1_n_0,
      Q => \^rx_invalid\,
      R => SYNC_STATUS_REG0
    );
R_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => R,
      Q => R_REG1,
      R => '0'
    );
R_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => R_i_2_n_0,
      I1 => RXCHARISK_REG1_reg_0,
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(0),
      O => K23p7
    );
R_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(4),
      O => R_i_2_n_0
    );
R_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K23p7,
      Q => R,
      R => '0'
    );
SOP_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP,
      Q => SOP_REG1,
      R => '0'
    );
SOP_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG1,
      Q => SOP_REG2,
      R => '0'
    );
SOP_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG2,
      Q => \^sop_reg3\,
      R => '0'
    );
SOP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => RX_INVALID_reg_1,
      I1 => WAIT_FOR_K,
      I2 => S,
      I3 => \^rx_idle\,
      I4 => EXTEND,
      O => SOP0
    );
SOP_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP0,
      Q => SOP,
      R => \IDLE_REG_reg[0]_0\
    );
\STATE[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55554544"
    )
        port map (
      I0 => \^rx_invalid\,
      I1 => XMIT_DATA_INT,
      I2 => FALSE_CARRIER_i_2_0(3),
      I3 => FALSE_CARRIER_i_2_0(0),
      I4 => RXSYNC_STATUS,
      O => RX_INVALID_reg_0
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => '1',
      Q => SYNC_STATUS_REG,
      R => SYNC_STATUS_REG0
    );
S_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \^s2\,
      I1 => Q(1),
      I2 => RXCHARISK_REG1_reg_0,
      I3 => Q(2),
      I4 => Q(0),
      I5 => S_i_2_n_0,
      O => S0
    );
S_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(5),
      I4 => Q(3),
      O => S_i_2_n_0
    );
S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => '0'
    );
T_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T,
      Q => T_REG1,
      R => '0'
    );
T_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T_REG1,
      Q => T_REG2,
      R => '0'
    );
\T_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Q(1),
      I1 => RXCHARISK_REG1_reg_0,
      I2 => Q(0),
      I3 => Q(2),
      I4 => S_i_2_n_0,
      O => K29p7
    );
T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K29p7,
      Q => T,
      R => '0'
    );
WAIT_FOR_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F0F"
    )
        port map (
      I0 => \^k28p5_reg1\,
      I1 => RXEVEN,
      I2 => SYNC_STATUS_REG,
      I3 => WAIT_FOR_K,
      O => WAIT_FOR_K_i_1_n_0
    );
WAIT_FOR_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => WAIT_FOR_K_i_1_n_0,
      Q => WAIT_FOR_K,
      R => SYNC_STATUS_REG0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_SYNCHRONISE is
  port (
    RXEVEN : out STD_LOGIC;
    RXSYNC_STATUS : out STD_LOGIC;
    SYNC_STATUS_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SYNC_STATUS_REG0 : out STD_LOGIC;
    EVEN_reg_0 : out STD_LOGIC;
    SIGNAL_DETECT_MOD : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    EVEN_reg_1 : in STD_LOGIC;
    EVEN_reg_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    XMIT_DATA_INT : in STD_LOGIC;
    RX_INVALID : in STD_LOGIC;
    \FSM_onehot_STATE_reg[12]_0\ : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    D : in STD_LOGIC;
    S2 : in STD_LOGIC;
    K28p5_REG1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_SYNCHRONISE : entity is "SYNCHRONISE";
end gig_ethernet_pcs_pma_0_SYNCHRONISE;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_SYNCHRONISE is
  signal EVEN_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[9]\ : STD_LOGIC;
  signal GOOD_CGS : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \GOOD_CGS[0]_i_1_n_0\ : STD_LOGIC;
  signal \GOOD_CGS[1]_i_1_n_0\ : STD_LOGIC;
  signal \GOOD_CGS[1]_i_2_n_0\ : STD_LOGIC;
  signal \GOOD_CGS[1]_i_3_n_0\ : STD_LOGIC;
  signal \^rxeven\ : STD_LOGIC;
  signal \^rxsync_status\ : STD_LOGIC;
  signal SIGNAL_DETECT_REG : STD_LOGIC;
  signal SYNC_STATUS_i_1_n_0 : STD_LOGIC;
  signal SYNC_STATUS_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EVEN_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[2]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[9]_i_1\ : label is "soft_lutpair52";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[0]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[10]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[11]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[12]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[1]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[2]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[3]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[4]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[5]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[6]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[7]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[8]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[9]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute SOFT_HLUTNM of \GOOD_CGS[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GOOD_CGS[1]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of SYNC_STATUS_REG_i_1 : label is "soft_lutpair54";
begin
  RXEVEN <= \^rxeven\;
  RXSYNC_STATUS <= \^rxsync_status\;
EVEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^rxsync_status\,
      I1 => EVEN_reg_2,
      I2 => \^rxeven\,
      O => EVEN_i_1_n_0
    );
EVEN_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EVEN_i_1_n_0,
      Q => \^rxeven\,
      R => EVEN_reg_1
    );
\FSM_onehot_STATE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I1 => EVEN_reg_2,
      I2 => RXNOTINTABLE_INT,
      I3 => D,
      I4 => \^rxeven\,
      O => \FSM_onehot_STATE[0]_i_1_n_0\
    );
\FSM_onehot_STATE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EVEN_reg_2,
      I1 => \FSM_onehot_STATE_reg_n_0_[2]\,
      O => \FSM_onehot_STATE[10]_i_1_n_0\
    );
\FSM_onehot_STATE[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \FSM_onehot_STATE[11]_i_1_n_0\
    );
\FSM_onehot_STATE[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => EVEN_reg_1,
      I1 => SIGNAL_DETECT_REG,
      I2 => Q(1),
      O => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF444"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[12]_0\,
      I1 => p_0_in,
      I2 => \FSM_onehot_STATE[12]_i_3_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I5 => \FSM_onehot_STATE[12]_i_4_n_0\,
      O => \FSM_onehot_STATE[12]_i_2_n_0\
    );
\FSM_onehot_STATE[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GOOD_CGS(1),
      I1 => GOOD_CGS(0),
      O => \FSM_onehot_STATE[12]_i_3_n_0\
    );
\FSM_onehot_STATE[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => RXNOTINTABLE_INT,
      I1 => D,
      I2 => \^rxeven\,
      I3 => EVEN_reg_2,
      O => \FSM_onehot_STATE[12]_i_4_n_0\
    );
\FSM_onehot_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B3B00000A0A"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg[12]_0\,
      I2 => EVEN_reg_2,
      I3 => \^rxeven\,
      I4 => S2,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \FSM_onehot_STATE[1]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFE00"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \FSM_onehot_STATE_reg[12]_0\,
      I4 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I5 => \FSM_onehot_STATE[2]_i_2_n_0\,
      O => \FSM_onehot_STATE[2]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4F44444444"
    )
        port map (
      I0 => EVEN_reg_2,
      I1 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I2 => \FSM_onehot_STATE[2]_i_3_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I5 => \FSM_onehot_STATE[12]_i_4_n_0\,
      O => \FSM_onehot_STATE[2]_i_2_n_0\
    );
\FSM_onehot_STATE[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \FSM_onehot_STATE[2]_i_3_n_0\
    );
\FSM_onehot_STATE[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => EVEN_reg_2,
      I2 => RXNOTINTABLE_INT,
      I3 => D,
      I4 => \^rxeven\,
      O => \FSM_onehot_STATE[3]_i_1_n_0\
    );
\FSM_onehot_STATE[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000010FF00001050"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[12]_0\,
      I1 => \^rxeven\,
      I2 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I3 => EVEN_reg_2,
      I4 => S2,
      I5 => \FSM_onehot_STATE_reg_n_0_[4]\,
      O => \FSM_onehot_STATE[4]_i_1_n_0\
    );
\FSM_onehot_STATE[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I1 => p_1_in,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \FSM_onehot_STATE[5]_i_1_n_0\
    );
\FSM_onehot_STATE[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0040404040"
    )
        port map (
      I0 => GOOD_CGS(0),
      I1 => GOOD_CGS(1),
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => \FSM_onehot_STATE[12]_i_4_n_0\,
      O => \FSM_onehot_STATE[6]_i_1_n_0\
    );
\FSM_onehot_STATE[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8FFF80000"
    )
        port map (
      I0 => EVEN_reg_2,
      I1 => \^rxeven\,
      I2 => D,
      I3 => RXNOTINTABLE_INT,
      I4 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[6]\,
      O => \FSM_onehot_STATE[7]_i_1_n_0\
    );
\FSM_onehot_STATE[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => \FSM_onehot_STATE[8]_i_1_n_0\
    );
\FSM_onehot_STATE[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => \FSM_onehot_STATE[9]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[0]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[0]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[10]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[10]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[11]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[11]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[12]_i_2_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[12]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[1]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[1]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[2]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[2]\,
      S => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[3]_i_1_n_0\,
      Q => p_0_in,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[4]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[4]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[5]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[5]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[6]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[6]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[7]_i_1_n_0\,
      Q => p_1_in,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[8]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[8]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[9]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[9]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\GOOD_CGS[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => GOOD_CGS(0),
      O => \GOOD_CGS[0]_i_1_n_0\
    );
\GOOD_CGS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I1 => EVEN_reg_1,
      I2 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I3 => p_1_in,
      O => \GOOD_CGS[1]_i_1_n_0\
    );
\GOOD_CGS[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => EVEN_reg_2,
      I1 => \^rxeven\,
      I2 => D,
      I3 => RXNOTINTABLE_INT,
      O => \GOOD_CGS[1]_i_2_n_0\
    );
\GOOD_CGS[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => GOOD_CGS(1),
      I1 => GOOD_CGS(0),
      O => \GOOD_CGS[1]_i_3_n_0\
    );
\GOOD_CGS_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \GOOD_CGS[1]_i_2_n_0\,
      D => \GOOD_CGS[0]_i_1_n_0\,
      Q => GOOD_CGS(0),
      R => \GOOD_CGS[1]_i_1_n_0\
    );
\GOOD_CGS_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => \GOOD_CGS[1]_i_2_n_0\,
      D => \GOOD_CGS[1]_i_3_n_0\,
      Q => GOOD_CGS(1),
      R => \GOOD_CGS[1]_i_1_n_0\
    );
RX_DATA_ERROR_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rxeven\,
      I1 => K28p5_REG1,
      O => EVEN_reg_0
    );
\RX_RUDI_INVALID_DELAY[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0051"
    )
        port map (
      I0 => \^rxsync_status\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => XMIT_DATA_INT,
      I4 => RX_INVALID,
      O => SYNC_STATUS_reg_0(0)
    );
SIGNAL_DETECT_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SIGNAL_DETECT_MOD,
      Q => SIGNAL_DETECT_REG,
      R => '0'
    );
SYNC_STATUS_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => EVEN_reg_1,
      I1 => \^rxsync_status\,
      O => SYNC_STATUS_REG0
    );
SYNC_STATUS_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01550000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I1 => p_1_in,
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => \FSM_onehot_STATE[12]_i_4_n_0\,
      I4 => \^rxsync_status\,
      I5 => SYNC_STATUS_i_2_n_0,
      O => SYNC_STATUS_i_1_n_0
    );
SYNC_STATUS_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020202"
    )
        port map (
      I0 => p_0_in,
      I1 => RXNOTINTABLE_INT,
      I2 => D,
      I3 => \^rxeven\,
      I4 => EVEN_reg_2,
      I5 => \FSM_onehot_STATE_reg[12]_0\,
      O => SYNC_STATUS_i_2_n_0
    );
SYNC_STATUS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_i_1_n_0,
      Q => \^rxsync_status\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_TX is
  port (
    \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CODE_GRP_CNT_reg[0]_0\ : out STD_LOGIC;
    \CODE_GRP_CNT_reg[0]_1\ : out STD_LOGIC;
    \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[7]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[5]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[3]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[2]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXCHARISK_reg_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXCHARISK_reg_1\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \NO_QSGMII_DATA.TXDATA_reg[4]_0\ : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    XMIT_CONFIG : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    XMIT_DATA : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \TX_CONFIG_reg[14]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_TX : entity is "TX";
end gig_ethernet_pcs_pma_0_TX;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_TX is
  signal C1_OR_C2_i_1_n_0 : STD_LOGIC;
  signal C1_OR_C2_reg_n_0 : STD_LOGIC;
  signal CODE_GRPISK : STD_LOGIC;
  signal CODE_GRPISK_i_1_n_0 : STD_LOGIC;
  signal CODE_GRPISK_i_2_n_0 : STD_LOGIC;
  signal \CODE_GRP[0]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[0]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[1]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[1]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[2]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[3]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[3]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[4]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[5]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[6]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[6]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_3_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_4_n_0\ : STD_LOGIC;
  signal \CODE_GRP_CNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP_CNT[1]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP_CNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_GRP_reg_n_0_[0]\ : STD_LOGIC;
  signal CONFIG_DATA : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \CONFIG_DATA_reg_n_0_[0]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[1]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[2]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[3]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[6]\ : STD_LOGIC;
  signal CONFIG_K28p5_reg_n_0 : STD_LOGIC;
  signal DISPARITY : STD_LOGIC;
  signal INSERT_IDLE : STD_LOGIC;
  signal INSERT_IDLE_i_1_n_0 : STD_LOGIC;
  signal INSERT_IDLE_reg_n_0 : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal K28p5_i_1_n_0 : STD_LOGIC;
  signal \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_2_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_3_n_0\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \R_i_1__0_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal SYNC_DISPARITY_i_1_n_0 : STD_LOGIC;
  signal SYNC_DISPARITY_reg_n_0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T0 : STD_LOGIC;
  signal TRIGGER_S : STD_LOGIC;
  signal TRIGGER_S0 : STD_LOGIC;
  signal TRIGGER_T : STD_LOGIC;
  signal TXCHARDISPMODE0 : STD_LOGIC;
  signal TXCHARDISPMODE_INT : STD_LOGIC;
  signal TXCHARDISPVAL : STD_LOGIC;
  signal TXCHARISK_INT : STD_LOGIC;
  signal TXDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_CONFIG : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal TX_EN_REG1 : STD_LOGIC;
  signal TX_ER_REG1 : STD_LOGIC;
  signal TX_EVEN : STD_LOGIC;
  signal TX_PACKET : STD_LOGIC;
  signal TX_PACKET_REG1 : STD_LOGIC;
  signal TX_PACKET_i_1_n_0 : STD_LOGIC;
  signal V : STD_LOGIC;
  signal V_i_1_n_0 : STD_LOGIC;
  signal V_i_2_n_0 : STD_LOGIC;
  signal V_i_3_n_0 : STD_LOGIC;
  signal V_i_4_n_0 : STD_LOGIC;
  signal V_i_5_n_0 : STD_LOGIC;
  signal V_i_6_n_0 : STD_LOGIC;
  signal XMIT_CONFIG_INT : STD_LOGIC;
  signal XMIT_DATA_INT : STD_LOGIC;
  signal XMIT_DATA_INT_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal p_1_in25_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_34_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C1_OR_C2_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of CODE_GRPISK_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \CODE_GRP[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \CODE_GRP[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \CODE_GRP[7]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \CONFIG_DATA[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \CONFIG_DATA[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \CONFIG_DATA[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CONFIG_DATA[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \CONFIG_DATA[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of SYNC_DISPARITY_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of TRIGGER_S_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of TRIGGER_T_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of TX_PACKET_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPMODE_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARISK_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of V_i_4 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of V_i_6 : label is "soft_lutpair29";
begin
C1_OR_C2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => TX_EVEN,
      I2 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I3 => C1_OR_C2_reg_n_0,
      O => C1_OR_C2_i_1_n_0
    );
C1_OR_C2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C1_OR_C2_i_1_n_0,
      Q => C1_OR_C2_reg_n_0,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
CODE_GRPISK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => CODE_GRPISK_i_2_n_0,
      O => CODE_GRPISK_i_1_n_0
    );
CODE_GRPISK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => V,
      I1 => R,
      I2 => T,
      I3 => S,
      I4 => TX_PACKET,
      I5 => Q(1),
      O => CODE_GRPISK_i_2_n_0
    );
CODE_GRPISK_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CODE_GRPISK_i_1_n_0,
      Q => CODE_GRPISK,
      R => '0'
    );
\CODE_GRP[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0AFA3"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[0]\,
      I1 => \CODE_GRP[0]_i_2_n_0\,
      I2 => XMIT_CONFIG_INT,
      I3 => S,
      I4 => V,
      O => \CODE_GRP[0]_i_1_n_0\
    );
\CODE_GRP[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => TXD_REG1(0),
      I1 => TX_PACKET,
      I2 => R,
      I3 => T,
      O => \CODE_GRP[0]_i_2_n_0\
    );
\CODE_GRP[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAFAFAC"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[1]\,
      I1 => \CODE_GRP[1]_i_2_n_0\,
      I2 => XMIT_CONFIG_INT,
      I3 => S,
      I4 => V,
      O => \CODE_GRP[1]_i_1_n_0\
    );
\CODE_GRP[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11101010"
    )
        port map (
      I0 => S,
      I1 => T,
      I2 => R,
      I3 => TX_PACKET,
      I4 => TXD_REG1(1),
      O => \CODE_GRP[1]_i_2_n_0\
    );
\CODE_GRP[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0000FFCF"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[2]\,
      I1 => \CODE_GRP[7]_i_3_n_0\,
      I2 => TX_PACKET,
      I3 => TXD_REG1(2),
      I4 => S,
      I5 => XMIT_CONFIG_INT,
      O => \CODE_GRP[2]_i_1_n_0\
    );
\CODE_GRP[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => TX_PACKET,
      I1 => TXD_REG1(3),
      I2 => \CODE_GRP[7]_i_4_n_0\,
      I3 => \CODE_GRP[3]_i_2_n_0\,
      O => \CODE_GRP[3]_i_1_n_0\
    );
\CODE_GRP[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[3]\,
      I1 => XMIT_CONFIG_INT,
      I2 => V,
      I3 => Q(1),
      I4 => T,
      I5 => S,
      O => \CODE_GRP[3]_i_2_n_0\
    );
\CODE_GRP[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[2]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TX_PACKET,
      I3 => TXD_REG1(4),
      I4 => \CODE_GRP[7]_i_4_n_0\,
      O => \CODE_GRP[4]_i_1_n_0\
    );
\CODE_GRP[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[2]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TX_PACKET,
      I3 => TXD_REG1(5),
      I4 => \CODE_GRP[7]_i_4_n_0\,
      O => \CODE_GRP[5]_i_1_n_0\
    );
\CODE_GRP[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => XMIT_CONFIG_INT,
      O => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D000DDDD"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => \CONFIG_DATA_reg_n_0_[6]\,
      I2 => TX_PACKET,
      I3 => TXD_REG1(6),
      I4 => \CODE_GRP[7]_i_4_n_0\,
      O => \CODE_GRP[6]_i_2_n_0\
    );
\CODE_GRP[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFB"
    )
        port map (
      I0 => Q(1),
      I1 => TX_PACKET,
      I2 => S,
      I3 => \CODE_GRP[7]_i_3_n_0\,
      I4 => XMIT_CONFIG_INT,
      O => \CODE_GRP[7]_i_1_n_0\
    );
\CODE_GRP[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[2]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TX_PACKET,
      I3 => TXD_REG1(7),
      I4 => \CODE_GRP[7]_i_4_n_0\,
      O => \CODE_GRP[7]_i_2_n_0\
    );
\CODE_GRP[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => V,
      I1 => R,
      I2 => T,
      O => \CODE_GRP[7]_i_3_n_0\
    );
\CODE_GRP[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => S,
      I2 => T,
      I3 => R,
      I4 => V,
      O => \CODE_GRP[7]_i_4_n_0\
    );
\CODE_GRP_CNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TX_EVEN,
      O => \CODE_GRP_CNT[0]_i_1_n_0\
    );
\CODE_GRP_CNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      O => \CODE_GRP_CNT[1]_i_1_n_0\
    );
\CODE_GRP_CNT_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP_CNT[0]_i_1_n_0\,
      Q => TX_EVEN,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CODE_GRP_CNT_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP_CNT[1]_i_1_n_0\,
      Q => \CODE_GRP_CNT_reg_n_0_[1]\,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CODE_GRP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[0]_i_1_n_0\,
      Q => \CODE_GRP_reg_n_0_[0]\,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[1]_i_1_n_0\,
      Q => p_1_in,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[2]_i_1_n_0\,
      Q => p_0_in11_in,
      S => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[3]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\CODE_GRP_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[4]_i_1_n_0\,
      Q => p_1_in0_in,
      S => \CODE_GRP[7]_i_1_n_0\
    );
\CODE_GRP_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[5]_i_1_n_0\,
      Q => p_1_in25_in,
      S => \CODE_GRP[7]_i_1_n_0\
    );
\CODE_GRP_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[6]_i_2_n_0\,
      Q => p_24_in,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[7]_i_2_n_0\,
      Q => p_0_in26_in,
      S => \CODE_GRP[7]_i_1_n_0\
    );
\CONFIG_DATA[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => C1_OR_C2_reg_n_0,
      I1 => TX_EVEN,
      I2 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I3 => TX_CONFIG(0),
      O => CONFIG_DATA(0)
    );
\CONFIG_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => C1_OR_C2_reg_n_0,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => TX_EVEN,
      O => CONFIG_DATA(1)
    );
\CONFIG_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => C1_OR_C2_reg_n_0,
      I1 => TX_EVEN,
      I2 => \CODE_GRP_CNT_reg_n_0_[1]\,
      O => CONFIG_DATA(2)
    );
\CONFIG_DATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => TX_CONFIG(11),
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => TX_EVEN,
      O => CONFIG_DATA(3)
    );
\CONFIG_DATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => C1_OR_C2_reg_n_0,
      I1 => TX_EVEN,
      I2 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I3 => TX_CONFIG(14),
      O => CONFIG_DATA(6)
    );
\CONFIG_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(0),
      Q => \CONFIG_DATA_reg_n_0_[0]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(1),
      Q => \CONFIG_DATA_reg_n_0_[1]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(2),
      Q => \CONFIG_DATA_reg_n_0_[2]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(3),
      Q => \CONFIG_DATA_reg_n_0_[3]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(6),
      Q => \CONFIG_DATA_reg_n_0_[6]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
CONFIG_K28p5_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => XMIT_DATA_INT,
      Q => CONFIG_K28p5_reg_n_0,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
INSERT_IDLE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF01"
    )
        port map (
      I0 => TX_PACKET,
      I1 => \CODE_GRP[7]_i_3_n_0\,
      I2 => S,
      I3 => Q(1),
      I4 => XMIT_CONFIG_INT,
      O => INSERT_IDLE_i_1_n_0
    );
INSERT_IDLE_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => INSERT_IDLE_i_1_n_0,
      Q => INSERT_IDLE_reg_n_0,
      R => '0'
    );
K28p5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => CONFIG_K28p5_reg_n_0,
      O => K28p5_i_1_n_0
    );
K28p5_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K28p5_i_1_n_0,
      Q => K28p5,
      R => '0'
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SYNC_DISPARITY_reg_n_0,
      I1 => TX_EVEN,
      O => TXCHARDISPMODE0
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_reg\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => TXCHARDISPMODE0,
      Q => TXCHARDISPMODE_INT,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => TX_EVEN,
      I1 => SYNC_DISPARITY_reg_n_0,
      I2 => DISPARITY,
      O => \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\,
      Q => TXCHARDISPVAL,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_DATA.TXCHARISK_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CODE_GRPISK,
      Q => TXCHARISK_INT,
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => \CODE_GRP_reg_n_0_[0]\,
      O => \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => p_0_in11_in,
      O => \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => DISPARITY,
      I1 => INSERT_IDLE_reg_n_0,
      I2 => TX_EVEN,
      I3 => p_1_in0_in,
      O => \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => TX_EVEN,
      I2 => INSERT_IDLE_reg_n_0,
      O => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => INSERT_IDLE_reg_n_0,
      I2 => TX_EVEN,
      I3 => p_24_in,
      O => \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => p_0_in26_in,
      O => \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\,
      Q => TXDATA(0),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in,
      Q => TXDATA(1),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\,
      Q => TXDATA(2),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => TXDATA(3),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\,
      Q => TXDATA(4),
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in25_in,
      Q => TXDATA(5),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\,
      Q => TXDATA(6),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\,
      Q => TXDATA(7),
      R => '0'
    );
\NO_QSGMII_DISP.DISPARITY_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009090900F6F6F6"
    )
        port map (
      I0 => \NO_QSGMII_DISP.DISPARITY_i_2_n_0\,
      I1 => \NO_QSGMII_DISP.DISPARITY_i_3_n_0\,
      I2 => K28p5,
      I3 => TX_EVEN,
      I4 => INSERT_IDLE_reg_n_0,
      I5 => DISPARITY,
      O => \NO_QSGMII_DISP.DISPARITY_i_1_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"167E7EE8"
    )
        port map (
      I0 => p_1_in,
      I1 => \CODE_GRP_reg_n_0_[0]\,
      I2 => p_0_in11_in,
      I3 => p_0_in,
      I4 => p_1_in0_in,
      O => \NO_QSGMII_DISP.DISPARITY_i_2_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => p_24_in,
      I2 => p_1_in25_in,
      O => \NO_QSGMII_DISP.DISPARITY_i_3_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_reg\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DISP.DISPARITY_i_1_n_0\,
      Q => DISPARITY,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\R_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDCCCCC"
    )
        port map (
      I0 => S,
      I1 => T,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      I4 => R,
      O => \R_i_1__0_n_0\
    );
R_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \R_i_1__0_n_0\,
      Q => R,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
SYNC_DISPARITY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => INSERT_IDLE,
      O => SYNC_DISPARITY_i_1_n_0
    );
SYNC_DISPARITY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => Q(1),
      I1 => S,
      I2 => T,
      I3 => R,
      I4 => V,
      I5 => TX_PACKET,
      O => INSERT_IDLE
    );
SYNC_DISPARITY_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SYNC_DISPARITY_i_1_n_0,
      Q => SYNC_DISPARITY_reg_n_0,
      R => '0'
    );
\S_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A8AA88888888"
    )
        port map (
      I0 => XMIT_DATA_INT_reg_n_0,
      I1 => TRIGGER_S,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      I4 => TX_EN_REG1,
      I5 => gmii_tx_en,
      O => S0
    );
S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TRIGGER_S_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      O => TRIGGER_S0
    );
TRIGGER_S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TRIGGER_S0,
      Q => TRIGGER_S,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TRIGGER_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      O => p_34_in
    );
TRIGGER_T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_34_in,
      Q => TRIGGER_T,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\TXD_REG1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(0),
      Q => TXD_REG1(0),
      R => '0'
    );
\TXD_REG1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(1),
      Q => TXD_REG1(1),
      R => '0'
    );
\TXD_REG1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(2),
      Q => TXD_REG1(2),
      R => '0'
    );
\TXD_REG1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(3),
      Q => TXD_REG1(3),
      R => '0'
    );
\TXD_REG1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(4),
      Q => TXD_REG1(4),
      R => '0'
    );
\TXD_REG1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(5),
      Q => TXD_REG1(5),
      R => '0'
    );
\TXD_REG1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(6),
      Q => TXD_REG1(6),
      R => '0'
    );
\TXD_REG1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(7),
      Q => TXD_REG1(7),
      R => '0'
    );
\TX_CONFIG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => XMIT_DATA_INT,
      D => \TX_CONFIG_reg[14]_0\(0),
      Q => TX_CONFIG(0),
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\TX_CONFIG_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => XMIT_DATA_INT,
      D => \TX_CONFIG_reg[14]_0\(1),
      Q => TX_CONFIG(11),
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\TX_CONFIG_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => XMIT_DATA_INT,
      D => \TX_CONFIG_reg[14]_0\(2),
      Q => TX_CONFIG(14),
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TX_EN_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_en,
      Q => TX_EN_REG1,
      R => '0'
    );
TX_ER_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_er,
      Q => TX_ER_REG1,
      R => '0'
    );
TX_PACKET_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TX_PACKET,
      Q => TX_PACKET_REG1,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TX_PACKET_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => TX_PACKET,
      I1 => T,
      I2 => S,
      O => TX_PACKET_i_1_n_0
    );
TX_PACKET_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TX_PACKET_i_1_n_0,
      Q => TX_PACKET,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFF88888"
    )
        port map (
      I0 => TRIGGER_T,
      I1 => V,
      I2 => S,
      I3 => TX_PACKET,
      I4 => TX_EN_REG1,
      I5 => gmii_tx_en,
      O => T0
    );
T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T0,
      Q => T,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXCHARISK_INT,
      I1 => Q(0),
      I2 => rxchariscomma(0),
      O => \NO_QSGMII_DATA.TXCHARISK_reg_1\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXCHARISK_INT,
      I1 => Q(0),
      I2 => rxcharisk(0),
      O => \NO_QSGMII_DATA.TXCHARISK_reg_0\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(0),
      I1 => Q(0),
      I2 => rxdata(0),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(0)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(1),
      I1 => Q(0),
      I2 => rxdata(1),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(1)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(2),
      I1 => Q(0),
      I2 => rxdata(2),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(2)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(3),
      I1 => Q(0),
      I2 => rxdata(3),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(3)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(4),
      I1 => Q(0),
      I2 => rxdata(4),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(4)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(5),
      I1 => Q(0),
      I2 => rxdata(5),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(5)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(6),
      I1 => Q(0),
      I2 => rxdata(6),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(6)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(7),
      I1 => Q(0),
      I2 => rxdata(7),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(7)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_EVEN,
      I1 => Q(0),
      I2 => TXCHARDISPMODE_INT,
      O => \CODE_GRP_CNT_reg[0]_0\
    );
\USE_ROCKET_IO.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXCHARDISPVAL,
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\
    );
\USE_ROCKET_IO.TXCHARISK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_EVEN,
      I1 => Q(0),
      I2 => TXCHARISK_INT,
      O => \CODE_GRP_CNT_reg[0]_1\
    );
\USE_ROCKET_IO.TXDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(0),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(0)
    );
\USE_ROCKET_IO.TXDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(1),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(1)
    );
\USE_ROCKET_IO.TXDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(2),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[2]_0\
    );
\USE_ROCKET_IO.TXDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(3),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[3]_0\
    );
\USE_ROCKET_IO.TXDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => TXDATA(4),
      I2 => Q(0),
      O => D(2)
    );
\USE_ROCKET_IO.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(5),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[5]_0\
    );
\USE_ROCKET_IO.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0074"
    )
        port map (
      I0 => TX_EVEN,
      I1 => Q(0),
      I2 => TXDATA(6),
      I3 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(3)
    );
\USE_ROCKET_IO.TXDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => Q(0),
      I2 => TX_EVEN,
      O => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg\
    );
\USE_ROCKET_IO.TXDATA[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(7),
      I1 => Q(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_0\
    );
V_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => V_i_2_n_0,
      I1 => S,
      I2 => V,
      O => V_i_1_n_0
    );
V_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888A8A"
    )
        port map (
      I0 => XMIT_DATA_INT_reg_n_0,
      I1 => V_i_3_n_0,
      I2 => V_i_4_n_0,
      I3 => V_i_5_n_0,
      I4 => V_i_6_n_0,
      O => V_i_2_n_0
    );
V_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => TX_ER_REG1,
      I2 => TX_PACKET_REG1,
      O => V_i_3_n_0
    );
V_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => gmii_tx_er,
      I1 => gmii_tx_en,
      I2 => TX_PACKET,
      O => V_i_4_n_0
    );
V_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => gmii_txd(0),
      I1 => gmii_txd(7),
      I2 => gmii_txd(5),
      I3 => gmii_txd(4),
      I4 => gmii_txd(6),
      I5 => gmii_txd(1),
      O => V_i_5_n_0
    );
V_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => gmii_txd(3),
      I1 => gmii_txd(2),
      I2 => gmii_tx_en,
      O => V_i_6_n_0
    );
V_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => V_i_1_n_0,
      Q => V,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\XMIT_CONFIG_INT_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      O => XMIT_DATA_INT
    );
XMIT_CONFIG_INT_reg: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => XMIT_DATA_INT,
      D => XMIT_CONFIG,
      Q => XMIT_CONFIG_INT,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
XMIT_DATA_INT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => XMIT_DATA_INT,
      D => XMIT_DATA,
      Q => XMIT_DATA_INT_reg_n_0,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block is
  port (
    reset_sync6_0 : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block is
  signal reset_out : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
\MGT_RESET.RESET_INT_PIPE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_out,
      I1 => dcm_locked,
      O => reset_sync6_0
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block_10 is
  port (
    reset_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block_10 : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block_10 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => '0',
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg1,
      PRE => '0',
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg2,
      PRE => '0',
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg3,
      PRE => '0',
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg4,
      PRE => '0',
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block_9 is
  port (
    RESET_INT_PIPE_RXRECCLK0 : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block_9 : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block_9 is
  signal RESET_REG_RXRECCLK : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of reset_sync1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute BOX_TYPE of reset_sync6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
begin
\MGT_RESET.RESET_INT_PIPE_RXRECCLK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => dcm_locked,
      I1 => RESET_REG_RXRECCLK,
      I2 => reset_out,
      O => RESET_INT_PIPE_RXRECCLK0
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => reset,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => RESET_REG_RXRECCLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block is
  port (
    SIGNAL_DETECT_MOD : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_detect : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block : entity is "sync_block";
end gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
begin
SIGNAL_DETECT_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out,
      I1 => Q(0),
      O => SIGNAL_DETECT_MOD
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => signal_detect,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen is
  port (
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_en_reg_0 : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    reg4_reg : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    data_out : in STD_LOGIC;
    speed_is_10_100_fall_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen : entity is "gig_ethernet_pcs_pma_0_clk_gen";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen is
  signal clk12_5 : STD_LOGIC;
  signal clk12_5_reg : STD_LOGIC;
  signal clk1_25 : STD_LOGIC;
  signal clk1_25_reg : STD_LOGIC;
  signal clk_div1_n_3 : STD_LOGIC;
  signal clk_en_12_5_fall : STD_LOGIC;
  signal clk_en_12_5_fall0 : STD_LOGIC;
  signal clk_en_12_5_rise : STD_LOGIC;
  signal clk_en_12_5_rise0 : STD_LOGIC;
  signal clk_en_1_25_fall : STD_LOGIC;
  signal clk_en_1_25_fall0 : STD_LOGIC;
  signal reset_fall : STD_LOGIC;
  signal sgmii_clk_en_i_1_n_0 : STD_LOGIC;
  signal sgmii_clk_r0_out : STD_LOGIC;
  signal speed_is_100_fall : STD_LOGIC;
  signal speed_is_10_100_fall : STD_LOGIC;
begin
clk12_5_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => clk12_5,
      Q => clk12_5_reg,
      R => reset_out
    );
clk1_25_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => clk1_25,
      Q => clk1_25_reg,
      R => reset_out
    );
clk_div1: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr
     port map (
      clk12_5 => clk12_5,
      clk12_5_reg => clk12_5_reg,
      clk1_25 => clk1_25,
      clk_en_12_5_fall0 => clk_en_12_5_fall0,
      clk_en_12_5_rise0 => clk_en_12_5_rise0,
      reg4_reg_0 => reg4_reg,
      reset_fall => reset_fall,
      reset_out => reset_out,
      speed_is_100_fall => speed_is_100_fall,
      speed_is_10_100_fall => speed_is_10_100_fall,
      speed_is_10_100_fall_reg => clk_div1_n_3
    );
clk_div2: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_johnson_cntr_2
     port map (
      clk12_5 => clk12_5,
      clk1_25 => clk1_25,
      clk1_25_reg => clk1_25_reg,
      clk_en_12_5_rise => clk_en_12_5_rise,
      clk_en_1_25_fall0 => clk_en_1_25_fall0,
      data_out => data_out,
      reg4_reg_0 => reg4_reg,
      reset_out => reset_out,
      sgmii_clk_r0_out => sgmii_clk_r0_out,
      sgmii_clk_r_reg => speed_is_10_100_fall_reg_0
    );
clk_en_12_5_fall_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => clk_en_12_5_fall0,
      Q => clk_en_12_5_fall,
      R => reset_out
    );
clk_en_12_5_rise_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => clk_en_12_5_rise0,
      Q => clk_en_12_5_rise,
      R => reset_out
    );
clk_en_1_25_fall_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => clk_en_1_25_fall0,
      Q => clk_en_1_25_fall,
      R => reset_out
    );
reset_fall_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => reg4_reg,
      CE => '1',
      D => reset_out,
      Q => reset_fall,
      R => '0'
    );
sgmii_clk_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => clk_en_1_25_fall,
      I1 => data_out,
      I2 => clk_en_12_5_fall,
      I3 => speed_is_10_100_fall_reg_0,
      O => sgmii_clk_en_i_1_n_0
    );
sgmii_clk_en_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => sgmii_clk_en_i_1_n_0,
      Q => sgmii_clk_en_reg_0,
      R => reset_out
    );
sgmii_clk_f_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => reg4_reg,
      CE => '1',
      D => clk_div1_n_3,
      Q => sgmii_clk_f,
      R => '0'
    );
sgmii_clk_r_reg: unisim.vcomponents.FDRE
     port map (
      C => reg4_reg,
      CE => '1',
      D => sgmii_clk_r0_out,
      Q => sgmii_clk_r,
      R => reset_out
    );
speed_is_100_fall_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => reg4_reg,
      CE => '1',
      D => data_out,
      Q => speed_is_100_fall,
      R => '0'
    );
speed_is_10_100_fall_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => reg4_reg,
      CE => '1',
      D => speed_is_10_100_fall_reg_0,
      Q => speed_is_10_100_fall,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    read_enable_reg_0 : in STD_LOGIC;
    tx_data_10b : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4 : entity is "gig_ethernet_pcs_pma_0_gearbox_10_to_4";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4 is
  signal dataout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dummya : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dummyb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \loop0[0].dataout[0]_i_2_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[1]_i_2_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[2]_i_2_n_0\ : STD_LOGIC;
  signal \loop0[0].dataout[3]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal r_state_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal ram_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal read_addra : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_addrb[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addrb[3]_i_1__0_n_0\ : STD_LOGIC;
  signal read_enable_dom_ch : STD_LOGIC;
  signal \read_enable_i_1__0_n_0\ : STD_LOGIC;
  signal read_enable_reg_n_0 : STD_LOGIC;
  signal reset_sync_output_clk_n_0 : STD_LOGIC;
  signal write_addr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \loop2[0].ram_inst0\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \loop2[0].ram_inst1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_state[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r_state[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \r_state[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \r_state[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \r_state[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r_state[5]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \read_addrb[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \read_addrb[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \read_addrb[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \read_addrb[3]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \read_enable_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair61";
begin
\loop0[0].dataout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \loop0[0].dataout[0]_i_2_n_0\,
      I1 => r_state(1),
      I2 => read_addra(0),
      I3 => ram_out(6),
      I4 => r_state(0),
      I5 => ram_out(2),
      O => dataout(0)
    );
\loop0[0].dataout[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_out(6),
      I1 => ram_out(8),
      I2 => r_state(1),
      I3 => ram_out(4),
      I4 => r_state(0),
      I5 => ram_out(0),
      O => \loop0[0].dataout[0]_i_2_n_0\
    );
\loop0[0].dataout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \loop0[0].dataout[1]_i_2_n_0\,
      I1 => r_state(1),
      I2 => read_addra(0),
      I3 => ram_out(7),
      I4 => r_state(0),
      I5 => ram_out(3),
      O => dataout(1)
    );
\loop0[0].dataout[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_out(7),
      I1 => ram_out(9),
      I2 => r_state(1),
      I3 => ram_out(5),
      I4 => r_state(0),
      I5 => ram_out(1),
      O => \loop0[0].dataout[1]_i_2_n_0\
    );
\loop0[0].dataout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \loop0[0].dataout[2]_i_2_n_0\,
      I1 => r_state(1),
      I2 => read_addra(0),
      I3 => ram_out(8),
      I4 => r_state(0),
      I5 => ram_out(4),
      O => dataout(2)
    );
\loop0[0].dataout[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_out(8),
      I1 => ram_out(10),
      I2 => r_state(1),
      I3 => ram_out(6),
      I4 => r_state(0),
      I5 => ram_out(2),
      O => \loop0[0].dataout[2]_i_2_n_0\
    );
\loop0[0].dataout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \loop0[0].dataout[3]_i_2_n_0\,
      I1 => r_state(1),
      I2 => read_addra(0),
      I3 => ram_out(9),
      I4 => r_state(0),
      I5 => ram_out(5),
      O => dataout(3)
    );
\loop0[0].dataout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_out(9),
      I1 => ram_out(11),
      I2 => r_state(1),
      I3 => ram_out(7),
      I4 => r_state(0),
      I5 => ram_out(3),
      O => \loop0[0].dataout[3]_i_2_n_0\
    );
\loop0[0].dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dataout(0),
      Q => Q(0),
      R => '0'
    );
\loop0[0].dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dataout(1),
      Q => Q(1),
      R => '0'
    );
\loop0[0].dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dataout(2),
      Q => Q(2),
      R => '0'
    );
\loop0[0].dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dataout(3),
      Q => Q(3),
      R => '0'
    );
\loop2[0].ram_inst0\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => read_addra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => read_addra(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr_reg(3 downto 0),
      DIA(1 downto 0) => tx_data_10b(1 downto 0),
      DIB(1 downto 0) => tx_data_10b(3 downto 2),
      DIC(1 downto 0) => tx_data_10b(5 downto 4),
      DID(1 downto 0) => dummya(1 downto 0),
      DOA(1 downto 0) => ram_out(1 downto 0),
      DOB(1 downto 0) => ram_out(3 downto 2),
      DOC(1 downto 0) => ram_out(5 downto 4),
      DOD(1 downto 0) => dummya(1 downto 0),
      WCLK => read_enable_reg_0,
      WE => '1'
    );
\loop2[0].ram_inst1\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => read_addra(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => read_addra(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => read_addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => write_addr_reg(3 downto 0),
      DIA(1 downto 0) => tx_data_10b(7 downto 6),
      DIB(1 downto 0) => tx_data_10b(9 downto 8),
      DIC(1 downto 0) => tx_data_10b(1 downto 0),
      DID(1 downto 0) => dummyb(1 downto 0),
      DOA(1 downto 0) => ram_out(7 downto 6),
      DOB(1 downto 0) => ram_out(9 downto 8),
      DOC(1 downto 0) => ram_out(11 downto 10),
      DOD(1 downto 0) => dummyb(1 downto 0),
      WCLK => read_enable_reg_0,
      WE => '1'
    );
\r_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => r_state(1),
      I1 => read_addra(0),
      I2 => r_state(0),
      O => \r_state[0]_i_1_n_0\
    );
\r_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => r_state(1),
      I1 => read_addra(0),
      I2 => r_state(0),
      O => r_state_0(1)
    );
\r_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => r_state(0),
      I1 => read_addra(0),
      I2 => r_state(1),
      O => r_state_0(2)
    );
\r_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_state(0),
      I1 => read_addra(0),
      I2 => read_addra(1),
      O => r_state_0(3)
    );
\r_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_state(0),
      I1 => read_addra(0),
      I2 => read_addra(1),
      I3 => read_addra(2),
      O => r_state_0(4)
    );
\r_state[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => r_state(0),
      I1 => read_addra(0),
      I2 => read_addra(1),
      I3 => read_addra(2),
      I4 => read_addra(3),
      O => r_state_0(5)
    );
\r_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \r_state[0]_i_1_n_0\,
      Q => r_state(0),
      R => reset_sync_output_clk_n_0
    );
\r_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => r_state_0(1),
      Q => r_state(1),
      R => reset_sync_output_clk_n_0
    );
\r_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => r_state_0(2),
      Q => read_addra(0),
      R => reset_sync_output_clk_n_0
    );
\r_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => r_state_0(3),
      Q => read_addra(1),
      R => reset_sync_output_clk_n_0
    );
\r_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => r_state_0(4),
      Q => read_addra(2),
      R => reset_sync_output_clk_n_0
    );
\r_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => r_state_0(5),
      Q => read_addra(3),
      R => reset_sync_output_clk_n_0
    );
\read_addrb[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_addra(0),
      O => \read_addrb[0]_i_1_n_0\
    );
\read_addrb[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(1),
      O => \read_addrb[1]_i_1_n_0\
    );
\read_addrb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_addra(0),
      I1 => read_addra(1),
      I2 => read_addra(2),
      O => \read_addrb[2]_i_1_n_0\
    );
\read_addrb[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_addra(1),
      I1 => read_addra(0),
      I2 => read_addra(2),
      I3 => read_addra(3),
      O => \read_addrb[3]_i_1__0_n_0\
    );
\read_addrb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_addrb[0]_i_1_n_0\,
      Q => read_addrb(0),
      R => '0'
    );
\read_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_addrb[1]_i_1_n_0\,
      Q => read_addrb(1),
      R => '0'
    );
\read_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_addrb[2]_i_1_n_0\,
      Q => read_addrb(2),
      R => '0'
    );
\read_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \read_addrb[3]_i_1__0_n_0\,
      Q => read_addrb(3),
      R => '0'
    );
read_enable_dom_ch_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => read_enable_reg_n_0,
      Q => read_enable_dom_ch,
      R => '0'
    );
\read_enable_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => write_addr_reg(2),
      I1 => write_addr_reg(3),
      I2 => write_addr_reg(1),
      I3 => write_addr_reg(0),
      I4 => read_enable_reg_n_0,
      O => \read_enable_i_1__0_n_0\
    );
read_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => read_enable_reg_0,
      CE => '1',
      D => \read_enable_i_1__0_n_0\,
      Q => read_enable_reg_n_0,
      R => reset_out
    );
reset_sync_output_clk: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_8
     port map (
      CLK => CLK,
      SR(0) => reset_sync_output_clk_n_0,
      read_enable_dom_ch => read_enable_dom_ch,
      reset_out => reset_out
    );
\write_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_addr_reg(0),
      O => \p_0_in__2\(0)
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_addr_reg(0),
      I1 => write_addr_reg(1),
      O => \p_0_in__2\(1)
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_addr_reg(0),
      I1 => write_addr_reg(1),
      I2 => write_addr_reg(2),
      O => \p_0_in__2\(2)
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_addr_reg(1),
      I1 => write_addr_reg(0),
      I2 => write_addr_reg(2),
      I3 => write_addr_reg(3),
      O => \p_0_in__2\(3)
    );
\write_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => read_enable_reg_0,
      CE => '1',
      D => \p_0_in__2\(0),
      Q => write_addr_reg(0),
      R => reset_out
    );
\write_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => read_enable_reg_0,
      CE => '1',
      D => \p_0_in__2\(1),
      Q => write_addr_reg(1),
      R => reset_out
    );
\write_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => read_enable_reg_0,
      CE => '1',
      D => \p_0_in__2\(2),
      Q => write_addr_reg(2),
      R => reset_out
    );
\write_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => read_enable_reg_0,
      CE => '1',
      D => \p_0_in__2\(3),
      Q => write_addr_reg(3),
      R => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8 is
  port (
    comma : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \grdni.run_disp_i_reg\ : out STD_LOGIC;
    \grdni.run_disp_i_reg_0\ : out STD_LOGIC;
    k : out STD_LOGIC;
    code_err_i : out STD_LOGIC;
    b3 : out STD_LOGIC_VECTOR ( 7 downto 5 );
    CLK : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    \mdataouta_reg[3]\ : in STD_LOGIC;
    not_rxclk : in STD_LOGIC;
    \loop0[0].dataout_reg[9]\ : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    rxrundisp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8 : entity is "gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8 is
  signal action : STD_LOGIC_VECTOR ( 1 to 1 );
  signal al_rx_data : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \al_rx_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \al_rx_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \al_rx_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \al_rx_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \al_rx_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \al_rx_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \al_rx_data[9]_i_4_n_0\ : STD_LOGIC;
  signal \al_rx_data[9]_i_5_n_0\ : STD_LOGIC;
  signal bt_val : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bt_val_rawa : STD_LOGIC;
  signal bt_val_rawa0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal bt_val_rawa0_carry_i_1_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_2_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_3_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_4_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_5_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_6_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_7_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_i_8_n_0 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_1 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_2 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_3 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_4 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_5 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_6 : STD_LOGIC;
  signal bt_val_rawa0_carry_n_7 : STD_LOGIC;
  signal comma_i_1_n_0 : STD_LOGIC;
  signal \count_in[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_in[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_in[8]_i_4_n_0\ : STD_LOGIC;
  signal count_in_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data_mux_i_1_n_0 : STD_LOGIC;
  signal dataout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dc_inst_n_10 : STD_LOGIC;
  signal dc_inst_n_26 : STD_LOGIC;
  signal dc_inst_n_27 : STD_LOGIC;
  signal dc_inst_n_28 : STD_LOGIC;
  signal dc_inst_n_29 : STD_LOGIC;
  signal dc_inst_n_3 : STD_LOGIC;
  signal dc_inst_n_30 : STD_LOGIC;
  signal dc_inst_n_4 : STD_LOGIC;
  signal dc_inst_n_5 : STD_LOGIC;
  signal dc_inst_n_6 : STD_LOGIC;
  signal dc_inst_n_7 : STD_LOGIC;
  signal dc_inst_n_9 : STD_LOGIC;
  signal dec_run : STD_LOGIC;
  signal dec_run_i_1_n_0 : STD_LOGIC;
  signal delay_change_i_1_n_0 : STD_LOGIC;
  signal \dout_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \dout_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_10_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_11_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_12_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_13_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_2_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_3_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_4_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_5_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_6_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_7_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_8_n_0\ : STD_LOGIC;
  signal \gcerr.code_err_i_9_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_i_4_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_i_5_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_i_6_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_i_7_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_reg_i_2_n_0\ : STD_LOGIC;
  signal \gdeni.disp_err_reg_i_3_n_0\ : STD_LOGIC;
  signal \grdni.run_disp_i_i_2_n_0\ : STD_LOGIC;
  signal \grdni.run_disp_i_i_3_n_0\ : STD_LOGIC;
  signal inc_run_i_1_n_0 : STD_LOGIC;
  signal kout_i_i_2_n_0 : STD_LOGIC;
  signal kout_i_i_3_n_0 : STD_LOGIC;
  signal local_reset : STD_LOGIC;
  signal m_delay_val_in : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal m_delay_val_int142_out : STD_LOGIC;
  signal m_delay_val_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mdataoutd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal meq_max : STD_LOGIC;
  signal mload : STD_LOGIC;
  signal mpx : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mpx0 : STD_LOGIC;
  signal \mpx[0]_i_1_n_0\ : STD_LOGIC;
  signal \mpx[0]_i_2_n_0\ : STD_LOGIC;
  signal \mpx[0]_i_4_n_0\ : STD_LOGIC;
  signal \mpx[0]_i_5_n_0\ : STD_LOGIC;
  signal \mpx[0]_i_6_n_0\ : STD_LOGIC;
  signal \mpx[0]_i_7_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_10_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_11_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_12_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_13_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_14_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_15_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_16_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_17_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_18_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_1_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_4_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_5_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_6_n_0\ : STD_LOGIC;
  signal \mpx[1]_i_9_n_0\ : STD_LOGIC;
  signal \mpx[2]_i_1_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_10_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_12_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_13_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_14_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_15_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_16_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_17_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_18_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_19_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_20_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_21_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_22_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_23_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_24_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_2_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_5_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_6_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_7_n_0\ : STD_LOGIC;
  signal \mpx[3]_i_9_n_0\ : STD_LOGIC;
  signal msxor_ctd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal msxor_cti : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal p_18_in : STD_LOGIC;
  signal pd_max : STD_LOGIC;
  signal pd_min : STD_LOGIC;
  signal phase : STD_LOGIC;
  signal phase_i_1_n_0 : STD_LOGIC;
  signal phase_reg_n_0 : STD_LOGIC;
  signal reset_sync : STD_LOGIC;
  signal reset_sync_1 : STD_LOGIC;
  signal reset_sync_2 : STD_LOGIC;
  signal reset_sync_rxclk_div4_n_0 : STD_LOGIC;
  signal reset_sync_rxclk_div4_n_2 : STD_LOGIC;
  signal reset_sync_rxclk_div4_n_4 : STD_LOGIC;
  signal reset_sync_rxclk_div4_n_5 : STD_LOGIC;
  signal rx_data_10b : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rx_data_in_md : STD_LOGIC;
  signal rx_data_in_n : STD_LOGIC;
  signal rx_data_in_p : STD_LOGIC;
  signal rx_data_in_sd : STD_LOGIC;
  signal rxclk_from_odelay : STD_LOGIC;
  signal rxclk_idelay_out : STD_LOGIC;
  signal rxclk_int : STD_LOGIC;
  signal rxclk_r : STD_LOGIC;
  signal rxclk_rd : STD_LOGIC;
  signal rxclk_rd_1 : STD_LOGIC;
  signal \rxdh_reg_n_0_[0]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[19]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[1]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[2]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[3]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[4]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[5]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[6]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[7]\ : STD_LOGIC;
  signal \rxdh_reg_n_0_[8]\ : STD_LOGIC;
  signal s_delay_val_in : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal s_delay_val_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal s_ovflw1 : STD_LOGIC;
  signal s_ovflw12_out : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 3 to 3 );
  signal sdataout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal serdesm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal serdess : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sload : STD_LOGIC;
  signal sload_i_2_n_0 : STD_LOGIC;
  signal small_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \temp[7]_i_3_n_0\ : STD_LOGIC;
  signal \temp[7]_i_4_n_0\ : STD_LOGIC;
  signal temp_0 : STD_LOGIC;
  signal upd_flag_i_1_n_0 : STD_LOGIC;
  signal NLW_bt_val_rawa0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_bt_val_rawa0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_idelay_cal_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_idelay_m_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_m_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_s_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_idelay_s_CASC_RETURN_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes_m_FIFO_EMPTY_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes_m_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes_s_FIFO_EMPTY_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes_s_INTERNAL_DIVCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_odelay_cal_CASC_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_odelay_cal_ODATAIN_UNCONNECTED : STD_LOGIC;
  signal NLW_odelay_cal_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \al_rx_data[3]_i_4\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \al_rx_data[3]_i_6\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \al_rx_data[3]_i_7\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \al_rx_data[4]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \al_rx_data[9]_i_4\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \al_rx_data[9]_i_5\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \count_in[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count_in[2]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count_in[3]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \count_in[5]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \count_in[6]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \count_in[7]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \count_in[8]_i_3\ : label is "soft_lutpair108";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_in : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \dout_i[7]_i_2\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \dout_i[7]_i_3\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \grdni.run_disp_i_i_2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \grdni.run_disp_i_i_3\ : label is "soft_lutpair125";
  attribute BOX_TYPE of idelay_cal : label is "PRIMITIVE";
  attribute BOX_TYPE of idelay_m : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of idelay_m : label is "MLO";
  attribute BOX_TYPE of idelay_s : label is "PRIMITIVE";
  attribute OPT_MODIFIED of idelay_s : label is "MLO";
  attribute BOX_TYPE of iserdes_m : label is "PRIMITIVE";
  attribute OPT_MODIFIED of iserdes_m : label is "MLO";
  attribute BOX_TYPE of iserdes_s : label is "PRIMITIVE";
  attribute OPT_MODIFIED of iserdes_s : label is "MLO";
  attribute SOFT_HLUTNM of \mpx[0]_i_2\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \mpx[0]_i_3\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mpx[0]_i_4\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mpx[0]_i_6\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \mpx[0]_i_7\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \mpx[1]_i_10\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \mpx[1]_i_11\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \mpx[1]_i_12\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \mpx[1]_i_15\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \mpx[1]_i_16\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \mpx[1]_i_17\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \mpx[1]_i_18\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \mpx[1]_i_2\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \mpx[1]_i_3\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \mpx[1]_i_4\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mpx[1]_i_7\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mpx[1]_i_8\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mpx[1]_i_9\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \mpx[2]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \mpx[3]_i_11\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mpx[3]_i_14\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mpx[3]_i_15\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mpx[3]_i_16\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mpx[3]_i_17\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mpx[3]_i_19\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \mpx[3]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \mpx[3]_i_20\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \mpx[3]_i_21\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mpx[3]_i_22\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mpx[3]_i_23\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \mpx[3]_i_24\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \mpx[3]_i_4\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \mpx[3]_i_7\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \mpx[3]_i_8\ : label is "soft_lutpair130";
  attribute BOX_TYPE of odelay_cal : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \small_count[0]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \small_count[1]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \small_count[2]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \small_count[3]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \temp[7]_i_3\ : label is "soft_lutpair109";
begin
\action[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => msxor_ctd(1),
      I1 => msxor_cti(1),
      I2 => msxor_ctd(0),
      I3 => msxor_cti(0),
      O => action(1)
    );
\al_rx_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \al_rx_data[0]_i_2_n_0\,
      I1 => \rxdh_reg_n_0_[8]\,
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => \al_rx_data[4]_i_3_n_0\,
      I4 => \al_rx_data[3]_i_4_n_0\,
      I5 => \al_rx_data[0]_i_3_n_0\,
      O => al_rx_data(0)
    );
\al_rx_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[3]\,
      I1 => \rxdh_reg_n_0_[1]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => mpx(2),
      I5 => mpx(3),
      O => \al_rx_data[0]_i_2_n_0\
    );
\al_rx_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \al_rx_data[3]_i_6_n_0\,
      I1 => \rxdh_reg_n_0_[0]\,
      I2 => \al_rx_data[3]_i_7_n_0\,
      I3 => \rxdh_reg_n_0_[2]\,
      I4 => data9(0),
      I5 => \al_rx_data[9]_i_5_n_0\,
      O => \al_rx_data[0]_i_3_n_0\
    );
\al_rx_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \al_rx_data[1]_i_2_n_0\,
      I1 => data9(0),
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => \al_rx_data[5]_i_3_n_0\,
      I4 => \al_rx_data[3]_i_4_n_0\,
      I5 => \al_rx_data[1]_i_3_n_0\,
      O => al_rx_data(1)
    );
\al_rx_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[4]\,
      I1 => \rxdh_reg_n_0_[2]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => mpx(2),
      I5 => mpx(3),
      O => \al_rx_data[1]_i_2_n_0\
    );
\al_rx_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \al_rx_data[3]_i_6_n_0\,
      I1 => \rxdh_reg_n_0_[1]\,
      I2 => \al_rx_data[3]_i_7_n_0\,
      I3 => \rxdh_reg_n_0_[3]\,
      I4 => data9(1),
      I5 => \al_rx_data[9]_i_5_n_0\,
      O => \al_rx_data[1]_i_3_n_0\
    );
\al_rx_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \al_rx_data[2]_i_2_n_0\,
      I1 => data9(1),
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => \al_rx_data[2]_i_3_n_0\,
      I4 => \al_rx_data[3]_i_4_n_0\,
      I5 => \al_rx_data[2]_i_4_n_0\,
      O => al_rx_data(2)
    );
\al_rx_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[5]\,
      I1 => \rxdh_reg_n_0_[3]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => mpx(2),
      I5 => mpx(3),
      O => \al_rx_data[2]_i_2_n_0\
    );
\al_rx_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[7]\,
      I1 => data9(0),
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => \rxdh_reg_n_0_[6]\,
      I5 => \rxdh_reg_n_0_[8]\,
      O => \al_rx_data[2]_i_3_n_0\
    );
\al_rx_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \al_rx_data[3]_i_6_n_0\,
      I1 => \rxdh_reg_n_0_[2]\,
      I2 => \al_rx_data[3]_i_7_n_0\,
      I3 => \rxdh_reg_n_0_[4]\,
      I4 => data9(2),
      I5 => \al_rx_data[9]_i_5_n_0\,
      O => \al_rx_data[2]_i_4_n_0\
    );
\al_rx_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \al_rx_data[3]_i_2_n_0\,
      I1 => data9(2),
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => \al_rx_data[3]_i_3_n_0\,
      I4 => \al_rx_data[3]_i_4_n_0\,
      I5 => \al_rx_data[3]_i_5_n_0\,
      O => al_rx_data(3)
    );
\al_rx_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[6]\,
      I1 => \rxdh_reg_n_0_[4]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => mpx(2),
      I5 => mpx(3),
      O => \al_rx_data[3]_i_2_n_0\
    );
\al_rx_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[8]\,
      I1 => data9(1),
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => \rxdh_reg_n_0_[7]\,
      I5 => data9(0),
      O => \al_rx_data[3]_i_3_n_0\
    );
\al_rx_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mpx(2),
      I1 => mpx(3),
      O => \al_rx_data[3]_i_4_n_0\
    );
\al_rx_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \al_rx_data[3]_i_6_n_0\,
      I1 => \rxdh_reg_n_0_[3]\,
      I2 => \al_rx_data[3]_i_7_n_0\,
      I3 => \rxdh_reg_n_0_[5]\,
      I4 => data9(3),
      I5 => \al_rx_data[9]_i_5_n_0\,
      O => \al_rx_data[3]_i_5_n_0\
    );
\al_rx_data[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => mpx(1),
      I1 => mpx(0),
      I2 => mpx(2),
      I3 => mpx(3),
      O => \al_rx_data[3]_i_6_n_0\
    );
\al_rx_data[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => mpx(0),
      I1 => mpx(1),
      I2 => mpx(2),
      I3 => mpx(3),
      O => \al_rx_data[3]_i_7_n_0\
    );
\al_rx_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEABAA"
    )
        port map (
      I0 => \al_rx_data[4]_i_2_n_0\,
      I1 => mpx(2),
      I2 => mpx(3),
      I3 => \al_rx_data[4]_i_3_n_0\,
      I4 => \al_rx_data[4]_i_4_n_0\,
      O => al_rx_data(4)
    );
\al_rx_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0A0C0"
    )
        port map (
      I0 => data9(4),
      I1 => data9(3),
      I2 => mpx(3),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => mpx(2),
      O => \al_rx_data[4]_i_2_n_0\
    );
\al_rx_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[5]\,
      I1 => \rxdh_reg_n_0_[7]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => \rxdh_reg_n_0_[4]\,
      I5 => \rxdh_reg_n_0_[6]\,
      O => \al_rx_data[4]_i_3_n_0\
    );
\al_rx_data[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => data9(0),
      I1 => data9(2),
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => \rxdh_reg_n_0_[8]\,
      I5 => data9(1),
      O => \al_rx_data[4]_i_4_n_0\
    );
\al_rx_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEABAA"
    )
        port map (
      I0 => \al_rx_data[5]_i_2_n_0\,
      I1 => mpx(2),
      I2 => mpx(3),
      I3 => \al_rx_data[5]_i_3_n_0\,
      I4 => \al_rx_data[5]_i_4_n_0\,
      O => al_rx_data(5)
    );
\al_rx_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0A0C0"
    )
        port map (
      I0 => data9(5),
      I1 => data9(4),
      I2 => mpx(3),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => mpx(2),
      O => \al_rx_data[5]_i_2_n_0\
    );
\al_rx_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \rxdh_reg_n_0_[6]\,
      I1 => \rxdh_reg_n_0_[8]\,
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => \rxdh_reg_n_0_[5]\,
      I5 => \rxdh_reg_n_0_[7]\,
      O => \al_rx_data[5]_i_3_n_0\
    );
\al_rx_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => data9(1),
      I1 => data9(3),
      I2 => mpx(1),
      I3 => mpx(0),
      I4 => data9(0),
      I5 => data9(2),
      O => \al_rx_data[5]_i_4_n_0\
    );
\al_rx_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \al_rx_data[6]_i_2_n_0\,
      I1 => \al_rx_data[6]_i_3_n_0\,
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => data9(5),
      I4 => \al_rx_data[9]_i_5_n_0\,
      I5 => data9(6),
      O => al_rx_data(6)
    );
\al_rx_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002020000FF00"
    )
        port map (
      I0 => data9(1),
      I1 => mpx(1),
      I2 => mpx(0),
      I3 => \al_rx_data[2]_i_3_n_0\,
      I4 => mpx(3),
      I5 => mpx(2),
      O => \al_rx_data[6]_i_2_n_0\
    );
\al_rx_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAA0000000000"
    )
        port map (
      I0 => data9(3),
      I1 => data9(2),
      I2 => data9(4),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => \al_rx_data[3]_i_4_n_0\,
      O => \al_rx_data[6]_i_3_n_0\
    );
\al_rx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \al_rx_data[7]_i_2_n_0\,
      I1 => \al_rx_data[7]_i_3_n_0\,
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => data9(6),
      I4 => \al_rx_data[9]_i_5_n_0\,
      I5 => data9(7),
      O => al_rx_data(7)
    );
\al_rx_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002020000FF00"
    )
        port map (
      I0 => data9(2),
      I1 => mpx(1),
      I2 => mpx(0),
      I3 => \al_rx_data[3]_i_3_n_0\,
      I4 => mpx(3),
      I5 => mpx(2),
      O => \al_rx_data[7]_i_2_n_0\
    );
\al_rx_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAA0000000000"
    )
        port map (
      I0 => data9(4),
      I1 => data9(3),
      I2 => data9(5),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => \al_rx_data[3]_i_4_n_0\,
      O => \al_rx_data[7]_i_3_n_0\
    );
\al_rx_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \al_rx_data[8]_i_2_n_0\,
      I1 => \al_rx_data[8]_i_3_n_0\,
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => data9(7),
      I4 => \al_rx_data[9]_i_5_n_0\,
      I5 => data9(8),
      O => al_rx_data(8)
    );
\al_rx_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002020000FF00"
    )
        port map (
      I0 => data9(3),
      I1 => mpx(1),
      I2 => mpx(0),
      I3 => \al_rx_data[4]_i_4_n_0\,
      I4 => mpx(3),
      I5 => mpx(2),
      O => \al_rx_data[8]_i_2_n_0\
    );
\al_rx_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAA0000000000"
    )
        port map (
      I0 => data9(5),
      I1 => data9(4),
      I2 => data9(6),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => \al_rx_data[3]_i_4_n_0\,
      O => \al_rx_data[8]_i_3_n_0\
    );
\al_rx_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \al_rx_data[9]_i_2_n_0\,
      I1 => \al_rx_data[9]_i_3_n_0\,
      I2 => \al_rx_data[9]_i_4_n_0\,
      I3 => data9(8),
      I4 => \al_rx_data[9]_i_5_n_0\,
      I5 => data9(9),
      O => al_rx_data(9)
    );
\al_rx_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002020000FF00"
    )
        port map (
      I0 => data9(4),
      I1 => mpx(1),
      I2 => mpx(0),
      I3 => \al_rx_data[5]_i_4_n_0\,
      I4 => mpx(3),
      I5 => mpx(2),
      O => \al_rx_data[9]_i_2_n_0\
    );
\al_rx_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAA0000000000"
    )
        port map (
      I0 => data9(6),
      I1 => data9(5),
      I2 => data9(7),
      I3 => mpx(1),
      I4 => mpx(0),
      I5 => \al_rx_data[3]_i_4_n_0\,
      O => \al_rx_data[9]_i_3_n_0\
    );
\al_rx_data[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => mpx(3),
      I1 => mpx(1),
      I2 => mpx(0),
      I3 => mpx(2),
      O => \al_rx_data[9]_i_4_n_0\
    );
\al_rx_data[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => mpx(1),
      I1 => mpx(0),
      I2 => mpx(2),
      I3 => mpx(3),
      O => \al_rx_data[9]_i_5_n_0\
    );
\al_rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(0),
      Q => rx_data_10b(0),
      R => '0'
    );
\al_rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(1),
      Q => rx_data_10b(1),
      R => '0'
    );
\al_rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(2),
      Q => rx_data_10b(2),
      R => '0'
    );
\al_rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(3),
      Q => rx_data_10b(3),
      R => '0'
    );
\al_rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(4),
      Q => rx_data_10b(4),
      R => '0'
    );
\al_rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(5),
      Q => rx_data_10b(5),
      R => '0'
    );
\al_rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(6),
      Q => rx_data_10b(6),
      R => '0'
    );
\al_rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(7),
      Q => rx_data_10b(7),
      R => '0'
    );
\al_rx_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(8),
      Q => rx_data_10b(8),
      R => '0'
    );
\al_rx_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => al_rx_data(9),
      Q => rx_data_10b(9),
      R => '0'
    );
bt_val_rawa0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_bt_val_rawa0_carry_CO_UNCONNECTED(7),
      CO(6) => bt_val_rawa0_carry_n_1,
      CO(5) => bt_val_rawa0_carry_n_2,
      CO(4) => bt_val_rawa0_carry_n_3,
      CO(3) => bt_val_rawa0_carry_n_4,
      CO(2) => bt_val_rawa0_carry_n_5,
      CO(1) => bt_val_rawa0_carry_n_6,
      CO(0) => bt_val_rawa0_carry_n_7,
      DI(7) => '0',
      DI(6 downto 0) => count_in_reg(6 downto 0),
      O(7 downto 1) => bt_val_rawa0(7 downto 1),
      O(0) => NLW_bt_val_rawa0_carry_O_UNCONNECTED(0),
      S(7) => bt_val_rawa0_carry_i_1_n_0,
      S(6) => bt_val_rawa0_carry_i_2_n_0,
      S(5) => bt_val_rawa0_carry_i_3_n_0,
      S(4) => bt_val_rawa0_carry_i_4_n_0,
      S(3) => bt_val_rawa0_carry_i_5_n_0,
      S(2) => bt_val_rawa0_carry_i_6_n_0,
      S(1) => bt_val_rawa0_carry_i_7_n_0,
      S(0) => bt_val_rawa0_carry_i_8_n_0
    );
bt_val_rawa0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(7),
      I1 => temp(7),
      O => bt_val_rawa0_carry_i_1_n_0
    );
bt_val_rawa0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(6),
      I1 => temp(6),
      O => bt_val_rawa0_carry_i_2_n_0
    );
bt_val_rawa0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(5),
      I1 => temp(5),
      O => bt_val_rawa0_carry_i_3_n_0
    );
bt_val_rawa0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(4),
      I1 => temp(4),
      O => bt_val_rawa0_carry_i_4_n_0
    );
bt_val_rawa0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(3),
      I1 => temp(3),
      O => bt_val_rawa0_carry_i_5_n_0
    );
bt_val_rawa0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(2),
      I1 => temp(2),
      O => bt_val_rawa0_carry_i_6_n_0
    );
bt_val_rawa0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(1),
      I1 => temp(1),
      O => bt_val_rawa0_carry_i_7_n_0
    );
bt_val_rawa0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(0),
      I1 => temp(0),
      O => bt_val_rawa0_carry_i_8_n_0
    );
\bt_val_rawa[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => rxclk_rd_1,
      I1 => rxclk_rd,
      I2 => rxclk_r,
      I3 => phase_reg_n_0,
      O => bt_val_rawa
    );
\bt_val_rawa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(1),
      Q => bt_val(0),
      R => local_reset
    );
\bt_val_rawa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(2),
      Q => bt_val(1),
      R => local_reset
    );
\bt_val_rawa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(3),
      Q => bt_val(2),
      R => local_reset
    );
\bt_val_rawa_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(4),
      Q => bt_val(3),
      S => local_reset
    );
\bt_val_rawa_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(5),
      Q => bt_val(4),
      R => local_reset
    );
\bt_val_rawa_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(6),
      Q => bt_val(5),
      S => local_reset
    );
\bt_val_rawa_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => bt_val_rawa,
      D => bt_val_rawa0(7),
      Q => bt_val(6),
      R => local_reset
    );
comma_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => \mpx[3]_i_5_n_0\,
      I3 => \mpx[3]_i_7_n_0\,
      I4 => sel0(0),
      I5 => \mpx[3]_i_6_n_0\,
      O => comma_i_1_n_0
    );
comma_reg: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => comma_i_1_n_0,
      Q => comma,
      R => '0'
    );
\count_in[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count_in_reg(0),
      I1 => phase,
      O => \count_in[0]_i_1_n_0\
    );
\count_in[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => count_in_reg(1),
      I1 => phase,
      I2 => count_in_reg(0),
      O => \p_0_in__4\(1)
    );
\count_in[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => count_in_reg(2),
      I1 => count_in_reg(0),
      I2 => phase,
      I3 => count_in_reg(1),
      O => \p_0_in__4\(2)
    );
\count_in[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => count_in_reg(3),
      I1 => count_in_reg(2),
      I2 => count_in_reg(0),
      I3 => phase,
      I4 => count_in_reg(1),
      O => \count_in[3]_i_1_n_0\
    );
\count_in[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF7FFF8000"
    )
        port map (
      I0 => count_in_reg(3),
      I1 => count_in_reg(1),
      I2 => count_in_reg(0),
      I3 => count_in_reg(2),
      I4 => count_in_reg(4),
      I5 => phase,
      O => \p_0_in__4\(4)
    );
\count_in[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_in_reg(5),
      I1 => \count_in[8]_i_4_n_0\,
      O => \p_0_in__4\(5)
    );
\count_in[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_in_reg(6),
      I1 => \count_in[8]_i_4_n_0\,
      I2 => count_in_reg(5),
      O => \p_0_in__4\(6)
    );
\count_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_in_reg(7),
      I1 => count_in_reg(5),
      I2 => \count_in[8]_i_4_n_0\,
      I3 => count_in_reg(6),
      O => \p_0_in__4\(7)
    );
\count_in[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => small_count_reg(3),
      I1 => small_count_reg(0),
      I2 => small_count_reg(1),
      I3 => small_count_reg(2),
      O => rxclk_rd_1
    );
\count_in[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_in_reg(8),
      I1 => count_in_reg(7),
      I2 => count_in_reg(6),
      I3 => \count_in[8]_i_4_n_0\,
      I4 => count_in_reg(5),
      O => \p_0_in__4\(8)
    );
\count_in[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000000000"
    )
        port map (
      I0 => count_in_reg(2),
      I1 => count_in_reg(0),
      I2 => count_in_reg(1),
      I3 => count_in_reg(3),
      I4 => phase,
      I5 => count_in_reg(4),
      O => \count_in[8]_i_4_n_0\
    );
\count_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \count_in[0]_i_1_n_0\,
      Q => count_in_reg(0),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(1),
      Q => count_in_reg(1),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(2),
      Q => count_in_reg(2),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \count_in[3]_i_1_n_0\,
      Q => count_in_reg(3),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(4),
      Q => count_in_reg(4),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(5),
      Q => count_in_reg(5),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(6),
      Q => count_in_reg(6),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(7),
      Q => count_in_reg(7),
      R => reset_sync_rxclk_div4_n_4
    );
\count_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => rxclk_rd_1,
      D => \p_0_in__4\(8),
      Q => count_in_reg(8),
      R => reset_sync_rxclk_div4_n_4
    );
data_in: unisim.vcomponents.IBUFDS_DIFF_OUT
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => rxp,
      IB => rxn,
      O => rx_data_in_p,
      OB => rx_data_in_n
    );
data_mux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5DFFFFF15100000"
    )
        port map (
      I0 => s_state(3),
      I1 => m_delay_val_int142_out,
      I2 => s_ovflw12_out,
      I3 => dc_inst_n_10,
      I4 => dc_inst_n_28,
      I5 => dc_inst_n_9,
      O => data_mux_i_1_n_0
    );
dc_inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_delay_controller_wrap
     port map (
      CLK => CLK,
      D(3 downto 0) => serdesm(3 downto 0),
      E(0) => p_18_in,
      Q(6 downto 0) => m_delay_val_in(8 downto 2),
      \action_reg[1]_0\(0) => action(1),
      data_mux_reg_0 => dc_inst_n_9,
      data_mux_reg_1 => data_mux_i_1_n_0,
      \data_out_reg[3]_0\(3 downto 0) => mdataoutd(3 downto 0),
      dec_run => dec_run,
      dec_run_reg_0 => dc_inst_n_6,
      dec_run_reg_1 => dec_run_i_1_n_0,
      delay_change_reg_0 => dc_inst_n_5,
      delay_change_reg_1 => delay_change_i_1_n_0,
      inc_run_reg_0 => dc_inst_n_7,
      inc_run_reg_1 => inc_run_i_1_n_0,
      m_delay_val_int142_out => m_delay_val_int142_out,
      \m_delay_val_int_reg[1]_0\ => dc_inst_n_26,
      \m_delay_val_int_reg[1]_1\(0) => reset_sync_rxclk_div4_n_5,
      \m_delay_val_int_reg[5]_0\(6 downto 0) => bt_val(6 downto 0),
      meq_max => meq_max,
      meq_min_reg_0 => dc_inst_n_3,
      mload => mload,
      \msxor_ctd_reg[1]_0\(1 downto 0) => msxor_ctd(1 downto 0),
      \msxor_cti_reg[1]_0\(1 downto 0) => msxor_cti(1 downto 0),
      pd_max => pd_max,
      pd_min => pd_min,
      pd_min_reg_0 => dc_inst_n_10,
      reset_out => local_reset,
      \s_delay_val_int_reg[6]_0\(6 downto 0) => s_delay_val_in(8 downto 2),
      s_ovflw1 => s_ovflw1,
      s_ovflw12_out => s_ovflw12_out,
      \s_state_reg[1]_0\ => dc_inst_n_28,
      \s_state_reg[2]_0\ => dc_inst_n_27,
      \s_state_reg[2]_1\ => dc_inst_n_30,
      \s_state_reg[3]_0\(0) => s_state(3),
      \s_state_reg[3]_1\ => dc_inst_n_29,
      \sdataouta_reg[3]_0\(3 downto 0) => sdataout(3 downto 0),
      \sdataoutc_reg[3]_0\(0) => serdess(0),
      sload => sload,
      sload_reg_0 => sload_i_2_n_0,
      upd_flag_reg_0 => dc_inst_n_4,
      upd_flag_reg_1 => upd_flag_i_1_n_0
    );
dec_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCA8CCCCCCCCCC"
    )
        port map (
      I0 => dec_run,
      I1 => dc_inst_n_6,
      I2 => dc_inst_n_3,
      I3 => s_ovflw1,
      I4 => s_ovflw12_out,
      I5 => dc_inst_n_29,
      O => dec_run_i_1_n_0
    );
delay_change_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFFFFFCFFEE"
    )
        port map (
      I0 => pd_max,
      I1 => dc_inst_n_7,
      I2 => dc_inst_n_4,
      I3 => dc_inst_n_6,
      I4 => dc_inst_n_5,
      I5 => pd_min,
      O => delay_change_i_1_n_0
    );
\dout_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55EE8850F5AAFF"
    )
        port map (
      I0 => rx_data_10b(9),
      I1 => \dout_i[7]_i_2_n_0\,
      I2 => \dout_i[7]_i_3_n_0\,
      I3 => rx_data_10b(8),
      I4 => rx_data_10b(6),
      I5 => rx_data_10b(7),
      O => b3(5)
    );
\dout_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55EE8850F5AAFF"
    )
        port map (
      I0 => rx_data_10b(9),
      I1 => \dout_i[7]_i_3_n_0\,
      I2 => \dout_i[7]_i_2_n_0\,
      I3 => rx_data_10b(8),
      I4 => rx_data_10b(6),
      I5 => rx_data_10b(7),
      O => b3(6)
    );
\dout_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCC883033BBFF"
    )
        port map (
      I0 => \dout_i[7]_i_2_n_0\,
      I1 => rx_data_10b(9),
      I2 => \dout_i[7]_i_3_n_0\,
      I3 => rx_data_10b(6),
      I4 => rx_data_10b(8),
      I5 => rx_data_10b(7),
      O => b3(7)
    );
\dout_i[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rx_data_10b(4),
      I1 => rx_data_10b(2),
      I2 => rx_data_10b(3),
      I3 => rx_data_10b(5),
      O => \dout_i[7]_i_2_n_0\
    );
\dout_i[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_data_10b(4),
      I1 => rx_data_10b(3),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(5),
      O => \dout_i[7]_i_3_n_0\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDA3C33DAAABADB7"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \out\(0)
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101170117177F"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \g0_b0__0_n_0\
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDA5A55BCCCDCDB7"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \out\(1)
    );
\g0_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808080"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDB19967F0F1E5BF"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \out\(2)
    );
\g0_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000080"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \g0_b2__0_n_0\
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCA99697FF01FD3F"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \out\(3)
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF8117FEE9971F"
    )
        port map (
      I0 => rx_data_10b(0),
      I1 => rx_data_10b(1),
      I2 => rx_data_10b(2),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(4),
      I5 => rx_data_10b(5),
      O => \out\(4)
    );
gb0: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_4_to_10
     port map (
      CLK => CLK,
      Q(9 downto 0) => dataout(9 downto 0),
      \loop0[0].dataout_reg[3]_0\(3 downto 0) => mdataoutd(3 downto 0),
      \loop0[0].dataout_reg[9]_0\ => \loop0[0].dataout_reg[9]\,
      reset_out => local_reset
    );
\gcerr.code_err_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88080018001011F"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(4),
      I2 => rx_data_10b(0),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(1),
      I5 => rx_data_10b(2),
      O => \gcerr.code_err_i_10_n_0\
    );
\gcerr.code_err_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88181179117177F"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(4),
      I2 => rx_data_10b(0),
      I3 => rx_data_10b(2),
      I4 => rx_data_10b(1),
      I5 => rx_data_10b(3),
      O => \gcerr.code_err_i_11_n_0\
    );
\gcerr.code_err_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E881E881891F"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(4),
      I2 => rx_data_10b(0),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(1),
      I5 => rx_data_10b(2),
      O => \gcerr.code_err_i_12_n_0\
    );
\gcerr.code_err_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8818917D557577F"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(2),
      I2 => rx_data_10b(1),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(0),
      I5 => rx_data_10b(4),
      O => \gcerr.code_err_i_13_n_0\
    );
\gcerr.code_err_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => \gcerr.code_err_i_4_n_0\,
      I1 => rx_data_10b(8),
      I2 => \gcerr.code_err_i_5_n_0\,
      I3 => rx_data_10b(7),
      I4 => \gcerr.code_err_i_6_n_0\,
      I5 => rx_data_10b(6),
      O => \gcerr.code_err_i_2_n_0\
    );
\gcerr.code_err_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \gcerr.code_err_i_7_n_0\,
      I1 => rx_data_10b(6),
      I2 => rx_data_10b(7),
      I3 => \gcerr.code_err_i_5_n_0\,
      I4 => rx_data_10b(8),
      I5 => \gcerr.code_err_i_8_n_0\,
      O => \gcerr.code_err_i_3_n_0\
    );
\gcerr.code_err_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \gcerr.code_err_i_9_n_0\,
      I1 => rx_data_10b(7),
      I2 => \gcerr.code_err_i_10_n_0\,
      I3 => rx_data_10b(6),
      I4 => \gcerr.code_err_i_11_n_0\,
      O => \gcerr.code_err_i_4_n_0\
    );
\gcerr.code_err_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gcerr.code_err_i_12_n_0\,
      I1 => rx_data_10b(6),
      I2 => \gcerr.code_err_i_11_n_0\,
      O => \gcerr.code_err_i_5_n_0\
    );
\gcerr.code_err_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFA7FFBFFFFFFF"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(4),
      I2 => rx_data_10b(0),
      I3 => rx_data_10b(2),
      I4 => rx_data_10b(1),
      I5 => rx_data_10b(3),
      O => \gcerr.code_err_i_6_n_0\
    );
\gcerr.code_err_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDD7FFFDFD97"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(0),
      I2 => rx_data_10b(1),
      I3 => rx_data_10b(2),
      I4 => rx_data_10b(3),
      I5 => rx_data_10b(4),
      O => \gcerr.code_err_i_7_n_0\
    );
\gcerr.code_err_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \gcerr.code_err_i_12_n_0\,
      I1 => rx_data_10b(7),
      I2 => \gcerr.code_err_i_10_n_0\,
      I3 => rx_data_10b(6),
      I4 => \gcerr.code_err_i_13_n_0\,
      O => \gcerr.code_err_i_8_n_0\
    );
\gcerr.code_err_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E889E899899F"
    )
        port map (
      I0 => rx_data_10b(5),
      I1 => rx_data_10b(4),
      I2 => rx_data_10b(0),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(1),
      I5 => rx_data_10b(2),
      O => \gcerr.code_err_i_9_n_0\
    );
\gcerr.code_err_reg_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gcerr.code_err_i_2_n_0\,
      I1 => \gcerr.code_err_i_3_n_0\,
      O => code_err_i,
      S => rx_data_10b(9)
    );
\gdeni.disp_err_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555A9818115"
    )
        port map (
      I0 => \g0_b1__0_n_0\,
      I1 => rx_data_10b(7),
      I2 => rx_data_10b(6),
      I3 => rx_data_10b(8),
      I4 => rx_data_10b(9),
      I5 => \g0_b0__0_n_0\,
      O => \gdeni.disp_err_i_4_n_0\
    );
\gdeni.disp_err_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF11170000"
    )
        port map (
      I0 => rx_data_10b(7),
      I1 => rx_data_10b(6),
      I2 => rx_data_10b(8),
      I3 => rx_data_10b(9),
      I4 => \g0_b1__0_n_0\,
      I5 => \g0_b0__0_n_0\,
      O => \gdeni.disp_err_i_5_n_0\
    );
\gdeni.disp_err_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333322632262666"
    )
        port map (
      I0 => \g0_b1__0_n_0\,
      I1 => \g0_b0__0_n_0\,
      I2 => rx_data_10b(8),
      I3 => rx_data_10b(9),
      I4 => rx_data_10b(7),
      I5 => rx_data_10b(6),
      O => \gdeni.disp_err_i_6_n_0\
    );
\gdeni.disp_err_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54404040AAAAAAAA"
    )
        port map (
      I0 => \g0_b1__0_n_0\,
      I1 => rx_data_10b(6),
      I2 => rx_data_10b(7),
      I3 => rx_data_10b(9),
      I4 => rx_data_10b(8),
      I5 => \g0_b0__0_n_0\,
      O => \gdeni.disp_err_i_7_n_0\
    );
\gdeni.disp_err_reg_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gdeni.disp_err_reg_i_2_n_0\,
      I1 => \gdeni.disp_err_reg_i_3_n_0\,
      O => \grdni.run_disp_i_reg_0\,
      S => rxrundisp(0)
    );
\gdeni.disp_err_reg_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gdeni.disp_err_i_4_n_0\,
      I1 => \gdeni.disp_err_i_5_n_0\,
      O => \gdeni.disp_err_reg_i_2_n_0\,
      S => \g0_b2__0_n_0\
    );
\gdeni.disp_err_reg_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gdeni.disp_err_i_6_n_0\,
      I1 => \gdeni.disp_err_i_7_n_0\,
      O => \gdeni.disp_err_reg_i_3_n_0\,
      S => \g0_b2__0_n_0\
    );
\grdni.run_disp_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FCF3310030C020"
    )
        port map (
      I0 => rxrundisp(0),
      I1 => \g0_b2__0_n_0\,
      I2 => \grdni.run_disp_i_i_2_n_0\,
      I3 => \g0_b0__0_n_0\,
      I4 => \g0_b1__0_n_0\,
      I5 => \grdni.run_disp_i_i_3_n_0\,
      O => \grdni.run_disp_i_reg\
    );
\grdni.run_disp_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEA8"
    )
        port map (
      I0 => rx_data_10b(9),
      I1 => rx_data_10b(6),
      I2 => rx_data_10b(7),
      I3 => rx_data_10b(8),
      O => \grdni.run_disp_i_i_2_n_0\
    );
\grdni.run_disp_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => rx_data_10b(9),
      I1 => rx_data_10b(6),
      I2 => rx_data_10b(7),
      I3 => rx_data_10b(8),
      O => \grdni.run_disp_i_i_3_n_0\
    );
idelay_cal: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "MASTER",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "DATAIN",
      DELAY_TYPE => "VAR_LOAD",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 312.500000,
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => rxclk_idelay_out,
      CASC_RETURN => rxclk_from_odelay,
      CE => '0',
      CLK => CLK,
      CNTVALUEIN(8 downto 0) => count_in_reg(8 downto 0),
      CNTVALUEOUT(8 downto 0) => NLW_idelay_cal_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAIN => \mdataouta_reg[3]\,
      DATAOUT => rxclk_int,
      EN_VTC => '0',
      IDATAIN => '0',
      INC => '0',
      LOAD => '1',
      RST => reset_sync
    );
idelay_m: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "VAR_LOAD",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 312.500000,
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_idelay_m_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_idelay_m_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => CLK,
      CNTVALUEIN(8 downto 2) => m_delay_val_in(8 downto 2),
      CNTVALUEIN(1 downto 0) => B"00",
      CNTVALUEOUT(8 downto 0) => m_delay_val_out(8 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_in_md,
      EN_VTC => '0',
      IDATAIN => rx_data_in_p,
      INC => '0',
      LOAD => mload,
      RST => reset_sync
    );
idelay_s: unisim.vcomponents.IDELAYE3
    generic map(
      CASCADE => "NONE",
      DELAY_FORMAT => "COUNT",
      DELAY_SRC => "IDATAIN",
      DELAY_TYPE => "VAR_LOAD",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      LOOPBACK => "FALSE",
      REFCLK_FREQUENCY => 312.500000,
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => '0',
      CASC_OUT => NLW_idelay_s_CASC_OUT_UNCONNECTED,
      CASC_RETURN => NLW_idelay_s_CASC_RETURN_UNCONNECTED,
      CE => '0',
      CLK => CLK,
      CNTVALUEIN(8 downto 2) => s_delay_val_in(8 downto 2),
      CNTVALUEIN(1 downto 0) => B"00",
      CNTVALUEOUT(8 downto 0) => s_delay_val_out(8 downto 0),
      DATAIN => '0',
      DATAOUT => rx_data_in_sd,
      EN_VTC => '0',
      IDATAIN => rx_data_in_n,
      INC => '0',
      LOAD => sload,
      RST => reset_sync
    );
inc_run_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB0800BBBB0000"
    )
        port map (
      I0 => dec_run,
      I1 => dc_inst_n_29,
      I2 => dc_inst_n_5,
      I3 => pd_max,
      I4 => dc_inst_n_7,
      I5 => meq_max,
      O => inc_run_i_1_n_0
    );
iserdes_m: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 4,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "FALSE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => \mdataouta_reg[3]\,
      CLKDIV => CLK,
      CLK_B => not_rxclk,
      D => rx_data_in_md,
      FIFO_EMPTY => NLW_iserdes_m_FIFO_EMPTY_UNCONNECTED,
      FIFO_RD_CLK => '0',
      FIFO_RD_EN => '0',
      INTERNAL_DIVCLK => NLW_iserdes_m_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => serdesm(7 downto 0),
      RST => local_reset
    );
iserdes_s: unisim.vcomponents.ISERDESE3
    generic map(
      DATA_WIDTH => 4,
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      FIFO_ENABLE => "FALSE",
      FIFO_SYNC_MODE => "FALSE",
      IDDR_MODE => "FALSE",
      IS_CLK_B_INVERTED => '1',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => \mdataouta_reg[3]\,
      CLKDIV => CLK,
      CLK_B => not_rxclk,
      D => rx_data_in_sd,
      FIFO_EMPTY => NLW_iserdes_s_FIFO_EMPTY_UNCONNECTED,
      FIFO_RD_CLK => '0',
      FIFO_RD_EN => '0',
      INTERNAL_DIVCLK => NLW_iserdes_s_INTERNAL_DIVCLK_UNCONNECTED,
      Q(7 downto 0) => serdess(7 downto 0),
      RST => local_reset
    );
kout_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F10101010000000F"
    )
        port map (
      I0 => rx_data_10b(8),
      I1 => rx_data_10b(7),
      I2 => rx_data_10b(5),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(2),
      I5 => rx_data_10b(4),
      O => kout_i_i_2_n_0
    );
kout_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00000008080808F"
    )
        port map (
      I0 => rx_data_10b(7),
      I1 => rx_data_10b(8),
      I2 => rx_data_10b(5),
      I3 => rx_data_10b(3),
      I4 => rx_data_10b(2),
      I5 => rx_data_10b(4),
      O => kout_i_i_3_n_0
    );
kout_i_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => kout_i_i_2_n_0,
      I1 => kout_i_i_3_n_0,
      O => k,
      S => rx_data_10b(9)
    );
\mpx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0E0E0F0F0E0F"
    )
        port map (
      I0 => \mpx[0]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \mpx[0]_i_4_n_0\,
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \mpx[0]_i_1_n_0\
    );
\mpx[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(7),
      O => \mpx[0]_i_2_n_0\
    );
\mpx[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[0]_i_5_n_0\,
      I1 => data9(5),
      I2 => data9(4),
      O => sel0(3)
    );
\mpx[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAAEE"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => sel0(7),
      I4 => sel0(4),
      O => \mpx[0]_i_4_n_0\
    );
\mpx[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[0]_i_6_n_0\,
      I1 => \mpx[0]_i_7_n_0\,
      I2 => data9(2),
      I3 => data9(3),
      I4 => data9(1),
      I5 => data9(0),
      O => \mpx[0]_i_5_n_0\
    );
\mpx[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[6]\,
      I1 => \rxdh_reg_n_0_[5]\,
      I2 => \rxdh_reg_n_0_[8]\,
      I3 => \rxdh_reg_n_0_[7]\,
      O => \mpx[0]_i_6_n_0\
    );
\mpx[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[6]\,
      I1 => \rxdh_reg_n_0_[5]\,
      I2 => \rxdh_reg_n_0_[8]\,
      I3 => \rxdh_reg_n_0_[7]\,
      O => \mpx[0]_i_7_n_0\
    );
\mpx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EEEE0000FFFE"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \mpx[1]_i_4_n_0\,
      I5 => \mpx[3]_i_5_n_0\,
      O => \mpx[1]_i_1_n_0\
    );
\mpx[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[3]\,
      I1 => \rxdh_reg_n_0_[2]\,
      I2 => \rxdh_reg_n_0_[5]\,
      I3 => \rxdh_reg_n_0_[4]\,
      O => \mpx[1]_i_10_n_0\
    );
\mpx[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[4]\,
      I1 => \rxdh_reg_n_0_[3]\,
      I2 => \rxdh_reg_n_0_[6]\,
      I3 => \rxdh_reg_n_0_[5]\,
      O => \mpx[1]_i_11_n_0\
    );
\mpx[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[4]\,
      I1 => \rxdh_reg_n_0_[3]\,
      I2 => \rxdh_reg_n_0_[6]\,
      I3 => \rxdh_reg_n_0_[5]\,
      O => \mpx[1]_i_12_n_0\
    );
\mpx[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000000000000A0"
    )
        port map (
      I0 => \mpx[1]_i_15_n_0\,
      I1 => \mpx[1]_i_16_n_0\,
      I2 => \rxdh_reg_n_0_[7]\,
      I3 => \rxdh_reg_n_0_[6]\,
      I4 => \rxdh_reg_n_0_[5]\,
      I5 => \rxdh_reg_n_0_[4]\,
      O => \mpx[1]_i_13_n_0\
    );
\mpx[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000000000000A0"
    )
        port map (
      I0 => \mpx[1]_i_17_n_0\,
      I1 => \mpx[1]_i_18_n_0\,
      I2 => \rxdh_reg_n_0_[8]\,
      I3 => \rxdh_reg_n_0_[7]\,
      I4 => \rxdh_reg_n_0_[6]\,
      I5 => \rxdh_reg_n_0_[5]\,
      O => \mpx[1]_i_14_n_0\
    );
\mpx[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[1]\,
      I1 => \rxdh_reg_n_0_[0]\,
      I2 => \rxdh_reg_n_0_[3]\,
      I3 => \rxdh_reg_n_0_[2]\,
      O => \mpx[1]_i_15_n_0\
    );
\mpx[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[1]\,
      I1 => \rxdh_reg_n_0_[0]\,
      I2 => \rxdh_reg_n_0_[3]\,
      I3 => \rxdh_reg_n_0_[2]\,
      O => \mpx[1]_i_16_n_0\
    );
\mpx[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[2]\,
      I1 => \rxdh_reg_n_0_[1]\,
      I2 => \rxdh_reg_n_0_[4]\,
      I3 => \rxdh_reg_n_0_[3]\,
      O => \mpx[1]_i_17_n_0\
    );
\mpx[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[2]\,
      I1 => \rxdh_reg_n_0_[1]\,
      I2 => \rxdh_reg_n_0_[4]\,
      I3 => \rxdh_reg_n_0_[3]\,
      O => \mpx[1]_i_18_n_0\
    );
\mpx[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[1]_i_5_n_0\,
      I1 => data9(2),
      I2 => data9(1),
      O => sel0(6)
    );
\mpx[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[1]_i_6_n_0\,
      I1 => data9(3),
      I2 => data9(2),
      O => sel0(5)
    );
\mpx[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(7),
      O => \mpx[1]_i_4_n_0\
    );
\mpx[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[1]_i_9_n_0\,
      I1 => \mpx[1]_i_10_n_0\,
      I2 => \rxdh_reg_n_0_[8]\,
      I3 => data9(0),
      I4 => \rxdh_reg_n_0_[7]\,
      I5 => \rxdh_reg_n_0_[6]\,
      O => \mpx[1]_i_5_n_0\
    );
\mpx[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[1]_i_11_n_0\,
      I1 => \mpx[1]_i_12_n_0\,
      I2 => data9(0),
      I3 => data9(1),
      I4 => \rxdh_reg_n_0_[8]\,
      I5 => \rxdh_reg_n_0_[7]\,
      O => \mpx[1]_i_6_n_0\
    );
\mpx[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[1]_i_13_n_0\,
      I1 => data9(0),
      I2 => \rxdh_reg_n_0_[8]\,
      O => sel0(8)
    );
\mpx[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[1]_i_14_n_0\,
      I1 => data9(1),
      I2 => data9(0),
      O => sel0(7)
    );
\mpx[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[3]\,
      I1 => \rxdh_reg_n_0_[2]\,
      I2 => \rxdh_reg_n_0_[5]\,
      I3 => \rxdh_reg_n_0_[4]\,
      O => \mpx[1]_i_9_n_0\
    );
\mpx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => \mpx[3]_i_5_n_0\,
      I3 => \mpx[3]_i_7_n_0\,
      O => \mpx[2]_i_1_n_0\
    );
\mpx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => \mpx[3]_i_5_n_0\,
      I3 => \mpx[3]_i_6_n_0\,
      I4 => \mpx[3]_i_7_n_0\,
      I5 => sel0(0),
      O => mpx0
    );
\mpx[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000000000000A0"
    )
        port map (
      I0 => \mpx[3]_i_16_n_0\,
      I1 => \mpx[3]_i_17_n_0\,
      I2 => data9(5),
      I3 => data9(4),
      I4 => data9(3),
      I5 => data9(2),
      O => \mpx[3]_i_10_n_0\
    );
\mpx[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[3]_i_18_n_0\,
      I1 => data9(4),
      I2 => data9(3),
      O => sel0(4)
    );
\mpx[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[3]_i_19_n_0\,
      I1 => \mpx[3]_i_20_n_0\,
      I2 => data9(6),
      I3 => data9(7),
      I4 => data9(5),
      I5 => data9(4),
      O => \mpx[3]_i_12_n_0\
    );
\mpx[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000000000000A0"
    )
        port map (
      I0 => \mpx[3]_i_21_n_0\,
      I1 => \mpx[3]_i_22_n_0\,
      I2 => data9(6),
      I3 => data9(5),
      I4 => data9(4),
      I5 => data9(3),
      O => \mpx[3]_i_13_n_0\
    );
\mpx[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[7]\,
      I1 => \rxdh_reg_n_0_[6]\,
      I2 => data9(0),
      I3 => \rxdh_reg_n_0_[8]\,
      O => \mpx[3]_i_14_n_0\
    );
\mpx[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[7]\,
      I1 => \rxdh_reg_n_0_[6]\,
      I2 => data9(0),
      I3 => \rxdh_reg_n_0_[8]\,
      O => \mpx[3]_i_15_n_0\
    );
\mpx[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[8]\,
      I1 => \rxdh_reg_n_0_[7]\,
      I2 => data9(1),
      I3 => data9(0),
      O => \mpx[3]_i_16_n_0\
    );
\mpx[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[8]\,
      I1 => \rxdh_reg_n_0_[7]\,
      I2 => data9(1),
      I3 => data9(0),
      O => \mpx[3]_i_17_n_0\
    );
\mpx[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[3]_i_23_n_0\,
      I1 => \mpx[3]_i_24_n_0\,
      I2 => data9(1),
      I3 => data9(2),
      I4 => data9(0),
      I5 => \rxdh_reg_n_0_[8]\,
      O => \mpx[3]_i_18_n_0\
    );
\mpx[3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => data9(1),
      I1 => data9(0),
      I2 => data9(3),
      I3 => data9(2),
      O => \mpx[3]_i_19_n_0\
    );
\mpx[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => \mpx[3]_i_5_n_0\,
      I3 => \mpx[3]_i_7_n_0\,
      O => \mpx[3]_i_2_n_0\
    );
\mpx[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data9(1),
      I1 => data9(0),
      I2 => data9(3),
      I3 => data9(2),
      O => \mpx[3]_i_20_n_0\
    );
\mpx[3]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data9(0),
      I1 => \rxdh_reg_n_0_[8]\,
      I2 => data9(2),
      I3 => data9(1),
      O => \mpx[3]_i_21_n_0\
    );
\mpx[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => data9(0),
      I1 => \rxdh_reg_n_0_[8]\,
      I2 => data9(2),
      I3 => data9(1),
      O => \mpx[3]_i_22_n_0\
    );
\mpx[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rxdh_reg_n_0_[5]\,
      I1 => \rxdh_reg_n_0_[4]\,
      I2 => \rxdh_reg_n_0_[7]\,
      I3 => \rxdh_reg_n_0_[6]\,
      O => \mpx[3]_i_23_n_0\
    );
\mpx[3]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \rxdh_reg_n_0_[5]\,
      I1 => \rxdh_reg_n_0_[4]\,
      I2 => \rxdh_reg_n_0_[7]\,
      I3 => \rxdh_reg_n_0_[6]\,
      O => \mpx[3]_i_24_n_0\
    );
\mpx[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[3]_i_9_n_0\,
      I1 => data9(6),
      I2 => data9(5),
      O => sel0(2)
    );
\mpx[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[3]_i_10_n_0\,
      I1 => data9(7),
      I2 => data9(6),
      O => sel0(1)
    );
\mpx[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      O => \mpx[3]_i_5_n_0\
    );
\mpx[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[3]_i_12_n_0\,
      I1 => data9(9),
      I2 => data9(8),
      O => \mpx[3]_i_6_n_0\
    );
\mpx[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => \mpx[1]_i_4_n_0\,
      O => \mpx[3]_i_7_n_0\
    );
\mpx[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \mpx[3]_i_13_n_0\,
      I1 => data9(8),
      I2 => data9(7),
      O => sel0(0)
    );
\mpx[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \mpx[3]_i_14_n_0\,
      I1 => \mpx[3]_i_15_n_0\,
      I2 => data9(3),
      I3 => data9(4),
      I4 => data9(2),
      I5 => data9(1),
      O => \mpx[3]_i_9_n_0\
    );
\mpx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => mpx0,
      D => \mpx[0]_i_1_n_0\,
      Q => mpx(0),
      R => '0'
    );
\mpx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => mpx0,
      D => \mpx[1]_i_1_n_0\,
      Q => mpx(1),
      R => '0'
    );
\mpx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => mpx0,
      D => \mpx[2]_i_1_n_0\,
      Q => mpx(2),
      R => '0'
    );
\mpx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => mpx0,
      D => \mpx[3]_i_2_n_0\,
      Q => mpx(3),
      R => '0'
    );
odelay_cal: unisim.vcomponents.ODELAYE3
    generic map(
      CASCADE => "SLAVE_END",
      DELAY_FORMAT => "COUNT",
      DELAY_TYPE => "VAR_LOAD",
      DELAY_VALUE => 0,
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REFCLK_FREQUENCY => 312.500000,
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000,
      UPDATE_MODE => "ASYNC"
    )
        port map (
      CASC_IN => rxclk_idelay_out,
      CASC_OUT => NLW_odelay_cal_CASC_OUT_UNCONNECTED,
      CASC_RETURN => '0',
      CE => '0',
      CLK => CLK,
      CNTVALUEIN(8 downto 0) => count_in_reg(8 downto 0),
      CNTVALUEOUT(8 downto 0) => NLW_odelay_cal_CNTVALUEOUT_UNCONNECTED(8 downto 0),
      DATAOUT => rxclk_from_odelay,
      EN_VTC => '0',
      INC => '0',
      LOAD => '1',
      ODATAIN => NLW_odelay_cal_ODATAIN_UNCONNECTED,
      RST => reset_sync
    );
phase_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D8D8F8"
    )
        port map (
      I0 => rxclk_rd_1,
      I1 => phase,
      I2 => phase_reg_n_0,
      I3 => rxclk_r,
      I4 => rxclk_rd,
      O => phase_i_1_n_0
    );
phase_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => phase_i_1_n_0,
      Q => phase_reg_n_0,
      R => local_reset
    );
reset_rxclk_div4: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_3
     port map (
      CLK => CLK,
      reset_out => reset_sync_2,
      reset_sync6_0 => reset_sync
    );
reset_rxclk_div4_1: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      CLK => CLK,
      reset_in => reset_in,
      reset_out => reset_sync_1
    );
reset_rxclk_div4_2: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      CLK => CLK,
      reset_out => reset_sync_1,
      reset_sync6_0 => reset_sync_2
    );
reset_sync_rxclk_div4: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_6
     port map (
      CLK => CLK,
      E(0) => temp_0,
      Q(3 downto 0) => small_count_reg(3 downto 0),
      SR(0) => reset_sync_rxclk_div4_n_4,
      \bt_val_rawa_reg[3]\(0) => reset_sync_rxclk_div4_n_5,
      \count_in_reg[0]\ => phase_reg_n_0,
      \m_delay_val_int_reg[1]\(0) => bt_val(2),
      \m_delay_val_int_reg[1]_0\ => dc_inst_n_26,
      phase => phase,
      reset_in => reset_in,
      reset_out => local_reset,
      reset_sync6_0(0) => p_18_in,
      rxclk_int => rxclk_int,
      rxclk_r => rxclk_r,
      rxclk_r_reg => reset_sync_rxclk_div4_n_0,
      rxclk_r_reg_0 => reset_sync_rxclk_div4_n_2,
      rxclk_rd => rxclk_rd,
      rxclk_rd_1 => rxclk_rd_1
    );
rxclk_r_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => reset_sync_rxclk_div4_n_0,
      Q => rxclk_r,
      R => '0'
    );
rxclk_rd_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => reset_sync_rxclk_div4_n_2,
      Q => rxclk_rd,
      R => '0'
    );
\rxdh_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(1),
      Q => \rxdh_reg_n_0_[0]\,
      R => '0'
    );
\rxdh_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(0),
      Q => data9(1),
      R => '0'
    );
\rxdh_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(1),
      Q => data9(2),
      R => '0'
    );
\rxdh_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(2),
      Q => data9(3),
      R => '0'
    );
\rxdh_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(3),
      Q => data9(4),
      R => '0'
    );
\rxdh_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(4),
      Q => data9(5),
      R => '0'
    );
\rxdh_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(5),
      Q => data9(6),
      R => '0'
    );
\rxdh_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(6),
      Q => data9(7),
      R => '0'
    );
\rxdh_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(7),
      Q => data9(8),
      R => '0'
    );
\rxdh_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(8),
      Q => data9(9),
      R => '0'
    );
\rxdh_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => dataout(9),
      Q => \rxdh_reg_n_0_[19]\,
      R => '0'
    );
\rxdh_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(2),
      Q => \rxdh_reg_n_0_[1]\,
      R => '0'
    );
\rxdh_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(3),
      Q => \rxdh_reg_n_0_[2]\,
      R => '0'
    );
\rxdh_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(4),
      Q => \rxdh_reg_n_0_[3]\,
      R => '0'
    );
\rxdh_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(5),
      Q => \rxdh_reg_n_0_[4]\,
      R => '0'
    );
\rxdh_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(6),
      Q => \rxdh_reg_n_0_[5]\,
      R => '0'
    );
\rxdh_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(7),
      Q => \rxdh_reg_n_0_[6]\,
      R => '0'
    );
\rxdh_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(8),
      Q => \rxdh_reg_n_0_[7]\,
      R => '0'
    );
\rxdh_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => data9(9),
      Q => \rxdh_reg_n_0_[8]\,
      R => '0'
    );
\rxdh_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => \rxdh_reg_n_0_[19]\,
      Q => data9(0),
      R => '0'
    );
\sdataouta[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serdess(0),
      O => sdataout(0)
    );
\sdataouta[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serdess(1),
      O => sdataout(1)
    );
\sdataouta[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serdess(2),
      O => sdataout(2)
    );
\sdataouta[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => serdess(3),
      O => sdataout(3)
    );
sload_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AAA8A8FFFF"
    )
        port map (
      I0 => dc_inst_n_30,
      I1 => dc_inst_n_3,
      I2 => dc_inst_n_6,
      I3 => m_delay_val_int142_out,
      I4 => s_ovflw1,
      I5 => s_ovflw12_out,
      O => sload_i_2_n_0
    );
\small_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => small_count_reg(0),
      O => \p_0_in__3\(0)
    );
\small_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => small_count_reg(0),
      I1 => small_count_reg(1),
      O => \p_0_in__3\(1)
    );
\small_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => small_count_reg(2),
      I1 => small_count_reg(1),
      I2 => small_count_reg(0),
      O => \p_0_in__3\(2)
    );
\small_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => small_count_reg(3),
      I1 => small_count_reg(0),
      I2 => small_count_reg(1),
      I3 => small_count_reg(2),
      O => \p_0_in__3\(3)
    );
\small_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__3\(0),
      Q => small_count_reg(0),
      R => local_reset
    );
\small_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__3\(1),
      Q => small_count_reg(1),
      R => local_reset
    );
\small_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__3\(2),
      Q => small_count_reg(2),
      R => local_reset
    );
\small_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__3\(3),
      Q => small_count_reg(3),
      R => local_reset
    );
\temp[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000DD0"
    )
        port map (
      I0 => \temp[7]_i_3_n_0\,
      I1 => \temp[7]_i_4_n_0\,
      I2 => rxclk_rd,
      I3 => rxclk_r,
      I4 => phase_reg_n_0,
      O => phase
    );
\temp[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => count_in_reg(1),
      I1 => count_in_reg(2),
      I2 => count_in_reg(0),
      I3 => count_in_reg(3),
      O => \temp[7]_i_3_n_0\
    );
\temp[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_in_reg(8),
      I1 => count_in_reg(5),
      I2 => count_in_reg(6),
      I3 => count_in_reg(7),
      I4 => count_in_reg(4),
      O => \temp[7]_i_4_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(0),
      Q => temp(0),
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(1),
      Q => temp(1),
      R => '0'
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(2),
      Q => temp(2),
      R => '0'
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(3),
      Q => temp(3),
      R => '0'
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(4),
      Q => temp(4),
      R => '0'
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(5),
      Q => temp(5),
      R => '0'
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(6),
      Q => temp(6),
      R => '0'
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_0,
      D => count_in_reg(7),
      Q => temp(7),
      R => '0'
    );
upd_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3733373705000505"
    )
        port map (
      I0 => s_ovflw12_out,
      I1 => dc_inst_n_27,
      I2 => dc_inst_n_6,
      I3 => dc_inst_n_5,
      I4 => pd_min,
      I5 => dc_inst_n_4,
      O => upd_flag_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen is
  port (
    rst_125_out : out STD_LOGIC;
    tx_rst : out STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    mgt_tx_reset : in STD_LOGIC;
    mmcm_locked_out : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen : entity is "gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen is
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_1250_n_0 : STD_LOGIC;
  signal \^rst_125_out\ : STD_LOGIC;
  signal rst_dly : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of rst_dly : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \rst_dly_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \rst_dly_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_dly_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rst_dly_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_dly_reg[2]\ : label is std.standard.true;
  attribute KEEP of \rst_dly_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_dly_reg[3]\ : label is std.standard.true;
  attribute KEEP of \rst_dly_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_dly_reg[4]\ : label is std.standard.true;
  attribute KEEP of \rst_dly_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \rst_dly_reg[5]\ : label is std.standard.true;
  attribute KEEP of \rst_dly_reg[5]\ : label is "yes";
begin
  rst_125_out <= \^rst_125_out\;
\reset_sync1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_125_out\,
      I1 => mgt_tx_reset,
      O => tx_rst
    );
rst_1250: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rst_dly(1),
      I1 => rst_dly(0),
      I2 => rst_dly(4),
      I3 => rst_dly(5),
      I4 => rst_dly(2),
      I5 => rst_dly(3),
      O => rst_1250_n_0
    );
rst_125_reg: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_1250_n_0,
      Q => \^rst_125_out\,
      R => '0'
    );
\rst_dly_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => p_1_out(0),
      PRE => reset,
      Q => rst_dly(0)
    );
\rst_dly_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_dly(0),
      PRE => reset,
      Q => rst_dly(1)
    );
\rst_dly_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_dly(1),
      PRE => reset,
      Q => rst_dly(2)
    );
\rst_dly_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_dly(2),
      PRE => reset,
      Q => rst_dly(3)
    );
\rst_dly_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_dly(3),
      PRE => reset,
      Q => rst_dly(4)
    );
\rst_dly_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rst_dly(4),
      PRE => reset,
      Q => rst_dly(5)
    );
sync_block_mmcm_locked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      D(0) => p_1_out(0),
      data_sync_reg1_0 => data_sync_reg1,
      mmcm_locked_out => mmcm_locked_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GPCS_PMA_GEN is
  port (
    MGT_RX_RESET : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 12 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_er : out STD_LOGIC;
    txchardispmode : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an_interrupt : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    rxnotintable : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrundisp : in STD_LOGIC_VECTOR ( 0 to 0 );
    an_restart_config : in STD_LOGIC;
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_GPCS_PMA_GEN : entity is "GPCS_PMA_GEN";
end gig_ethernet_pcs_pma_0_GPCS_PMA_GEN;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GPCS_PMA_GEN is
  signal ABILITY_MATCH : STD_LOGIC;
  signal ABILITY_MATCH_2 : STD_LOGIC;
  signal ACKNOWLEDGE_MATCH_3 : STD_LOGIC;
  signal AN_ENABLE_INT : STD_LOGIC;
  signal BASEX_REMOTE_FAULT_RSLVD : STD_LOGIC_VECTOR ( 1 to 1 );
  signal CONFIG_REG_MATCH_COMB : STD_LOGIC;
  signal D : STD_LOGIC;
  signal DUPLEX_MODE_RSLVD_REG : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42\ : STD_LOGIC;
  signal \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43\ : STD_LOGIC;
  signal IDLE_MATCH0 : STD_LOGIC;
  signal IDLE_MATCH_2 : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\ : STD_LOGIC;
  signal K28p5_REG1 : STD_LOGIC;
  signal LOOPBACK_INT : STD_LOGIC;
  signal LP_ADV_ABILITY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \MGT_RESET.SYNC_ASYNC_RESET_n_0\ : STD_LOGIC;
  signal \^mgt_rx_reset\ : STD_LOGIC;
  signal MGT_RX_RESET_INT : STD_LOGIC;
  signal \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RECEIVE : STD_LOGIC;
  signal RECEIVED_IDLE : STD_LOGIC;
  signal RESET_INT : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of RESET_INT : signal is "true";
  signal RESET_INT_PIPE : STD_LOGIC;
  attribute async_reg of RESET_INT_PIPE : signal is "true";
  signal RESET_INT_PIPE_RXRECCLK : STD_LOGIC;
  attribute async_reg of RESET_INT_PIPE_RXRECCLK : signal is "true";
  signal RESET_INT_PIPE_RXRECCLK0 : STD_LOGIC;
  signal RESET_INT_RXRECCLK : STD_LOGIC;
  attribute async_reg of RESET_INT_RXRECCLK : signal is "true";
  signal RESTART_AN_EN : STD_LOGIC;
  signal RESTART_AN_EN0 : STD_LOGIC;
  signal RESTART_AN_EN_REG : STD_LOGIC;
  signal RESTART_AN_SET : STD_LOGIC;
  signal RXDISPERR_SRL : STD_LOGIC;
  signal RXEVEN : STD_LOGIC;
  signal RXNOTINTABLE_INT : STD_LOGIC;
  signal RXNOTINTABLE_SRL : STD_LOGIC;
  signal RXRECRESET : STD_LOGIC;
  attribute async_reg of RXRECRESET : signal is "true";
  signal RXRECRESET_PIPE : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE : signal is "true";
  signal RXRECRESET_PIPE_1 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_1 : signal is "true";
  signal RXRECRESET_PIPE_2 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_2 : signal is "true";
  signal RXRECRESET_PIPE_3 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_3 : signal is "true";
  signal RXRUNDISP_INT : STD_LOGIC;
  signal RXSYNC_STATUS : STD_LOGIC;
  signal RX_CONFIG_REG : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal RX_CONFIG_VALID : STD_LOGIC;
  signal RX_DV0 : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4\ : STD_LOGIC;
  signal RX_IDLE : STD_LOGIC;
  signal RX_INVALID : STD_LOGIC;
  signal RX_RUDI_INVALID : STD_LOGIC;
  signal S2 : STD_LOGIC;
  signal SIGNAL_DETECT_MOD : STD_LOGIC;
  signal SOFT_RESET_RXRECCLK : STD_LOGIC;
  signal SOP_REG3 : STD_LOGIC;
  signal SRESET : STD_LOGIC;
  attribute async_reg of SRESET : signal is "true";
  signal SRESET_PIPE : STD_LOGIC;
  attribute async_reg of SRESET_PIPE : signal is "true";
  signal STATUS_VECTOR_0_PRE : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal SYNC_STATUS_REG0 : STD_LOGIC;
  signal TX_CONFIG_REG : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\ : STD_LOGIC;
  signal XMIT_CONFIG : STD_LOGIC;
  signal XMIT_DATA : STD_LOGIC;
  signal XMIT_DATA_INT : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "SRL16";
  attribute srl_name : string;
  attribute srl_name of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR ";
  attribute BOX_TYPE of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "SRL16";
  attribute srl_name of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "inst/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE ";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[0]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[10]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[12]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[13]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[2]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[4]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[6]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[8]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_PIPE_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_PIPE_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_RXRECCLK_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_RXRECCLK_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.SRESET_PIPE_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.SRESET_PIPE_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.SRESET_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.SRESET_reg\ : label is "yes";
begin
  MGT_RX_RESET <= \^mgt_rx_reset\;
  Q(0) <= \^q\(0);
\DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => D,
      Q => RXDISPERR_SRL
    );
\DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => RXNOTINTABLE_INT,
      Q => RXNOTINTABLE_SRL
    );
\DELAY_ERROR_TXOUTCLK.RXDISPERR_REG_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXDISPERR_SRL,
      Q => status_vector(5),
      R => '0'
    );
\DELAY_ERROR_TXOUTCLK.RXNOTINTABLE_REG_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXNOTINTABLE_SRL,
      Q => status_vector(6),
      R => '0'
    );
DUPLEX_MODE_RSLVD_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => LP_ADV_ABILITY(12),
      Q => DUPLEX_MODE_RSLVD_REG,
      R => '0'
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      S => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      R => RESET_INT
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      R => RESET_INT
    );
\HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION\: entity work.gig_ethernet_pcs_pma_0_AUTO_NEG
     port map (
      ABILITY_MATCH => ABILITY_MATCH,
      ABILITY_MATCH_2 => ABILITY_MATCH_2,
      ABILITY_MATCH_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11\,
      ABILITY_MATCH_reg_1 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15\,
      ABILITY_MATCH_reg_2 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14\,
      BASEX_REMOTE_FAULT_RSLVD(0) => BASEX_REMOTE_FAULT_RSLVD(1),
      CONFIG_REG_MATCH_COMB => CONFIG_REG_MATCH_COMB,
      CONSISTENCY_MATCH_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32\,
      D(2) => TX_CONFIG_REG(14),
      D(1) => TX_CONFIG_REG(11),
      D(0) => TX_CONFIG_REG(0),
      IDLE_MATCH0 => IDLE_MATCH0,
      IDLE_MATCH_2 => IDLE_MATCH_2,
      \MR_LP_ADV_ABILITY_INT_reg[13]_0\(0) => LP_ADV_ABILITY(12),
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(15 downto 14) => RX_CONFIG_REG(15 downto 14),
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(13) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(12 downto 10) => RX_CONFIG_REG(12 downto 10),
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(9) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(8) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(7) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(6) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(5) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(4) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(3) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(2) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(1) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30\,
      \MR_LP_ADV_ABILITY_INT_reg[16]_0\(0) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31\,
      \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]\ => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13\,
      \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]_0\ => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30\,
      Q(3) => AN_ENABLE_INT,
      Q(2) => \^q\(0),
      Q(1) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2]\,
      Q(0) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0]\,
      RECEIVE => RECEIVE,
      RECEIVED_IDLE => RECEIVED_IDLE,
      RECEIVED_IDLE_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36\,
      RESTART_AN_SET => RESTART_AN_SET,
      RXSYNC_STATUS => RXSYNC_STATUS,
      RX_CONFIG_REG_NULL_reg_0 => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11\,
      RX_CONFIG_REG_NULL_reg_1 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37\,
      \RX_CONFIG_REG_REG_reg[12]_0\ => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16\,
      \RX_CONFIG_REG_REG_reg[13]_0\(10) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17\,
      \RX_CONFIG_REG_REG_reg[13]_0\(9) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18\,
      \RX_CONFIG_REG_REG_reg[13]_0\(8) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19\,
      \RX_CONFIG_REG_REG_reg[13]_0\(7) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20\,
      \RX_CONFIG_REG_REG_reg[13]_0\(6) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21\,
      \RX_CONFIG_REG_REG_reg[13]_0\(5) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22\,
      \RX_CONFIG_REG_REG_reg[13]_0\(4) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23\,
      \RX_CONFIG_REG_REG_reg[13]_0\(3) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24\,
      \RX_CONFIG_REG_REG_reg[13]_0\(2) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25\,
      \RX_CONFIG_REG_REG_reg[13]_0\(1) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26\,
      \RX_CONFIG_REG_REG_reg[13]_0\(0) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27\,
      \RX_CONFIG_REG_REG_reg[3]_0\ => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14\,
      \RX_CONFIG_REG_reg[15]\ => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(7) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(6) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(5) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(4) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(3) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(2) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(1) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42\,
      \RX_CONFIG_SNAPSHOT_reg[13]_0\(0) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43\,
      RX_CONFIG_VALID => RX_CONFIG_VALID,
      RX_DV0 => RX_DV0,
      RX_IDLE => RX_IDLE,
      RX_INVALID => RX_INVALID,
      \RX_RUDI_INVALID_DELAY_reg[0]_0\(0) => RX_RUDI_INVALID,
      SOP_REG3 => SOP_REG3,
      SR(0) => ACKNOWLEDGE_MATCH_3,
      \STATE_reg[2]_0\ => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34\,
      XMIT_CONFIG => XMIT_CONFIG,
      XMIT_DATA => XMIT_DATA,
      XMIT_DATA_INT => XMIT_DATA_INT,
      an_adv_config_vector(0) => an_adv_config_vector(0),
      an_interrupt => an_interrupt,
      \out\ => SRESET,
      status_vector(5) => status_vector(12),
      status_vector(4 downto 1) => status_vector(10 downto 7),
      status_vector(0) => status_vector(4),
      userclk2 => userclk2
    );
\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER\: entity work.gig_ethernet_pcs_pma_0_TX
     port map (
      \CODE_GRP_CNT_reg[0]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\,
      \CODE_GRP_CNT_reg[0]_1\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\,
      D(3) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\,
      D(2) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\,
      D(1) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\,
      D(0) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\,
      \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\,
      \NO_QSGMII_DATA.TXCHARISK_reg_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\,
      \NO_QSGMII_DATA.TXCHARISK_reg_1\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\,
      \NO_QSGMII_DATA.TXDATA_reg[2]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\,
      \NO_QSGMII_DATA.TXDATA_reg[3]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\,
      \NO_QSGMII_DATA.TXDATA_reg[4]_0\ => \^mgt_rx_reset\,
      \NO_QSGMII_DATA.TXDATA_reg[5]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(7) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(6) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(5) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(4) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(3) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(2) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(1) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(0) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\,
      Q(1) => \^q\(0),
      Q(0) => LOOPBACK_INT,
      \TX_CONFIG_reg[14]_0\(2) => TX_CONFIG_REG(14),
      \TX_CONFIG_reg[14]_0\(1) => TX_CONFIG_REG(11),
      \TX_CONFIG_reg[14]_0\(0) => TX_CONFIG_REG(0),
      \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\,
      XMIT_CONFIG => XMIT_CONFIG,
      XMIT_DATA => XMIT_DATA,
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      rxchariscomma(0) => rxchariscomma(0),
      rxcharisk(0) => rxcharisk(0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      userclk2 => userclk2
    );
\MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => RESET_INT_PIPE_RXRECCLK0,
      Q => RESET_INT_PIPE_RXRECCLK
    );
\MGT_RESET.RESET_INT_PIPE_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      Q => RESET_INT_PIPE
    );
\MGT_RESET.RESET_INT_RXRECCLK_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => '0',
      CE => '1',
      D => RESET_INT_PIPE_RXRECCLK,
      PRE => RESET_INT_PIPE_RXRECCLK0,
      Q => RESET_INT_RXRECCLK
    );
\MGT_RESET.RESET_INT_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT_PIPE,
      PRE => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      Q => RESET_INT
    );
\MGT_RESET.SRESET_PIPE_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT,
      Q => SRESET_PIPE,
      R => '0'
    );
\MGT_RESET.SRESET_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => SRESET_PIPE,
      Q => SRESET,
      S => RESET_INT
    );
\MGT_RESET.SYNC_ASYNC_RESET\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block
     port map (
      dcm_locked => dcm_locked,
      reset => reset,
      reset_sync6_0 => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      userclk2 => userclk2
    );
\MGT_RESET.SYNC_ASYNC_RESET_RECCLK\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block_9
     port map (
      RESET_INT_PIPE_RXRECCLK0 => RESET_INT_PIPE_RXRECCLK0,
      dcm_locked => dcm_locked,
      reset => reset,
      reset_out => SOFT_RESET_RXRECCLK
    );
\MGT_RESET.SYNC_SOFT_RESET_RECCLK\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block_10
     port map (
      reset_out => SOFT_RESET_RXRECCLK
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => configuration_vector(0),
      Q => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0]\,
      R => SRESET
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => configuration_vector(1),
      Q => LOOPBACK_INT,
      R => SRESET
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => configuration_vector(2),
      Q => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2]\,
      R => SRESET
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => configuration_vector(3),
      Q => \^q\(0),
      R => SRESET
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => configuration_vector(4),
      Q => AN_ENABLE_INT,
      R => SRESET
    );
\NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_REG_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => an_restart_config,
      Q => RESTART_AN_EN_REG,
      R => SRESET
    );
\NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => an_restart_config,
      I1 => RESTART_AN_EN_REG,
      O => RESTART_AN_EN0
    );
\NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESTART_AN_EN0,
      Q => RESTART_AN_EN,
      R => SRESET
    );
\NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_SET_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESTART_AN_EN,
      Q => RESTART_AN_SET,
      R => SRESET
    );
\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK\: entity work.gig_ethernet_pcs_pma_0_RX
     port map (
      ABILITY_MATCH => ABILITY_MATCH,
      ABILITY_MATCH_2 => ABILITY_MATCH_2,
      ABILITY_MATCH_2_reg => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_15\,
      ABILITY_MATCH_2_reg_0(10) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_17\,
      ABILITY_MATCH_2_reg_0(9) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_18\,
      ABILITY_MATCH_2_reg_0(8) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_19\,
      ABILITY_MATCH_2_reg_0(7) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_20\,
      ABILITY_MATCH_2_reg_0(6) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_21\,
      ABILITY_MATCH_2_reg_0(5) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_22\,
      ABILITY_MATCH_2_reg_0(4) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_23\,
      ABILITY_MATCH_2_reg_0(3) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_24\,
      ABILITY_MATCH_2_reg_0(2) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_25\,
      ABILITY_MATCH_2_reg_0(1) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_26\,
      ABILITY_MATCH_2_reg_0(0) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_27\,
      ABILITY_MATCH_2_reg_1 => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_16\,
      ABILITY_MATCH_reg => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_14\,
      BASEX_REMOTE_FAULT_RSLVD(0) => BASEX_REMOTE_FAULT_RSLVD(1),
      CONFIG_REG_MATCH_COMB => CONFIG_REG_MATCH_COMB,
      CONSISTENCY_MATCH_reg(7) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_36\,
      CONSISTENCY_MATCH_reg(6) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_37\,
      CONSISTENCY_MATCH_reg(5) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_38\,
      CONSISTENCY_MATCH_reg(4) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_39\,
      CONSISTENCY_MATCH_reg(3) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_40\,
      CONSISTENCY_MATCH_reg(2) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_41\,
      CONSISTENCY_MATCH_reg(1) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_42\,
      CONSISTENCY_MATCH_reg(0) => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_43\,
      D => D,
      EXTEND_reg_0 => \RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4\,
      FALSE_CARRIER_i_2_0(3) => AN_ENABLE_INT,
      FALSE_CARRIER_i_2_0(2) => \^q\(0),
      FALSE_CARRIER_i_2_0(1) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2]\,
      FALSE_CARRIER_i_2_0(0) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0]\,
      FALSE_NIT_reg_0 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0\,
      IDLE_MATCH0 => IDLE_MATCH0,
      IDLE_MATCH_2 => IDLE_MATCH_2,
      \IDLE_REG_reg[0]_0\ => \^mgt_rx_reset\,
      K28p5_REG1 => K28p5_REG1,
      Q(7) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\,
      Q(6) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\,
      Q(5) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\,
      Q(4) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\,
      Q(3) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\,
      Q(2) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\,
      Q(1) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\,
      Q(0) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\,
      RECEIVE => RECEIVE,
      RECEIVED_IDLE => RECEIVED_IDLE,
      RXCHARISK_REG1_reg_0 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      RX_CONFIG_REG_NULL_reg => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_11\,
      \RX_CONFIG_REG_reg[12]_0\ => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_32\,
      \RX_CONFIG_REG_reg[15]_0\(15 downto 14) => RX_CONFIG_REG(15 downto 14),
      \RX_CONFIG_REG_reg[15]_0\(13) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_18\,
      \RX_CONFIG_REG_reg[15]_0\(12 downto 10) => RX_CONFIG_REG(12 downto 10),
      \RX_CONFIG_REG_reg[15]_0\(9) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_22\,
      \RX_CONFIG_REG_reg[15]_0\(8) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_23\,
      \RX_CONFIG_REG_reg[15]_0\(7) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_24\,
      \RX_CONFIG_REG_reg[15]_0\(6) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_25\,
      \RX_CONFIG_REG_reg[15]_0\(5) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_26\,
      \RX_CONFIG_REG_reg[15]_0\(4) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_27\,
      \RX_CONFIG_REG_reg[15]_0\(3) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_28\,
      \RX_CONFIG_REG_reg[15]_0\(2) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_29\,
      \RX_CONFIG_REG_reg[15]_0\(1) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_30\,
      \RX_CONFIG_REG_reg[15]_0\(0) => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_31\,
      \RX_CONFIG_REG_reg[6]_0\ => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_15\,
      \RX_CONFIG_REG_reg[8]_0\ => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_14\,
      RX_CONFIG_VALID => RX_CONFIG_VALID,
      RX_CONFIG_VALID_INT_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_11\,
      RX_CONFIG_VALID_INT_reg_1 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_36\,
      RX_CONFIG_VALID_INT_reg_2 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_37\,
      RX_DV0 => RX_DV0,
      RX_ER_reg_0 => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_30\,
      RX_IDLE => RX_IDLE,
      RX_INVALID => RX_INVALID,
      RX_INVALID_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_34\,
      RX_INVALID_reg_1 => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13\,
      S2 => S2,
      SOP_REG3 => SOP_REG3,
      SR(0) => ACKNOWLEDGE_MATCH_3,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      XMIT_DATA => XMIT_DATA,
      XMIT_DATA_INT => XMIT_DATA_INT,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      \out\ => SRESET,
      status_vector(1 downto 0) => status_vector(3 downto 2),
      userclk2 => userclk2
    );
\RX_GMII_AT_TXOUTCLK.SYNCHRONISATION\: entity work.gig_ethernet_pcs_pma_0_SYNCHRONISE
     port map (
      D => D,
      EVEN_reg_0 => \RX_GMII_AT_TXOUTCLK.SYNCHRONISATION_n_4\,
      EVEN_reg_1 => \^mgt_rx_reset\,
      EVEN_reg_2 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\,
      \FSM_onehot_STATE_reg[12]_0\ => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      K28p5_REG1 => K28p5_REG1,
      Q(2) => AN_ENABLE_INT,
      Q(1) => LOOPBACK_INT,
      Q(0) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[0]\,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      RX_INVALID => RX_INVALID,
      S2 => S2,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      SYNC_STATUS_reg_0(0) => RX_RUDI_INVALID,
      XMIT_DATA_INT => XMIT_DATA_INT,
      userclk2 => userclk2
    );
STATUS_VECTOR_0_PRE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \HAS_AUTO_NEG.AN_RX_GMII_AT_TXOUTCLK.AUTO_NEGOTIATION_n_13\,
      Q => STATUS_VECTOR_0_PRE,
      R => '0'
    );
\STATUS_VECTOR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATUS_VECTOR_0_PRE,
      Q => status_vector(0),
      R => '0'
    );
\STATUS_VECTOR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => DUPLEX_MODE_RSLVD_REG,
      Q => status_vector(11),
      R => '0'
    );
\STATUS_VECTOR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_REG,
      Q => status_vector(1),
      R => '0'
    );
SYNC_SIGNAL_DETECT: entity work.gig_ethernet_pcs_pma_0_sync_block
     port map (
      Q(0) => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg_n_0_[2]\,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      signal_detect => signal_detect,
      userclk2 => userclk2
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXSYNC_STATUS,
      Q => SYNC_STATUS_REG,
      R => '0'
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDISPERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr(0),
      Q => D,
      R => RXRUNDISP_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mgt_rx_reset\,
      I1 => LOOPBACK_INT,
      O => RXRUNDISP_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable(0),
      Q => RXNOTINTABLE_INT,
      R => RXRUNDISP_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxrundisp(0),
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXRUNDISP_INT_reg_n_0\,
      R => RXRUNDISP_INT
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0\,
      I1 => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\,
      I2 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      O => MGT_RX_RESET_INT
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      O => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2_n_0\
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      O => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MGT_RX_RESET_INT,
      Q => \^mgt_rx_reset\,
      S => RESET_INT
    );
\USE_ROCKET_IO.TXCHARDISPMODE_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\,
      Q => txchardispmode,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\,
      Q => txchardispval,
      R => '0'
    );
\USE_ROCKET_IO.TXCHARISK_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\,
      Q => txcharisk,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.TXDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\,
      Q => txdata(0),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\,
      Q => txdata(1),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\,
      Q => txdata(2),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\,
      Q => txdata(3),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\,
      Q => txdata(4),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\,
      Q => txdata(5),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\,
      Q => txdata(6),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\,
      Q => txdata(7),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_1
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8 is
  port (
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    reset_sync6 : in STD_LOGIC;
    tx_data_10b : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txp_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    tx_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8 : entity is "gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8 is
  signal dataint : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal local_reset : STD_LOGIC;
  signal tx_data_out : STD_LOGIC;
  signal NLW_oserdes_m_T_OUT_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of io_data_out : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of io_data_out : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of io_data_out : label is "OBUFDS";
  attribute BOX_TYPE of oserdes_m : label is "PRIMITIVE";
begin
gb0: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gearbox_10_to_4
     port map (
      CLK => CLK,
      Q(3 downto 0) => dataint(3 downto 0),
      read_enable_reg_0 => reset_sync6,
      reset_out => local_reset,
      tx_data_10b(9 downto 0) => tx_data_10b(9 downto 0)
    );
io_data_out: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_data_out,
      O => txp,
      OB => txn
    );
oserdes_m: unisim.vcomponents.OSERDESE3
    generic map(
      DATA_WIDTH => 4,
      INIT => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '0',
      ODDR_MODE => "FALSE",
      OSERDES_D_BYPASS => "FALSE",
      OSERDES_T_BYPASS => "FALSE",
      SIM_DEVICE => "ULTRASCALE",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => txp_0,
      CLKDIV => CLK,
      D(7 downto 4) => B"0000",
      D(3 downto 0) => dataint(3 downto 0),
      OQ => tx_data_out,
      RST => local_reset,
      T => '0',
      T_OUT => NLW_oserdes_m_T_OUT_UNCONNECTED
    );
reset_sync_inter_clk: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_7
     port map (
      reset_out => local_reset,
      reset_sync6_0 => reset_sync6,
      tx_rst => tx_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt is
  port (
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_en_reg : out STD_LOGIC;
    gmii_rx_dv_out_reg : out STD_LOGIC;
    gmii_rx_er_out_reg : out STD_LOGIC;
    gmii_tx_en : out STD_LOGIC;
    gmii_tx_er : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en_out_reg : in STD_LOGIC;
    gmii_rx_dv : in STD_LOGIC;
    gmii_rx_er : in STD_LOGIC;
    gmii_tx_en_out_reg_0 : in STD_LOGIC;
    gmii_tx_er_out_reg : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt : entity is "gig_ethernet_pcs_pma_0_sgmii_adapt";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt is
  signal \^sgmii_clk_en_reg\ : STD_LOGIC;
  signal speed_is_100_resync : STD_LOGIC;
  signal speed_is_10_100_resync : STD_LOGIC;
  signal sync_reset : STD_LOGIC;
begin
  sgmii_clk_en_reg <= \^sgmii_clk_en_reg\;
clock_generation: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clk_gen
     port map (
      data_out => speed_is_100_resync,
      reg4_reg => gmii_tx_en_out_reg,
      reset_out => sync_reset,
      sgmii_clk_en_reg_0 => \^sgmii_clk_en_reg\,
      sgmii_clk_f => sgmii_clk_f,
      sgmii_clk_r => sgmii_clk_r,
      speed_is_10_100_fall_reg_0 => speed_is_10_100_resync
    );
gen_sync_reset: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync
     port map (
      reset_in => reset_in,
      reset_out => sync_reset,
      reset_sync6_0 => gmii_tx_en_out_reg
    );
receiver: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_rx_rate_adapt
     port map (
      D(7 downto 0) => D(7 downto 0),
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_dv_out_reg_0 => gmii_rx_dv_out_reg,
      gmii_rx_er => gmii_rx_er,
      gmii_rx_er_out_reg_0 => gmii_rx_er_out_reg,
      gmii_rx_er_out_reg_1 => \^sgmii_clk_en_reg\,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      reset_out => sync_reset,
      rx_er_aligned_reg_0 => gmii_tx_en_out_reg
    );
resync_speed_100: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_out => speed_is_100_resync,
      data_sync_reg6_0 => gmii_tx_en_out_reg,
      speed_is_100 => speed_is_100
    );
resync_speed_10_100: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_1
     port map (
      data_out => speed_is_10_100_resync,
      data_sync_reg1_0 => gmii_tx_en_out_reg,
      speed_is_10_100 => speed_is_10_100
    );
transmitter: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_tx_rate_adapt
     port map (
      E(0) => \^sgmii_clk_en_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_en_out_reg_0 => gmii_tx_en_out_reg_0,
      gmii_tx_en_out_reg_1 => gmii_tx_en_out_reg,
      gmii_tx_er => gmii_tx_er,
      gmii_tx_er_out_reg_0 => gmii_tx_er_out_reg,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      reset_out => sync_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 is
  port (
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    link_timer_value : in STD_LOGIC_VECTOR ( 9 downto 0 );
    link_timer_basex : in STD_LOGIC_VECTOR ( 9 downto 0 );
    link_timer_sgmii : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_gt_nominal_latency : in STD_LOGIC_VECTOR ( 15 downto 0 );
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    mgt_rx_reset : out STD_LOGIC;
    mgt_tx_reset : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    rxbufstatus : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdisperr : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrundisp : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : in STD_LOGIC;
    powerdown : out STD_LOGIC;
    txchardispmode : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enablealign : out STD_LOGIC;
    gtx_clk : in STD_LOGIC;
    tx_code_group : out STD_LOGIC_VECTOR ( 9 downto 0 );
    loc_ref : out STD_LOGIC;
    ewrap : out STD_LOGIC;
    rx_code_group0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_code_group1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pma_rx_clk0 : in STD_LOGIC;
    pma_rx_clk1 : in STD_LOGIC;
    en_cdet : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    an_enable : out STD_LOGIC;
    speed_selection : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phyad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_adv_config_val : in STD_LOGIC;
    an_restart_config : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    basex_or_sgmii : in STD_LOGIC;
    drp_dclk : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    drp_den : out STD_LOGIC;
    drp_dwe : out STD_LOGIC;
    drp_drdy : in STD_LOGIC;
    drp_daddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    drp_di : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_do : in STD_LOGIC_VECTOR ( 15 downto 0 );
    systemtimer_s_field : in STD_LOGIC_VECTOR ( 47 downto 0 );
    systemtimer_ns_field : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correction_timer : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rxrecclk : in STD_LOGIC;
    rxphy_s_field : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rxphy_ns_field : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxphy_correction_timer : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_resetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    reset_done : in STD_LOGIC
  );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "10'b0101001110";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "kintexu";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TRUE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TRUE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "TRUE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "FALSE";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "yes";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 : entity is "gig_ethernet_pcs_pma_v16_1_7";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7 is
  signal \<const0>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  an_enable <= \<const0>\;
  drp_daddr(9) <= \<const0>\;
  drp_daddr(8) <= \<const0>\;
  drp_daddr(7) <= \<const0>\;
  drp_daddr(6) <= \<const0>\;
  drp_daddr(5) <= \<const0>\;
  drp_daddr(4) <= \<const0>\;
  drp_daddr(3) <= \<const0>\;
  drp_daddr(2) <= \<const0>\;
  drp_daddr(1) <= \<const0>\;
  drp_daddr(0) <= \<const0>\;
  drp_den <= \<const0>\;
  drp_di(15) <= \<const0>\;
  drp_di(14) <= \<const0>\;
  drp_di(13) <= \<const0>\;
  drp_di(12) <= \<const0>\;
  drp_di(11) <= \<const0>\;
  drp_di(10) <= \<const0>\;
  drp_di(9) <= \<const0>\;
  drp_di(8) <= \<const0>\;
  drp_di(7) <= \<const0>\;
  drp_di(6) <= \<const0>\;
  drp_di(5) <= \<const0>\;
  drp_di(4) <= \<const0>\;
  drp_di(3) <= \<const0>\;
  drp_di(2) <= \<const0>\;
  drp_di(1) <= \<const0>\;
  drp_di(0) <= \<const0>\;
  drp_dwe <= \<const0>\;
  drp_req <= \<const0>\;
  en_cdet <= \<const0>\;
  enablealign <= \<const0>\;
  ewrap <= \<const0>\;
  loc_ref <= \<const0>\;
  mdio_out <= \<const0>\;
  mdio_tri <= \<const0>\;
  mgt_rx_reset <= \<const0>\;
  powerdown <= \<const0>\;
  rxphy_correction_timer(63) <= \<const0>\;
  rxphy_correction_timer(62) <= \<const0>\;
  rxphy_correction_timer(61) <= \<const0>\;
  rxphy_correction_timer(60) <= \<const0>\;
  rxphy_correction_timer(59) <= \<const0>\;
  rxphy_correction_timer(58) <= \<const0>\;
  rxphy_correction_timer(57) <= \<const0>\;
  rxphy_correction_timer(56) <= \<const0>\;
  rxphy_correction_timer(55) <= \<const0>\;
  rxphy_correction_timer(54) <= \<const0>\;
  rxphy_correction_timer(53) <= \<const0>\;
  rxphy_correction_timer(52) <= \<const0>\;
  rxphy_correction_timer(51) <= \<const0>\;
  rxphy_correction_timer(50) <= \<const0>\;
  rxphy_correction_timer(49) <= \<const0>\;
  rxphy_correction_timer(48) <= \<const0>\;
  rxphy_correction_timer(47) <= \<const0>\;
  rxphy_correction_timer(46) <= \<const0>\;
  rxphy_correction_timer(45) <= \<const0>\;
  rxphy_correction_timer(44) <= \<const0>\;
  rxphy_correction_timer(43) <= \<const0>\;
  rxphy_correction_timer(42) <= \<const0>\;
  rxphy_correction_timer(41) <= \<const0>\;
  rxphy_correction_timer(40) <= \<const0>\;
  rxphy_correction_timer(39) <= \<const0>\;
  rxphy_correction_timer(38) <= \<const0>\;
  rxphy_correction_timer(37) <= \<const0>\;
  rxphy_correction_timer(36) <= \<const0>\;
  rxphy_correction_timer(35) <= \<const0>\;
  rxphy_correction_timer(34) <= \<const0>\;
  rxphy_correction_timer(33) <= \<const0>\;
  rxphy_correction_timer(32) <= \<const0>\;
  rxphy_correction_timer(31) <= \<const0>\;
  rxphy_correction_timer(30) <= \<const0>\;
  rxphy_correction_timer(29) <= \<const0>\;
  rxphy_correction_timer(28) <= \<const0>\;
  rxphy_correction_timer(27) <= \<const0>\;
  rxphy_correction_timer(26) <= \<const0>\;
  rxphy_correction_timer(25) <= \<const0>\;
  rxphy_correction_timer(24) <= \<const0>\;
  rxphy_correction_timer(23) <= \<const0>\;
  rxphy_correction_timer(22) <= \<const0>\;
  rxphy_correction_timer(21) <= \<const0>\;
  rxphy_correction_timer(20) <= \<const0>\;
  rxphy_correction_timer(19) <= \<const0>\;
  rxphy_correction_timer(18) <= \<const0>\;
  rxphy_correction_timer(17) <= \<const0>\;
  rxphy_correction_timer(16) <= \<const0>\;
  rxphy_correction_timer(15) <= \<const0>\;
  rxphy_correction_timer(14) <= \<const0>\;
  rxphy_correction_timer(13) <= \<const0>\;
  rxphy_correction_timer(12) <= \<const0>\;
  rxphy_correction_timer(11) <= \<const0>\;
  rxphy_correction_timer(10) <= \<const0>\;
  rxphy_correction_timer(9) <= \<const0>\;
  rxphy_correction_timer(8) <= \<const0>\;
  rxphy_correction_timer(7) <= \<const0>\;
  rxphy_correction_timer(6) <= \<const0>\;
  rxphy_correction_timer(5) <= \<const0>\;
  rxphy_correction_timer(4) <= \<const0>\;
  rxphy_correction_timer(3) <= \<const0>\;
  rxphy_correction_timer(2) <= \<const0>\;
  rxphy_correction_timer(1) <= \<const0>\;
  rxphy_correction_timer(0) <= \<const0>\;
  rxphy_ns_field(31) <= \<const0>\;
  rxphy_ns_field(30) <= \<const0>\;
  rxphy_ns_field(29) <= \<const0>\;
  rxphy_ns_field(28) <= \<const0>\;
  rxphy_ns_field(27) <= \<const0>\;
  rxphy_ns_field(26) <= \<const0>\;
  rxphy_ns_field(25) <= \<const0>\;
  rxphy_ns_field(24) <= \<const0>\;
  rxphy_ns_field(23) <= \<const0>\;
  rxphy_ns_field(22) <= \<const0>\;
  rxphy_ns_field(21) <= \<const0>\;
  rxphy_ns_field(20) <= \<const0>\;
  rxphy_ns_field(19) <= \<const0>\;
  rxphy_ns_field(18) <= \<const0>\;
  rxphy_ns_field(17) <= \<const0>\;
  rxphy_ns_field(16) <= \<const0>\;
  rxphy_ns_field(15) <= \<const0>\;
  rxphy_ns_field(14) <= \<const0>\;
  rxphy_ns_field(13) <= \<const0>\;
  rxphy_ns_field(12) <= \<const0>\;
  rxphy_ns_field(11) <= \<const0>\;
  rxphy_ns_field(10) <= \<const0>\;
  rxphy_ns_field(9) <= \<const0>\;
  rxphy_ns_field(8) <= \<const0>\;
  rxphy_ns_field(7) <= \<const0>\;
  rxphy_ns_field(6) <= \<const0>\;
  rxphy_ns_field(5) <= \<const0>\;
  rxphy_ns_field(4) <= \<const0>\;
  rxphy_ns_field(3) <= \<const0>\;
  rxphy_ns_field(2) <= \<const0>\;
  rxphy_ns_field(1) <= \<const0>\;
  rxphy_ns_field(0) <= \<const0>\;
  rxphy_s_field(47) <= \<const0>\;
  rxphy_s_field(46) <= \<const0>\;
  rxphy_s_field(45) <= \<const0>\;
  rxphy_s_field(44) <= \<const0>\;
  rxphy_s_field(43) <= \<const0>\;
  rxphy_s_field(42) <= \<const0>\;
  rxphy_s_field(41) <= \<const0>\;
  rxphy_s_field(40) <= \<const0>\;
  rxphy_s_field(39) <= \<const0>\;
  rxphy_s_field(38) <= \<const0>\;
  rxphy_s_field(37) <= \<const0>\;
  rxphy_s_field(36) <= \<const0>\;
  rxphy_s_field(35) <= \<const0>\;
  rxphy_s_field(34) <= \<const0>\;
  rxphy_s_field(33) <= \<const0>\;
  rxphy_s_field(32) <= \<const0>\;
  rxphy_s_field(31) <= \<const0>\;
  rxphy_s_field(30) <= \<const0>\;
  rxphy_s_field(29) <= \<const0>\;
  rxphy_s_field(28) <= \<const0>\;
  rxphy_s_field(27) <= \<const0>\;
  rxphy_s_field(26) <= \<const0>\;
  rxphy_s_field(25) <= \<const0>\;
  rxphy_s_field(24) <= \<const0>\;
  rxphy_s_field(23) <= \<const0>\;
  rxphy_s_field(22) <= \<const0>\;
  rxphy_s_field(21) <= \<const0>\;
  rxphy_s_field(20) <= \<const0>\;
  rxphy_s_field(19) <= \<const0>\;
  rxphy_s_field(18) <= \<const0>\;
  rxphy_s_field(17) <= \<const0>\;
  rxphy_s_field(16) <= \<const0>\;
  rxphy_s_field(15) <= \<const0>\;
  rxphy_s_field(14) <= \<const0>\;
  rxphy_s_field(13) <= \<const0>\;
  rxphy_s_field(12) <= \<const0>\;
  rxphy_s_field(11) <= \<const0>\;
  rxphy_s_field(10) <= \<const0>\;
  rxphy_s_field(9) <= \<const0>\;
  rxphy_s_field(8) <= \<const0>\;
  rxphy_s_field(7) <= \<const0>\;
  rxphy_s_field(6) <= \<const0>\;
  rxphy_s_field(5) <= \<const0>\;
  rxphy_s_field(4) <= \<const0>\;
  rxphy_s_field(3) <= \<const0>\;
  rxphy_s_field(2) <= \<const0>\;
  rxphy_s_field(1) <= \<const0>\;
  rxphy_s_field(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  speed_selection(1) <= \<const0>\;
  speed_selection(0) <= \<const0>\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13 downto 9) <= \^status_vector\(13 downto 9);
  status_vector(8) <= \<const0>\;
  status_vector(7 downto 0) <= \^status_vector\(7 downto 0);
  tx_code_group(9) <= \<const0>\;
  tx_code_group(8) <= \<const0>\;
  tx_code_group(7) <= \<const0>\;
  tx_code_group(6) <= \<const0>\;
  tx_code_group(5) <= \<const0>\;
  tx_code_group(4) <= \<const0>\;
  tx_code_group(3) <= \<const0>\;
  tx_code_group(2) <= \<const0>\;
  tx_code_group(1) <= \<const0>\;
  tx_code_group(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gpcs_pma_inst: entity work.gig_ethernet_pcs_pma_0_GPCS_PMA_GEN
     port map (
      MGT_RX_RESET => mgt_tx_reset,
      Q(0) => gmii_isolate,
      an_adv_config_vector(0) => an_adv_config_vector(11),
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      dcm_locked => dcm_locked,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      reset => reset,
      rxchariscomma(0) => rxchariscomma(0),
      rxcharisk(0) => rxcharisk(0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr(0),
      rxnotintable(0) => rxnotintable(0),
      rxrundisp(0) => rxrundisp(0),
      signal_detect => signal_detect,
      status_vector(12 downto 8) => \^status_vector\(13 downto 9),
      status_vector(7 downto 0) => \^status_vector\(7 downto 0),
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8 is
  port (
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrundisp : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    \mdataouta_reg[3]\ : in STD_LOGIC;
    not_rxclk : in STD_LOGIC;
    \loop0[0].dataout_reg[9]\ : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    tx_rst : in STD_LOGIC;
    txchardispval : in STD_LOGIC;
    txchardispmode : in STD_LOGIC;
    txdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txcharisk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8 : entity is "gig_ethernet_pcs_pma_0_lvds_transceiver_ser8";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8 is
  signal b3 : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal code_err_i : STD_LOGIC;
  signal comma : STD_LOGIC;
  signal k : STD_LOGIC;
  signal \^rxrundisp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal serdes_1_to_10_ser8_i_n_1 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_2 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_3 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_4 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_5 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_6 : STD_LOGIC;
  signal serdes_1_to_10_ser8_i_n_7 : STD_LOGIC;
  signal tx_data_10b : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  rxrundisp(0) <= \^rxrundisp\(0);
decode_8b10b: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_decode_8b10b_lut_base
     port map (
      b3(7 downto 5) => b3(7 downto 5),
      code_err_i => code_err_i,
      \gdeni.disp_err_reg_0\ => serdes_1_to_10_ser8_i_n_7,
      \grdni.run_disp_i_reg_0\ => \loop0[0].dataout_reg[9]\,
      \grdni.run_disp_i_reg_1\ => serdes_1_to_10_ser8_i_n_6,
      k => k,
      \out\(4) => serdes_1_to_10_ser8_i_n_1,
      \out\(3) => serdes_1_to_10_ser8_i_n_2,
      \out\(2) => serdes_1_to_10_ser8_i_n_3,
      \out\(1) => serdes_1_to_10_ser8_i_n_4,
      \out\(0) => serdes_1_to_10_ser8_i_n_5,
      rxcharisk(0) => rxcharisk(0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr(0),
      rxnotintable(0) => rxnotintable(0),
      rxrundisp(0) => \^rxrundisp\(0)
    );
encode_8b10b: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_encode_8b10b_lut_base
     port map (
      \ngdb.disp_run_reg_0\ => \loop0[0].dataout_reg[9]\,
      tx_data_10b(9 downto 0) => tx_data_10b(9 downto 0),
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0)
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => \loop0[0].dataout_reg[9]\,
      CE => '1',
      D => comma,
      Q => rxchariscomma(0),
      R => '0'
    );
serdes_10_to_1_ser8_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_10_to_1_ser8
     port map (
      CLK => CLK,
      reset_sync6 => \loop0[0].dataout_reg[9]\,
      tx_data_10b(9 downto 0) => tx_data_10b(9 downto 0),
      tx_rst => tx_rst,
      txn => txn,
      txp => txp,
      txp_0 => \mdataouta_reg[3]\
    );
serdes_1_to_10_ser8_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_serdes_1_to_10_ser8
     port map (
      CLK => CLK,
      b3(7 downto 5) => b3(7 downto 5),
      code_err_i => code_err_i,
      comma => comma,
      \grdni.run_disp_i_reg\ => serdes_1_to_10_ser8_i_n_6,
      \grdni.run_disp_i_reg_0\ => serdes_1_to_10_ser8_i_n_7,
      k => k,
      \loop0[0].dataout_reg[9]\ => \loop0[0].dataout_reg[9]\,
      \mdataouta_reg[3]\ => \mdataouta_reg[3]\,
      not_rxclk => not_rxclk,
      \out\(4) => serdes_1_to_10_ser8_i_n_1,
      \out\(3) => serdes_1_to_10_ser8_i_n_2,
      \out\(2) => serdes_1_to_10_ser8_i_n_3,
      \out\(1) => serdes_1_to_10_ser8_i_n_4,
      \out\(0) => serdes_1_to_10_ser8_i_n_5,
      reset_in => reset_in,
      rxn => rxn,
      rxp => rxp,
      rxrundisp(0) => \^rxrundisp\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
  port (
    mgt_tx_reset : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 12 downto 0 );
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_en_reg : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_125_out : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    an_restart_config : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    \mdataouta_reg[3]\ : in STD_LOGIC;
    not_rxclk : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    mmcm_locked_out : in STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    tx_rst : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block : entity is "gig_ethernet_pcs_pma_0_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
  signal gmii_rx_dv_int : STD_LOGIC;
  signal gmii_rx_er_int : STD_LOGIC;
  signal gmii_rxd_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_tx_en_int : STD_LOGIC;
  signal gmii_tx_er_int : STD_LOGIC;
  signal gmii_txd_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^mgt_tx_reset\ : STD_LOGIC;
  signal mmcm_locked_sync_125 : STD_LOGIC;
  signal rx_rst : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal rxrundisp : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_enablealign_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mgt_rx_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_powerdown_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_core : label is "10'b0101001110";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_core : label is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_core : label is "kintexu";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0_core : label is "yes";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_core : label is 1;
begin
  mgt_tx_reset <= \^mgt_tx_reset\;
  status_vector(12 downto 0) <= \^status_vector\(12 downto 0);
gig_ethernet_pcs_pma_0_core: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_7
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15 downto 12) => B"0000",
      an_adv_config_vector(11) => an_adv_config_vector(0),
      an_adv_config_vector(10 downto 0) => B"00000000000",
      an_enable => NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED,
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      basex_or_sgmii => '0',
      configuration_valid => '0',
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => mmcm_locked_sync_125,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED,
      enablealign => NLW_gig_ethernet_pcs_pma_0_core_enablealign_UNCONNECTED,
      ewrap => NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv_int,
      gmii_rx_er => gmii_rx_er_int,
      gmii_rxd(7 downto 0) => gmii_rxd_int(7 downto 0),
      gmii_tx_en => gmii_tx_en_int,
      gmii_tx_er => gmii_tx_er_int,
      gmii_txd(7 downto 0) => gmii_txd_int(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0000110010",
      loc_ref => NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED,
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED,
      mgt_rx_reset => NLW_gig_ethernet_pcs_pma_0_core_mgt_rx_reset_UNCONNECTED,
      mgt_tx_reset => \^mgt_tx_reset\,
      phyad(4 downto 0) => B"00000",
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => NLW_gig_ethernet_pcs_pma_0_core_powerdown_UNCONNECTED,
      reset => rst_125_out,
      reset_done => '1',
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011001000",
      rxbufstatus(1 downto 0) => B"00",
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2 downto 0) => B"000",
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => rxrundisp,
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 14) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(15 downto 14),
      status_vector(13 downto 9) => \^status_vector\(12 downto 8),
      status_vector(8) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(8),
      status_vector(7 downto 0) => \^status_vector\(7 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => '0',
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => data_sync_reg1
    );
lvds_transceiver_mw: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_lvds_transceiver_ser8
     port map (
      CLK => CLK,
      \loop0[0].dataout_reg[9]\ => data_sync_reg1,
      \mdataouta_reg[3]\ => \mdataouta_reg[3]\,
      not_rxclk => not_rxclk,
      reset_in => rx_rst,
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxn => rxn,
      rxnotintable(0) => rxnotintable,
      rxp => rxp,
      rxrundisp(0) => rxrundisp,
      tx_rst => tx_rst,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      txn => txn,
      txp => txp
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer
     port map (
      reset_in => rx_rst,
      reset_reg_0 => data_sync_reg1,
      reset_sync5 => \^mgt_tx_reset\,
      rst_125_out => rst_125_out,
      status_vector(0) => \^status_vector\(1)
    );
sgmii_logic: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_adapt
     port map (
      D(7 downto 0) => gmii_rxd_int(7 downto 0),
      Q(7 downto 0) => gmii_txd_int(7 downto 0),
      gmii_rx_dv => gmii_rx_dv_int,
      gmii_rx_dv_out_reg => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er_int,
      gmii_rx_er_out_reg => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en_int,
      gmii_tx_en_out_reg => data_sync_reg1,
      gmii_tx_en_out_reg_0 => gmii_tx_en,
      gmii_tx_er => gmii_tx_er_int,
      gmii_tx_er_out_reg => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      reset_in => \^mgt_tx_reset\,
      sgmii_clk_en_reg => sgmii_clk_en_reg,
      sgmii_clk_f => sgmii_clk_f,
      sgmii_clk_r => sgmii_clk_r,
      speed_is_100 => speed_is_100,
      speed_is_10_100 => speed_is_10_100
    );
sync_block_mmcm_locked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_out => mmcm_locked_sync_125,
      data_sync_reg1_0 => data_sync_reg1,
      mmcm_locked_out => mmcm_locked_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support is
  port (
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    refclk625_p : in STD_LOGIC;
    refclk625_n : in STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    sgmii_clk_en : out STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    clk125_out : out STD_LOGIC;
    clk625_out : out STD_LOGIC;
    idelay_rdy_out : out STD_LOGIC;
    clk312_out : out STD_LOGIC;
    rst_125_out : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support : entity is "yes";
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support : entity is "gig_ethernet_pcs_pma_0_support";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^clk125_out\ : STD_LOGIC;
  signal \^clk312_out\ : STD_LOGIC;
  signal \^clk625_out\ : STD_LOGIC;
  signal \lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk\ : STD_LOGIC;
  signal \lvds_transceiver_mw/tx_rst\ : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal \^rst_125_out\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  clk125_out <= \^clk125_out\;
  clk312_out <= \^clk312_out\;
  clk625_out <= \^clk625_out\;
  idelay_rdy_out <= \<const1>\;
  mmcm_locked_out <= \^mmcm_locked_out\;
  rst_125_out <= \^rst_125_out\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13 downto 9) <= \^status_vector\(13 downto 9);
  status_vector(8) <= \<const0>\;
  status_vector(7 downto 0) <= \^status_vector\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
core_clocking_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_clk_gen
     port map (
      CLK => \^clk312_out\,
      mmcm_locked_out => \^mmcm_locked_out\,
      not_rxclk => \lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk\,
      refclk625_n => refclk625_n,
      refclk625_p => refclk625_p,
      reset => reset,
      reset_0 => \^clk625_out\,
      reset_1 => \^clk125_out\
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sgmii_phy_reset_gen
     port map (
      data_sync_reg1 => \^clk125_out\,
      mgt_tx_reset => mgt_tx_reset,
      mmcm_locked_out => \^mmcm_locked_out\,
      reset => reset,
      rst_125_out => \^rst_125_out\,
      tx_rst => \lvds_transceiver_mw/tx_rst\
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block
     port map (
      CLK => \^clk312_out\,
      an_adv_config_vector(0) => an_adv_config_vector(11),
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      data_sync_reg1 => \^clk125_out\,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      \mdataouta_reg[3]\ => \^clk625_out\,
      mgt_tx_reset => mgt_tx_reset,
      mmcm_locked_out => \^mmcm_locked_out\,
      not_rxclk => \lvds_transceiver_mw/serdes_1_to_10_ser8_i/not_rxclk\,
      rst_125_out => \^rst_125_out\,
      rxn => rxn,
      rxp => rxp,
      sgmii_clk_en_reg => sgmii_clk_en,
      sgmii_clk_f => sgmii_clk_f,
      sgmii_clk_r => sgmii_clk_r,
      signal_detect => signal_detect,
      speed_is_100 => speed_is_100,
      speed_is_10_100 => speed_is_10_100,
      status_vector(12 downto 8) => \^status_vector\(13 downto 9),
      status_vector(7 downto 0) => \^status_vector\(7 downto 0),
      tx_rst => \lvds_transceiver_mw/tx_rst\,
      txn => txn,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0 is
  port (
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    refclk625_p : in STD_LOGIC;
    refclk625_n : in STD_LOGIC;
    clk125_out : out STD_LOGIC;
    idelay_rdy_out : out STD_LOGIC;
    clk625_out : out STD_LOGIC;
    clk312_out : out STD_LOGIC;
    rst_125_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    sgmii_clk_en : out STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_0 : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0 : entity is "yes";
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0 : entity is 0;
end gig_ethernet_pcs_pma_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0 is
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute EXAMPLE_SIMULATION of inst : label is 0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of inst : label is "gig_ethernet_pcs_pma_v16_1_7,Vivado 2019.2";
begin
inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support
     port map (
      an_adv_config_vector(15 downto 0) => an_adv_config_vector(15 downto 0),
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      clk125_out => clk125_out,
      clk312_out => clk312_out,
      clk625_out => clk625_out,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      idelay_rdy_out => idelay_rdy_out,
      mmcm_locked_out => mmcm_locked_out,
      refclk625_n => refclk625_n,
      refclk625_p => refclk625_p,
      reset => reset,
      rst_125_out => rst_125_out,
      rxn => rxn,
      rxp => rxp,
      sgmii_clk_en => sgmii_clk_en,
      sgmii_clk_f => sgmii_clk_f,
      sgmii_clk_r => sgmii_clk_r,
      signal_detect => signal_detect,
      speed_is_100 => speed_is_100,
      speed_is_10_100 => speed_is_10_100,
      status_vector(15 downto 0) => status_vector(15 downto 0),
      txn => txn,
      txp => txp
    );
end STRUCTURE;
