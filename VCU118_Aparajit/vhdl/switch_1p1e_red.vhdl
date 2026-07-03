-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package switch_1p1e_red_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component switch_1p1e_red is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      CLUSTER_ID: in std_logic_vector(7 downto 0);
      acb_master_request_from_engine_pipe_write_data: in std_logic_vector(109 downto 0);
      acb_master_request_from_engine_pipe_write_req : in std_logic_vector(0 downto 0);
      acb_master_request_from_engine_pipe_write_ack : out std_logic_vector(0 downto 0);
      acb_master_response_to_engine_pipe_read_data: out std_logic_vector(64 downto 0);
      acb_master_response_to_engine_pipe_read_req : in std_logic_vector(0 downto 0);
      acb_master_response_to_engine_pipe_read_ack : out std_logic_vector(0 downto 0);
      acb_request_from_downstream_pipe_write_data: in std_logic_vector(109 downto 0);
      acb_request_from_downstream_pipe_write_req : in std_logic_vector(0 downto 0);
      acb_request_from_downstream_pipe_write_ack : out std_logic_vector(0 downto 0);
      acb_request_from_processor_pipe_write_data: in std_logic_vector(109 downto 0);
      acb_request_from_processor_pipe_write_req : in std_logic_vector(0 downto 0);
      acb_request_from_processor_pipe_write_ack : out std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_read_data: out std_logic_vector(109 downto 0);
      acb_request_to_downstream_pipe_read_req : in std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_read_ack : out std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_write_data: in std_logic_vector(64 downto 0);
      acb_response_from_downstream_pipe_write_req : in std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_write_ack : out std_logic_vector(0 downto 0);
      acb_response_to_downstream_pipe_read_data: out std_logic_vector(64 downto 0);
      acb_response_to_downstream_pipe_read_req : in std_logic_vector(0 downto 0);
      acb_response_to_downstream_pipe_read_ack : out std_logic_vector(0 downto 0);
      acb_response_to_processor_pipe_read_data: out std_logic_vector(64 downto 0);
      acb_response_to_processor_pipe_read_req : in std_logic_vector(0 downto 0);
      acb_response_to_processor_pipe_read_ack : out std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_read_data: out std_logic_vector(109 downto 0);
      acb_slave_request_to_engine_pipe_read_req : in std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_read_ack : out std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_write_data: in std_logic_vector(64 downto 0);
      acb_slave_response_from_engine_pipe_write_req : in std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  -- 
end package switch_1p1e_red_global_package;
-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library switches_lib;
use switches_lib.switch_1p1e_red_global_package.all;
entity access_downstream is -- 
  generic (tag_length : integer); 
  port ( -- 
    acb_req : in  std_logic_vector(109 downto 0);
    acb_resp : out  std_logic_vector(64 downto 0);
    acb_response_from_downstream_pipe_read_req : out  std_logic_vector(0 downto 0);
    acb_response_from_downstream_pipe_read_ack : in   std_logic_vector(0 downto 0);
    acb_response_from_downstream_pipe_read_data : in   std_logic_vector(64 downto 0);
    acb_request_to_downstream_pipe_write_req : out  std_logic_vector(0 downto 0);
    acb_request_to_downstream_pipe_write_ack : in   std_logic_vector(0 downto 0);
    acb_request_to_downstream_pipe_write_data : out  std_logic_vector(109 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity access_downstream;
architecture access_downstream_arch of access_downstream is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 110)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 65)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  signal acb_req_buffer :  std_logic_vector(109 downto 0);
  signal acb_req_update_enable: Boolean;
  -- output port buffer signals
  signal acb_resp_buffer :  std_logic_vector(64 downto 0);
  signal acb_resp_update_enable: Boolean;
  signal access_downstream_CP_0_start: Boolean;
  signal access_downstream_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_acb_request_to_downstream_90_inst_req_0 : boolean;
  signal WPIPE_acb_request_to_downstream_90_inst_ack_0 : boolean;
  signal WPIPE_acb_request_to_downstream_90_inst_req_1 : boolean;
  signal WPIPE_acb_request_to_downstream_90_inst_ack_1 : boolean;
  signal RPIPE_acb_response_from_downstream_94_inst_req_0 : boolean;
  signal RPIPE_acb_response_from_downstream_94_inst_ack_0 : boolean;
  signal RPIPE_acb_response_from_downstream_94_inst_req_1 : boolean;
  signal RPIPE_acb_response_from_downstream_94_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "access_downstream_input_buffer", -- 
      buffer_size => 0,
      bypass_flag => true,
      data_width => tag_length + 110) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(109 downto 0) <= acb_req;
  acb_req_buffer <= in_buffer_data_out(109 downto 0);
  in_buffer_data_in(tag_length + 109 downto 110) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 109 downto 110);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 15);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= acb_req_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  access_downstream_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "access_downstream_out_buffer", -- 
      buffer_size => 0,
      full_rate => false,
      data_width => tag_length + 65) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(64 downto 0) <= acb_resp_buffer;
  acb_resp <= out_buffer_data_out(64 downto 0);
  out_buffer_data_in(tag_length + 64 downto 65) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 64 downto 65);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_downstream_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  acb_resp_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 27) := "acb_resp_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_acb_resp_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => acb_resp_update_enable, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 15,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= access_downstream_CP_0_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_downstream_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  access_downstream_CP_0: Block -- control-path 
    signal access_downstream_CP_0_elements: BooleanArray(14 downto 0);
    -- 
  begin -- 
    access_downstream_CP_0_elements(0) <= access_downstream_CP_0_start;
    access_downstream_CP_0_symbol <= access_downstream_CP_0_elements(14);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	4 
    -- CP-element group 1: 	7 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_92_to_assign_stmt_95/$entry
      -- 
    access_downstream_CP_0_elements(1) <= access_downstream_CP_0_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	5 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	12 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_92_to_assign_stmt_95/acb_req_update_enable
      -- CP-element group 2: 	 assign_stmt_92_to_assign_stmt_95/acb_req_update_enable_out
      -- 
    access_downstream_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 36) := "access_downstream_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= access_downstream_CP_0_elements(5);
      gj_access_downstream_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_downstream_CP_0_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	13 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	8 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_92_to_assign_stmt_95/acb_resp_update_enable
      -- CP-element group 3: 	 assign_stmt_92_to_assign_stmt_95/acb_resp_update_enable_in
      -- 
    access_downstream_CP_0_elements(3) <= access_downstream_CP_0_elements(13);
    -- CP-element group 4:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	1 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	6 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_sample_start_
      -- CP-element group 4: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Sample/req
      -- 
    req_17_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_17_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_downstream_CP_0_elements(4), ack => WPIPE_acb_request_to_downstream_90_inst_req_0); -- 
    access_downstream_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 36) := "access_downstream_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_downstream_CP_0_elements(1) & access_downstream_CP_0_elements(6);
      gj_access_downstream_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_downstream_CP_0_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5: marked-successors 
    -- CP-element group 5: 	2 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_sample_completed_
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_update_start_
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Sample/ack
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Update/$entry
      -- CP-element group 5: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Update/req
      -- 
    ack_18_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_request_to_downstream_90_inst_ack_0, ack => access_downstream_CP_0_elements(5)); -- 
    req_22_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_22_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_downstream_CP_0_elements(5), ack => WPIPE_acb_request_to_downstream_90_inst_req_1); -- 
    -- CP-element group 6:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	11 
    -- CP-element group 6: marked-successors 
    -- CP-element group 6: 	4 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_update_completed_
      -- CP-element group 6: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Update/$exit
      -- CP-element group 6: 	 assign_stmt_92_to_assign_stmt_95/WPIPE_acb_request_to_downstream_90_Update/ack
      -- 
    ack_23_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_request_to_downstream_90_inst_ack_1, ack => access_downstream_CP_0_elements(6)); -- 
    -- CP-element group 7:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	1 
    -- CP-element group 7: marked-predecessors 
    -- CP-element group 7: 	10 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	9 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_sample_start_
      -- CP-element group 7: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Sample/$entry
      -- CP-element group 7: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Sample/rr
      -- 
    rr_31_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_31_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_downstream_CP_0_elements(7), ack => RPIPE_acb_response_from_downstream_94_inst_req_0); -- 
    access_downstream_cp_element_group_7: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 36) := "access_downstream_cp_element_group_7"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_downstream_CP_0_elements(1) & access_downstream_CP_0_elements(10);
      gj_access_downstream_cp_element_group_7 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_downstream_CP_0_elements(7), clk => clk, reset => reset); --
    end block;
    -- CP-element group 8:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	3 
    -- CP-element group 8: 	9 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	10 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_update_start_
      -- CP-element group 8: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Update/$entry
      -- CP-element group 8: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Update/cr
      -- 
    cr_36_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_36_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_downstream_CP_0_elements(8), ack => RPIPE_acb_response_from_downstream_94_inst_req_1); -- 
    access_downstream_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 36) := "access_downstream_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_downstream_CP_0_elements(3) & access_downstream_CP_0_elements(9);
      gj_access_downstream_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_downstream_CP_0_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  transition  input  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	7 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	8 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_sample_completed_
      -- CP-element group 9: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Sample/$exit
      -- CP-element group 9: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Sample/ra
      -- 
    ra_32_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_response_from_downstream_94_inst_ack_0, ack => access_downstream_CP_0_elements(9)); -- 
    -- CP-element group 10:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	8 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10: marked-successors 
    -- CP-element group 10: 	7 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_update_completed_
      -- CP-element group 10: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Update/$exit
      -- CP-element group 10: 	 assign_stmt_92_to_assign_stmt_95/RPIPE_acb_response_from_downstream_94_Update/ca
      -- 
    ca_37_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_response_from_downstream_94_inst_ack_1, ack => access_downstream_CP_0_elements(10)); -- 
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	10 
    -- CP-element group 11: 	6 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 assign_stmt_92_to_assign_stmt_95/$exit
      -- 
    access_downstream_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "access_downstream_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_downstream_CP_0_elements(10) & access_downstream_CP_0_elements(6);
      gj_access_downstream_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_downstream_CP_0_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  place  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	2 
    -- CP-element group 12: successors 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 acb_req_update_enable
      -- 
    access_downstream_CP_0_elements(12) <= access_downstream_CP_0_elements(2);
    -- CP-element group 13:  place  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	3 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 acb_resp_update_enable
      -- 
    -- CP-element group 14:  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: successors 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 $exit
      -- 
    access_downstream_CP_0_elements(14) <= access_downstream_CP_0_elements(11);
    --  hookup: inputs to control-path 
    access_downstream_CP_0_elements(13) <= acb_resp_update_enable;
    -- hookup: output from control-path 
    acb_req_update_enable <= access_downstream_CP_0_elements(12);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared inport operator group (0) : RPIPE_acb_response_from_downstream_94_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_acb_response_from_downstream_94_inst_req_0;
      RPIPE_acb_response_from_downstream_94_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_acb_response_from_downstream_94_inst_req_1;
      RPIPE_acb_response_from_downstream_94_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      acb_resp_buffer <= data_out(64 downto 0);
      acb_response_from_downstream_read_0_gI: SplitGuardInterface generic map(name => "acb_response_from_downstream_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      acb_response_from_downstream_read_0: InputPort_P2P -- 
        generic map ( name => "acb_response_from_downstream_read_0", data_width => 65,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => acb_response_from_downstream_pipe_read_req(0),
          oack => acb_response_from_downstream_pipe_read_ack(0),
          odata => acb_response_from_downstream_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_acb_request_to_downstream_90_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_acb_request_to_downstream_90_inst_req_0;
      WPIPE_acb_request_to_downstream_90_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_acb_request_to_downstream_90_inst_req_1;
      WPIPE_acb_request_to_downstream_90_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= acb_req_buffer;
      acb_request_to_downstream_write_0_gI: SplitGuardInterface generic map(name => "acb_request_to_downstream_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      acb_request_to_downstream_write_0: OutputPortRevised -- 
        generic map ( name => "acb_request_to_downstream", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => acb_request_to_downstream_pipe_write_req(0),
          oack => acb_request_to_downstream_pipe_write_ack(0),
          odata => acb_request_to_downstream_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end access_downstream_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library switches_lib;
use switches_lib.switch_1p1e_red_global_package.all;
entity access_engine is -- 
  generic (tag_length : integer); 
  port ( -- 
    acb_req : in  std_logic_vector(109 downto 0);
    acb_resp : out  std_logic_vector(64 downto 0);
    acb_slave_response_from_engine_pipe_read_req : out  std_logic_vector(0 downto 0);
    acb_slave_response_from_engine_pipe_read_ack : in   std_logic_vector(0 downto 0);
    acb_slave_response_from_engine_pipe_read_data : in   std_logic_vector(64 downto 0);
    acb_slave_request_to_engine_pipe_write_req : out  std_logic_vector(0 downto 0);
    acb_slave_request_to_engine_pipe_write_ack : in   std_logic_vector(0 downto 0);
    acb_slave_request_to_engine_pipe_write_data : out  std_logic_vector(109 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity access_engine;
architecture access_engine_arch of access_engine is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 110)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 65)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  signal acb_req_buffer :  std_logic_vector(109 downto 0);
  signal acb_req_update_enable: Boolean;
  -- output port buffer signals
  signal acb_resp_buffer :  std_logic_vector(64 downto 0);
  signal acb_resp_update_enable: Boolean;
  signal access_engine_CP_40_start: Boolean;
  signal access_engine_CP_40_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_acb_slave_request_to_engine_100_inst_req_0 : boolean;
  signal WPIPE_acb_slave_request_to_engine_100_inst_ack_0 : boolean;
  signal WPIPE_acb_slave_request_to_engine_100_inst_req_1 : boolean;
  signal WPIPE_acb_slave_request_to_engine_100_inst_ack_1 : boolean;
  signal RPIPE_acb_slave_response_from_engine_104_inst_req_0 : boolean;
  signal RPIPE_acb_slave_response_from_engine_104_inst_ack_0 : boolean;
  signal RPIPE_acb_slave_response_from_engine_104_inst_req_1 : boolean;
  signal RPIPE_acb_slave_response_from_engine_104_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "access_engine_input_buffer", -- 
      buffer_size => 0,
      bypass_flag => true,
      data_width => tag_length + 110) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(109 downto 0) <= acb_req;
  acb_req_buffer <= in_buffer_data_out(109 downto 0);
  in_buffer_data_in(tag_length + 109 downto 110) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 109 downto 110);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 15);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= acb_req_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  access_engine_CP_40_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "access_engine_out_buffer", -- 
      buffer_size => 0,
      full_rate => false,
      data_width => tag_length + 65) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(64 downto 0) <= acb_resp_buffer;
  acb_resp <= out_buffer_data_out(64 downto 0);
  out_buffer_data_in(tag_length + 64 downto 65) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 64 downto 65);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_engine_CP_40_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  acb_resp_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 27) := "acb_resp_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_acb_resp_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => acb_resp_update_enable, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 15,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= access_engine_CP_40_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= access_engine_CP_40_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  access_engine_CP_40: Block -- control-path 
    signal access_engine_CP_40_elements: BooleanArray(14 downto 0);
    -- 
  begin -- 
    access_engine_CP_40_elements(0) <= access_engine_CP_40_start;
    access_engine_CP_40_symbol <= access_engine_CP_40_elements(14);
    -- CP-element group 0:  transition  bypass  pipeline-parent 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0:  members (1) 
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	4 
    -- CP-element group 1: 	7 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_102_to_assign_stmt_105/$entry
      -- 
    access_engine_CP_40_elements(1) <= access_engine_CP_40_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	5 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	12 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_102_to_assign_stmt_105/acb_req_update_enable
      -- CP-element group 2: 	 assign_stmt_102_to_assign_stmt_105/acb_req_update_enable_out
      -- 
    access_engine_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 32) := "access_engine_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= access_engine_CP_40_elements(5);
      gj_access_engine_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_engine_CP_40_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	13 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	8 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_102_to_assign_stmt_105/acb_resp_update_enable
      -- CP-element group 3: 	 assign_stmt_102_to_assign_stmt_105/acb_resp_update_enable_in
      -- 
    access_engine_CP_40_elements(3) <= access_engine_CP_40_elements(13);
    -- CP-element group 4:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	1 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	6 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_sample_start_
      -- CP-element group 4: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Sample/req
      -- 
    req_57_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_57_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_engine_CP_40_elements(4), ack => WPIPE_acb_slave_request_to_engine_100_inst_req_0); -- 
    access_engine_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "access_engine_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_engine_CP_40_elements(1) & access_engine_CP_40_elements(6);
      gj_access_engine_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_engine_CP_40_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5: marked-successors 
    -- CP-element group 5: 	2 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_sample_completed_
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_update_start_
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Sample/ack
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Update/$entry
      -- CP-element group 5: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Update/req
      -- 
    ack_58_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_slave_request_to_engine_100_inst_ack_0, ack => access_engine_CP_40_elements(5)); -- 
    req_62_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_62_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_engine_CP_40_elements(5), ack => WPIPE_acb_slave_request_to_engine_100_inst_req_1); -- 
    -- CP-element group 6:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	11 
    -- CP-element group 6: marked-successors 
    -- CP-element group 6: 	4 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_update_completed_
      -- CP-element group 6: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Update/$exit
      -- CP-element group 6: 	 assign_stmt_102_to_assign_stmt_105/WPIPE_acb_slave_request_to_engine_100_Update/ack
      -- 
    ack_63_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_slave_request_to_engine_100_inst_ack_1, ack => access_engine_CP_40_elements(6)); -- 
    -- CP-element group 7:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	1 
    -- CP-element group 7: marked-predecessors 
    -- CP-element group 7: 	10 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	9 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_sample_start_
      -- CP-element group 7: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Sample/$entry
      -- CP-element group 7: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Sample/rr
      -- 
    rr_71_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_71_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_engine_CP_40_elements(7), ack => RPIPE_acb_slave_response_from_engine_104_inst_req_0); -- 
    access_engine_cp_element_group_7: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "access_engine_cp_element_group_7"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_engine_CP_40_elements(1) & access_engine_CP_40_elements(10);
      gj_access_engine_cp_element_group_7 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_engine_CP_40_elements(7), clk => clk, reset => reset); --
    end block;
    -- CP-element group 8:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	9 
    -- CP-element group 8: 	3 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	10 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_update_start_
      -- CP-element group 8: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Update/$entry
      -- CP-element group 8: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Update/cr
      -- 
    cr_76_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_76_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => access_engine_CP_40_elements(8), ack => RPIPE_acb_slave_response_from_engine_104_inst_req_1); -- 
    access_engine_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 32) := "access_engine_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_engine_CP_40_elements(9) & access_engine_CP_40_elements(3);
      gj_access_engine_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_engine_CP_40_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  transition  input  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	7 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	8 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_sample_completed_
      -- CP-element group 9: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Sample/$exit
      -- CP-element group 9: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Sample/ra
      -- 
    ra_72_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_slave_response_from_engine_104_inst_ack_0, ack => access_engine_CP_40_elements(9)); -- 
    -- CP-element group 10:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	8 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10: marked-successors 
    -- CP-element group 10: 	7 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_update_completed_
      -- CP-element group 10: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Update/$exit
      -- CP-element group 10: 	 assign_stmt_102_to_assign_stmt_105/RPIPE_acb_slave_response_from_engine_104_Update/ca
      -- 
    ca_77_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_slave_response_from_engine_104_inst_ack_1, ack => access_engine_CP_40_elements(10)); -- 
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	6 
    -- CP-element group 11: 	10 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 assign_stmt_102_to_assign_stmt_105/$exit
      -- 
    access_engine_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 33) := "access_engine_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= access_engine_CP_40_elements(6) & access_engine_CP_40_elements(10);
      gj_access_engine_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => access_engine_CP_40_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  place  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	2 
    -- CP-element group 12: successors 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 acb_req_update_enable
      -- 
    access_engine_CP_40_elements(12) <= access_engine_CP_40_elements(2);
    -- CP-element group 13:  place  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	3 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 acb_resp_update_enable
      -- 
    -- CP-element group 14:  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: successors 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 $exit
      -- 
    access_engine_CP_40_elements(14) <= access_engine_CP_40_elements(11);
    --  hookup: inputs to control-path 
    access_engine_CP_40_elements(13) <= acb_resp_update_enable;
    -- hookup: output from control-path 
    acb_req_update_enable <= access_engine_CP_40_elements(12);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared inport operator group (0) : RPIPE_acb_slave_response_from_engine_104_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_acb_slave_response_from_engine_104_inst_req_0;
      RPIPE_acb_slave_response_from_engine_104_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_acb_slave_response_from_engine_104_inst_req_1;
      RPIPE_acb_slave_response_from_engine_104_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      acb_resp_buffer <= data_out(64 downto 0);
      acb_slave_response_from_engine_read_0_gI: SplitGuardInterface generic map(name => "acb_slave_response_from_engine_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      acb_slave_response_from_engine_read_0: InputPort_P2P -- 
        generic map ( name => "acb_slave_response_from_engine_read_0", data_width => 65,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => acb_slave_response_from_engine_pipe_read_req(0),
          oack => acb_slave_response_from_engine_pipe_read_ack(0),
          odata => acb_slave_response_from_engine_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_acb_slave_request_to_engine_100_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_acb_slave_request_to_engine_100_inst_req_0;
      WPIPE_acb_slave_request_to_engine_100_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_acb_slave_request_to_engine_100_inst_req_1;
      WPIPE_acb_slave_request_to_engine_100_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= acb_req_buffer;
      acb_slave_request_to_engine_write_0_gI: SplitGuardInterface generic map(name => "acb_slave_request_to_engine_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      acb_slave_request_to_engine_write_0: OutputPortRevised -- 
        generic map ( name => "acb_slave_request_to_engine", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => acb_slave_request_to_engine_pipe_write_req(0),
          oack => acb_slave_request_to_engine_pipe_write_ack(0),
          odata => acb_slave_request_to_engine_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end access_engine_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library switches_lib;
use switches_lib.switch_1p1e_red_global_package.all;
entity findRequestTarget_Volatile is -- 
  port ( -- 
    cluster_id : in  std_logic_vector(7 downto 0);
    addr_36 : in  std_logic_vector(35 downto 0);
    to_engine : out  std_logic_vector(0 downto 0);
    to_downstream : out  std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity findRequestTarget_Volatile;
architecture findRequestTarget_Volatile_arch of findRequestTarget_Volatile is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector(44-1 downto 0);
  signal default_zero_sig: std_logic;
  -- input port buffer signals
  signal cluster_id_buffer :  std_logic_vector(7 downto 0);
  signal addr_36_buffer :  std_logic_vector(35 downto 0);
  -- output port buffer signals
  signal to_engine_buffer :  std_logic_vector(0 downto 0);
  signal to_downstream_buffer :  std_logic_vector(0 downto 0);
  -- volatile/operator module components. 
  -- 
begin --  
  -- input handling ------------------------------------------------
  cluster_id_buffer <= cluster_id;
  addr_36_buffer <= addr_36;
  -- output handling  -------------------------------------------------------
  to_engine <= to_engine_buffer;
  to_downstream <= to_downstream_buffer;
  -- the control path --------------------------------------------------
  default_zero_sig <= '0';
  -- volatile module, no control path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_132_wire : std_logic_vector(0 downto 0);
    signal EQ_u11_u1_130_wire : std_logic_vector(0 downto 0);
    signal ULT_u24_u1_135_wire : std_logic_vector(0 downto 0);
    signal a_23_0_126 : std_logic_vector(23 downto 0);
    signal a_24_121 : std_logic_vector(0 downto 0);
    signal a_35_25_116 : std_logic_vector(10 downto 0);
    signal konst_119_wire_constant : std_logic_vector(35 downto 0);
    signal konst_129_wire_constant : std_logic_vector(10 downto 0);
    signal konst_134_wire_constant : std_logic_vector(23 downto 0);
    -- 
  begin -- 
    konst_119_wire_constant <= "000000000000000000000000000000011000";
    konst_129_wire_constant <= "00000000000";
    konst_134_wire_constant <= "000000010000000000000000";
    -- flow-through slice operator slice_115_inst
    a_35_25_116 <= addr_36_buffer(35 downto 25);
    -- flow-through slice operator slice_125_inst
    a_23_0_126 <= addr_36_buffer(23 downto 0);
    -- flow through binary operator AND_u1_u1_132_inst
    AND_u1_u1_132_wire <= (EQ_u11_u1_130_wire and a_24_121);
    -- flow through binary operator AND_u1_u1_136_inst
    to_engine_buffer <= (AND_u1_u1_132_wire and ULT_u24_u1_135_wire);
    -- flow through binary operator BITSEL_u36_u1_120_inst
    process(addr_36_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(addr_36_buffer, konst_119_wire_constant, tmp_var);
      a_24_121 <= tmp_var; --
    end process;
    -- flow through binary operator EQ_u11_u1_130_inst
    process(a_35_25_116) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntEq_proc(a_35_25_116, konst_129_wire_constant, tmp_var);
      EQ_u11_u1_130_wire <= tmp_var; --
    end process;
    -- unary operator NOT_u1_u1_140_inst
    process(to_engine_buffer) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", to_engine_buffer, tmp_var);
      to_downstream_buffer <= tmp_var; -- 
    end process;
    -- flow through binary operator ULT_u24_u1_135_inst
    process(a_23_0_126) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(a_23_0_126, konst_134_wire_constant, tmp_var);
      ULT_u24_u1_135_wire <= tmp_var; --
    end process;
    -- 
  end Block; -- data_path
  -- 
end findRequestTarget_Volatile_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library switches_lib;
use switches_lib.switch_1p1e_red_global_package.all;
entity switch_1p1e_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    acb_master_request_from_engine_pipe_read_req : out  std_logic_vector(0 downto 0);
    acb_master_request_from_engine_pipe_read_ack : in   std_logic_vector(0 downto 0);
    acb_master_request_from_engine_pipe_read_data : in   std_logic_vector(109 downto 0);
    acb_request_from_downstream_pipe_read_req : out  std_logic_vector(0 downto 0);
    acb_request_from_downstream_pipe_read_ack : in   std_logic_vector(0 downto 0);
    acb_request_from_downstream_pipe_read_data : in   std_logic_vector(109 downto 0);
    acb_request_from_processor_pipe_read_req : out  std_logic_vector(0 downto 0);
    acb_request_from_processor_pipe_read_ack : in   std_logic_vector(0 downto 0);
    acb_request_from_processor_pipe_read_data : in   std_logic_vector(109 downto 0);
    CLUSTER_ID : in std_logic_vector(7 downto 0);
    acb_response_to_downstream_pipe_write_req : out  std_logic_vector(0 downto 0);
    acb_response_to_downstream_pipe_write_ack : in   std_logic_vector(0 downto 0);
    acb_response_to_downstream_pipe_write_data : out  std_logic_vector(64 downto 0);
    acb_response_to_processor_pipe_write_req : out  std_logic_vector(0 downto 0);
    acb_response_to_processor_pipe_write_ack : in   std_logic_vector(0 downto 0);
    acb_response_to_processor_pipe_write_data : out  std_logic_vector(64 downto 0);
    acb_master_response_to_engine_pipe_write_req : out  std_logic_vector(0 downto 0);
    acb_master_response_to_engine_pipe_write_ack : in   std_logic_vector(0 downto 0);
    acb_master_response_to_engine_pipe_write_data : out  std_logic_vector(64 downto 0);
    access_downstream_call_reqs : out  std_logic_vector(0 downto 0);
    access_downstream_call_acks : in   std_logic_vector(0 downto 0);
    access_downstream_call_data : out  std_logic_vector(109 downto 0);
    access_downstream_call_tag  :  out  std_logic_vector(1 downto 0);
    access_downstream_return_reqs : out  std_logic_vector(0 downto 0);
    access_downstream_return_acks : in   std_logic_vector(0 downto 0);
    access_downstream_return_data : in   std_logic_vector(64 downto 0);
    access_downstream_return_tag :  in   std_logic_vector(1 downto 0);
    access_engine_call_reqs : out  std_logic_vector(0 downto 0);
    access_engine_call_acks : in   std_logic_vector(0 downto 0);
    access_engine_call_data : out  std_logic_vector(109 downto 0);
    access_engine_call_tag  :  out  std_logic_vector(1 downto 0);
    access_engine_return_reqs : out  std_logic_vector(0 downto 0);
    access_engine_return_acks : in   std_logic_vector(0 downto 0);
    access_engine_return_data : in   std_logic_vector(64 downto 0);
    access_engine_return_tag :  in   std_logic_vector(1 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity switch_1p1e_daemon;
architecture switch_1p1e_daemon_arch of switch_1p1e_daemon is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal switch_1p1e_daemon_CP_222_start: Boolean;
  signal switch_1p1e_daemon_CP_222_symbol: Boolean;
  -- volatile/operator module components. 
  component access_downstream is -- 
    generic (tag_length : integer); 
    port ( -- 
      acb_req : in  std_logic_vector(109 downto 0);
      acb_resp : out  std_logic_vector(64 downto 0);
      acb_response_from_downstream_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_read_data : in   std_logic_vector(64 downto 0);
      acb_request_to_downstream_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_write_data : out  std_logic_vector(109 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  component access_engine is -- 
    generic (tag_length : integer); 
    port ( -- 
      acb_req : in  std_logic_vector(109 downto 0);
      acb_resp : out  std_logic_vector(64 downto 0);
      acb_slave_response_from_engine_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_read_data : in   std_logic_vector(64 downto 0);
      acb_slave_request_to_engine_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_write_data : out  std_logic_vector(109 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  component findRequestTarget_Volatile is -- 
    port ( -- 
      cluster_id : in  std_logic_vector(7 downto 0);
      addr_36 : in  std_logic_vector(35 downto 0);
      to_engine : out  std_logic_vector(0 downto 0);
      to_downstream : out  std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component; 
  -- links between control-path and data-path
  signal RPIPE_acb_master_request_from_engine_219_inst_ack_1 : boolean;
  signal call_stmt_233_call_req_0 : boolean;
  signal call_stmt_233_call_ack_0 : boolean;
  signal call_stmt_233_call_req_1 : boolean;
  signal call_stmt_233_call_ack_1 : boolean;
  signal W_cluster_id_171_inst_req_0 : boolean;
  signal W_cluster_id_171_inst_ack_0 : boolean;
  signal W_cluster_id_171_inst_req_1 : boolean;
  signal W_cluster_id_171_inst_ack_1 : boolean;
  signal do_while_stmt_176_branch_req_0 : boolean;
  signal RPIPE_acb_request_from_processor_180_inst_req_0 : boolean;
  signal RPIPE_acb_request_from_processor_180_inst_ack_0 : boolean;
  signal RPIPE_acb_request_from_processor_180_inst_req_1 : boolean;
  signal RPIPE_acb_request_from_processor_180_inst_ack_1 : boolean;
  signal call_stmt_194_call_req_0 : boolean;
  signal call_stmt_194_call_ack_0 : boolean;
  signal call_stmt_194_call_req_1 : boolean;
  signal call_stmt_194_call_ack_1 : boolean;
  signal call_stmt_198_call_req_0 : boolean;
  signal call_stmt_198_call_ack_0 : boolean;
  signal call_stmt_198_call_req_1 : boolean;
  signal call_stmt_198_call_ack_1 : boolean;
  signal W_to_engine_217_delayed_16_0_199_inst_req_0 : boolean;
  signal W_to_engine_217_delayed_16_0_199_inst_ack_0 : boolean;
  signal W_to_engine_217_delayed_16_0_199_inst_req_1 : boolean;
  signal W_to_engine_217_delayed_16_0_199_inst_ack_1 : boolean;
  signal WPIPE_acb_response_to_processor_208_inst_req_0 : boolean;
  signal WPIPE_acb_response_to_processor_208_inst_ack_0 : boolean;
  signal WPIPE_acb_response_to_processor_208_inst_req_1 : boolean;
  signal WPIPE_acb_response_to_processor_208_inst_ack_1 : boolean;
  signal do_while_stmt_176_branch_ack_0 : boolean;
  signal do_while_stmt_176_branch_ack_1 : boolean;
  signal do_while_stmt_215_branch_req_0 : boolean;
  signal RPIPE_acb_master_request_from_engine_219_inst_req_0 : boolean;
  signal RPIPE_acb_master_request_from_engine_219_inst_ack_0 : boolean;
  signal RPIPE_acb_master_request_from_engine_219_inst_req_1 : boolean;
  signal call_stmt_237_call_req_0 : boolean;
  signal call_stmt_237_call_ack_0 : boolean;
  signal call_stmt_237_call_req_1 : boolean;
  signal call_stmt_237_call_ack_1 : boolean;
  signal W_to_engine_269_delayed_16_0_238_inst_req_0 : boolean;
  signal W_to_engine_269_delayed_16_0_238_inst_ack_0 : boolean;
  signal W_to_engine_269_delayed_16_0_238_inst_req_1 : boolean;
  signal W_to_engine_269_delayed_16_0_238_inst_ack_1 : boolean;
  signal WPIPE_acb_master_response_to_engine_247_inst_req_0 : boolean;
  signal WPIPE_acb_master_response_to_engine_247_inst_ack_0 : boolean;
  signal WPIPE_acb_master_response_to_engine_247_inst_req_1 : boolean;
  signal WPIPE_acb_master_response_to_engine_247_inst_ack_1 : boolean;
  signal do_while_stmt_215_branch_ack_0 : boolean;
  signal do_while_stmt_215_branch_ack_1 : boolean;
  signal do_while_stmt_254_branch_req_0 : boolean;
  signal RPIPE_acb_request_from_downstream_258_inst_req_0 : boolean;
  signal RPIPE_acb_request_from_downstream_258_inst_ack_0 : boolean;
  signal RPIPE_acb_request_from_downstream_258_inst_req_1 : boolean;
  signal RPIPE_acb_request_from_downstream_258_inst_ack_1 : boolean;
  signal call_stmt_272_call_req_0 : boolean;
  signal call_stmt_272_call_ack_0 : boolean;
  signal call_stmt_272_call_req_1 : boolean;
  signal call_stmt_272_call_ack_1 : boolean;
  signal call_stmt_276_call_req_0 : boolean;
  signal call_stmt_276_call_ack_0 : boolean;
  signal call_stmt_276_call_req_1 : boolean;
  signal call_stmt_276_call_ack_1 : boolean;
  signal W_to_engine_321_delayed_16_0_277_inst_req_0 : boolean;
  signal W_to_engine_321_delayed_16_0_277_inst_ack_0 : boolean;
  signal W_to_engine_321_delayed_16_0_277_inst_req_1 : boolean;
  signal W_to_engine_321_delayed_16_0_277_inst_ack_1 : boolean;
  signal WPIPE_acb_response_to_downstream_286_inst_req_0 : boolean;
  signal WPIPE_acb_response_to_downstream_286_inst_ack_0 : boolean;
  signal WPIPE_acb_response_to_downstream_286_inst_req_1 : boolean;
  signal WPIPE_acb_response_to_downstream_286_inst_ack_1 : boolean;
  signal do_while_stmt_254_branch_ack_0 : boolean;
  signal do_while_stmt_254_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "switch_1p1e_daemon_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  switch_1p1e_daemon_CP_222_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "switch_1p1e_daemon_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= switch_1p1e_daemon_CP_222_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= switch_1p1e_daemon_CP_222_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= switch_1p1e_daemon_CP_222_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  switch_1p1e_daemon_CP_222: Block -- control-path 
    signal switch_1p1e_daemon_CP_222_elements: BooleanArray(114 downto 0);
    -- 
  begin -- 
    switch_1p1e_daemon_CP_222_elements(0) <= switch_1p1e_daemon_CP_222_start;
    switch_1p1e_daemon_CP_222_symbol <= switch_1p1e_daemon_CP_222_elements(114);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 assign_stmt_173/$entry
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_sample_start_
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_update_start_
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_Sample/$entry
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_Sample/req
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_Update/$entry
      -- CP-element group 0: 	 assign_stmt_173/assign_stmt_173_Update/req
      -- 
    req_240_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_240_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(0), ack => W_cluster_id_171_inst_req_1); -- 
    req_235_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_235_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(0), ack => W_cluster_id_171_inst_req_0); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 assign_stmt_173/assign_stmt_173_sample_completed_
      -- CP-element group 1: 	 assign_stmt_173/assign_stmt_173_Sample/$exit
      -- CP-element group 1: 	 assign_stmt_173/assign_stmt_173_Sample/ack
      -- 
    ack_236_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_cluster_id_171_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(1)); -- 
    -- CP-element group 2:  fork  transition  place  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	41 
    -- CP-element group 2: 	78 
    -- CP-element group 2: 	4 
    -- CP-element group 2:  members (14) 
      -- CP-element group 2: 	 assign_stmt_173/$exit
      -- CP-element group 2: 	 assign_stmt_173/assign_stmt_173_update_completed_
      -- CP-element group 2: 	 assign_stmt_173/assign_stmt_173_Update/$exit
      -- CP-element group 2: 	 assign_stmt_173/assign_stmt_173_Update/ack
      -- CP-element group 2: 	 parallel_block_stmt_174/$entry
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_175/$entry
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_175/branch_block_stmt_175__entry__
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176__entry__
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_214/$entry
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_214/branch_block_stmt_214__entry__
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215__entry__
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_253/$entry
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_253/branch_block_stmt_253__entry__
      -- CP-element group 2: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254__entry__
      -- 
    ack_241_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_cluster_id_171_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(2)); -- 
    -- CP-element group 3:  transition  place  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	39 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	114 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 parallel_block_stmt_174/branch_block_stmt_175/$exit
      -- CP-element group 3: 	 parallel_block_stmt_174/branch_block_stmt_175/branch_block_stmt_175__exit__
      -- CP-element group 3: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176__exit__
      -- 
    switch_1p1e_daemon_CP_222_elements(3) <= switch_1p1e_daemon_CP_222_elements(39);
    -- CP-element group 4:  transition  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	2 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	10 
    -- CP-element group 4:  members (2) 
      -- CP-element group 4: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/$entry
      -- CP-element group 4: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176__entry__
      -- 
    switch_1p1e_daemon_CP_222_elements(4) <= switch_1p1e_daemon_CP_222_elements(2);
    -- CP-element group 5:  merge  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	39 
    -- CP-element group 5:  members (1) 
      -- CP-element group 5: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176__exit__
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(5) is bound as output of CP function.
    -- CP-element group 6:  merge  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	9 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_back
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(6) is bound as output of CP function.
    -- CP-element group 7:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	12 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	38 
    -- CP-element group 7: 	37 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/condition_done
      -- CP-element group 7: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_exit/$entry
      -- CP-element group 7: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_taken/$entry
      -- 
    switch_1p1e_daemon_CP_222_elements(7) <= switch_1p1e_daemon_CP_222_elements(12);
    -- CP-element group 8:  branch  place  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	36 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_body_done
      -- 
    switch_1p1e_daemon_CP_222_elements(8) <= switch_1p1e_daemon_CP_222_elements(36);
    -- CP-element group 9:  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	6 
    -- CP-element group 9: successors 
    -- CP-element group 9:  members (1) 
      -- CP-element group 9: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/back_edge_to_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(9) <= switch_1p1e_daemon_CP_222_elements(6);
    -- CP-element group 10:  transition  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	4 
    -- CP-element group 10: successors 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/first_time_through_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(10) <= switch_1p1e_daemon_CP_222_elements(4);
    -- CP-element group 11:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	13 
    -- CP-element group 11: 	15 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/$entry
      -- CP-element group 11: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/loop_body_start
      -- CP-element group 11: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/phi_stmt_178_sample_start_
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(11) is bound as output of CP function.
    -- CP-element group 12:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	19 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	7 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/condition_evaluated
      -- 
    condition_evaluated_266_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_266_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(12), ack => do_while_stmt_176_branch_req_0); -- 
    switch_1p1e_daemon_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(35) & switch_1p1e_daemon_CP_222_elements(19);
      gj_switch_1p1e_daemon_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	19 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	16 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/aggregated_phi_sample_req
      -- 
    switch_1p1e_daemon_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(11) & switch_1p1e_daemon_CP_222_elements(19);
      gj_switch_1p1e_daemon_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	18 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	36 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(14) is a control-delay.
    cp_element_14_delay: control_delay_element  generic map(name => " 14_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(18), ack => switch_1p1e_daemon_CP_222_elements(14), clk => clk, reset =>reset);
    -- CP-element group 15:  join  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	11 
    -- CP-element group 15: marked-predecessors 
    -- CP-element group 15: 	30 
    -- CP-element group 15: 	26 
    -- CP-element group 15: 	22 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	17 
    -- CP-element group 15:  members (2) 
      -- CP-element group 15: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/aggregated_phi_update_req
      -- CP-element group 15: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/phi_stmt_178_update_start_
      -- 
    switch_1p1e_daemon_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(11) & switch_1p1e_daemon_CP_222_elements(30) & switch_1p1e_daemon_CP_222_elements(26) & switch_1p1e_daemon_CP_222_elements(22);
      gj_switch_1p1e_daemon_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	13 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	19 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	18 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_sample_start_
      -- CP-element group 16: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Sample/$entry
      -- CP-element group 16: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Sample/rr
      -- 
    rr_284_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_284_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(16), ack => RPIPE_acb_request_from_processor_180_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(13) & switch_1p1e_daemon_CP_222_elements(19);
      gj_switch_1p1e_daemon_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	18 
    -- CP-element group 17: 	15 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	19 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_update_start_
      -- CP-element group 17: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Update/$entry
      -- CP-element group 17: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Update/cr
      -- 
    cr_289_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_289_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(17), ack => RPIPE_acb_request_from_processor_180_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(18) & switch_1p1e_daemon_CP_222_elements(15);
      gj_switch_1p1e_daemon_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	16 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	36 
    -- CP-element group 18: 	14 
    -- CP-element group 18: 	17 
    -- CP-element group 18:  members (5) 
      -- CP-element group 18: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/aggregated_phi_sample_ack
      -- CP-element group 18: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/phi_stmt_178_sample_completed_
      -- CP-element group 18: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_sample_completed_
      -- CP-element group 18: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Sample/$exit
      -- CP-element group 18: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Sample/ra
      -- 
    ra_285_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_request_from_processor_180_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(18)); -- 
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	17 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	12 
    -- CP-element group 19: 	24 
    -- CP-element group 19: 	28 
    -- CP-element group 19: 	20 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	16 
    -- CP-element group 19: 	13 
    -- CP-element group 19:  members (5) 
      -- CP-element group 19: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/aggregated_phi_update_ack
      -- CP-element group 19: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/phi_stmt_178_update_completed_
      -- CP-element group 19: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_update_completed_
      -- CP-element group 19: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Update/$exit
      -- CP-element group 19: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/RPIPE_acb_request_from_processor_180_Update/ca
      -- 
    ca_290_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_request_from_processor_180_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(19)); -- 
    -- CP-element group 20:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: marked-predecessors 
    -- CP-element group 20: 	22 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_sample_start_
      -- CP-element group 20: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Sample/$entry
      -- CP-element group 20: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Sample/crr
      -- 
    crr_298_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_298_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(20), ack => call_stmt_194_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(19) & switch_1p1e_daemon_CP_222_elements(22);
      gj_switch_1p1e_daemon_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	33 
    -- CP-element group 21: 	23 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	23 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_update_start_
      -- CP-element group 21: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Update/$entry
      -- CP-element group 21: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Update/ccr
      -- 
    ccr_303_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_303_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(21), ack => call_stmt_194_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(33) & switch_1p1e_daemon_CP_222_elements(23);
      gj_switch_1p1e_daemon_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: marked-successors 
    -- CP-element group 22: 	20 
    -- CP-element group 22: 	15 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_sample_completed_
      -- CP-element group 22: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Sample/$exit
      -- CP-element group 22: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Sample/cra
      -- 
    cra_299_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_194_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(22)); -- 
    -- CP-element group 23:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	21 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	32 
    -- CP-element group 23: marked-successors 
    -- CP-element group 23: 	21 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_update_completed_
      -- CP-element group 23: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Update/$exit
      -- CP-element group 23: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_194_Update/cca
      -- 
    cca_304_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_194_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(23)); -- 
    -- CP-element group 24:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	19 
    -- CP-element group 24: marked-predecessors 
    -- CP-element group 24: 	26 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	26 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_sample_start_
      -- CP-element group 24: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Sample/$entry
      -- CP-element group 24: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Sample/crr
      -- 
    crr_312_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_312_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(24), ack => call_stmt_198_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_24: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_24"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(19) & switch_1p1e_daemon_CP_222_elements(26);
      gj_switch_1p1e_daemon_cp_element_group_24 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(24), clk => clk, reset => reset); --
    end block;
    -- CP-element group 25:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: marked-predecessors 
    -- CP-element group 25: 	27 
    -- CP-element group 25: 	33 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (3) 
      -- CP-element group 25: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_update_start_
      -- CP-element group 25: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Update/$entry
      -- CP-element group 25: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Update/ccr
      -- 
    ccr_317_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_317_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(25), ack => call_stmt_198_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_25: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_25"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(27) & switch_1p1e_daemon_CP_222_elements(33);
      gj_switch_1p1e_daemon_cp_element_group_25 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(25), clk => clk, reset => reset); --
    end block;
    -- CP-element group 26:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	24 
    -- CP-element group 26: successors 
    -- CP-element group 26: marked-successors 
    -- CP-element group 26: 	24 
    -- CP-element group 26: 	15 
    -- CP-element group 26:  members (3) 
      -- CP-element group 26: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_sample_completed_
      -- CP-element group 26: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Sample/$exit
      -- CP-element group 26: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Sample/cra
      -- 
    cra_313_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_198_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(26)); -- 
    -- CP-element group 27:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	32 
    -- CP-element group 27: marked-successors 
    -- CP-element group 27: 	25 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_update_completed_
      -- CP-element group 27: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Update/$exit
      -- CP-element group 27: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/call_stmt_198_Update/cca
      -- 
    cca_318_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_198_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(27)); -- 
    -- CP-element group 28:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	19 
    -- CP-element group 28: marked-predecessors 
    -- CP-element group 28: 	30 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_sample_start_
      -- CP-element group 28: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Sample/$entry
      -- CP-element group 28: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Sample/req
      -- 
    req_326_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_326_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(28), ack => W_to_engine_217_delayed_16_0_199_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_28: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_28"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(19) & switch_1p1e_daemon_CP_222_elements(30);
      gj_switch_1p1e_daemon_cp_element_group_28 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(28), clk => clk, reset => reset); --
    end block;
    -- CP-element group 29:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	33 
    -- CP-element group 29: 	31 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_update_start_
      -- CP-element group 29: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Update/$entry
      -- CP-element group 29: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Update/req
      -- 
    req_331_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_331_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(29), ack => W_to_engine_217_delayed_16_0_199_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(33) & switch_1p1e_daemon_CP_222_elements(31);
      gj_switch_1p1e_daemon_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30: marked-successors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: 	15 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_sample_completed_
      -- CP-element group 30: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Sample/$exit
      -- CP-element group 30: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Sample/ack
      -- 
    ack_327_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_217_delayed_16_0_199_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(30)); -- 
    -- CP-element group 31:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	32 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	29 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_update_completed_
      -- CP-element group 31: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Update/$exit
      -- CP-element group 31: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/assign_stmt_201_Update/ack
      -- 
    ack_332_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_217_delayed_16_0_199_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(31)); -- 
    -- CP-element group 32:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	27 
    -- CP-element group 32: 	23 
    -- CP-element group 32: 	31 
    -- CP-element group 32: marked-predecessors 
    -- CP-element group 32: 	34 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_sample_start_
      -- CP-element group 32: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Sample/$entry
      -- CP-element group 32: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Sample/req
      -- 
    req_340_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_340_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(32), ack => WPIPE_acb_response_to_processor_208_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(27) & switch_1p1e_daemon_CP_222_elements(23) & switch_1p1e_daemon_CP_222_elements(31) & switch_1p1e_daemon_CP_222_elements(34);
      gj_switch_1p1e_daemon_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	32 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	34 
    -- CP-element group 33: marked-successors 
    -- CP-element group 33: 	29 
    -- CP-element group 33: 	25 
    -- CP-element group 33: 	21 
    -- CP-element group 33:  members (6) 
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_sample_completed_
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_update_start_
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Sample/$exit
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Sample/ack
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Update/$entry
      -- CP-element group 33: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Update/req
      -- 
    ack_341_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_response_to_processor_208_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(33)); -- 
    req_345_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_345_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(33), ack => WPIPE_acb_response_to_processor_208_inst_req_1); -- 
    -- CP-element group 34:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	33 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	32 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_update_completed_
      -- CP-element group 34: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Update/$exit
      -- CP-element group 34: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/WPIPE_acb_response_to_processor_208_Update/ack
      -- 
    ack_346_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_response_to_processor_208_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(34)); -- 
    -- CP-element group 35:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	11 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	12 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(35) is a control-delay.
    cp_element_35_delay: control_delay_element  generic map(name => " 35_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(11), ack => switch_1p1e_daemon_CP_222_elements(35), clk => clk, reset =>reset);
    -- CP-element group 36:  join  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: 	14 
    -- CP-element group 36: 	18 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	8 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/do_while_stmt_176_loop_body/$exit
      -- 
    switch_1p1e_daemon_cp_element_group_36: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_36"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(34) & switch_1p1e_daemon_CP_222_elements(14) & switch_1p1e_daemon_CP_222_elements(18);
      gj_switch_1p1e_daemon_cp_element_group_36 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(36), clk => clk, reset => reset); --
    end block;
    -- CP-element group 37:  transition  input  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	7 
    -- CP-element group 37: successors 
    -- CP-element group 37:  members (2) 
      -- CP-element group 37: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_exit/$exit
      -- CP-element group 37: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_exit/ack
      -- 
    ack_351_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_176_branch_ack_0, ack => switch_1p1e_daemon_CP_222_elements(37)); -- 
    -- CP-element group 38:  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	7 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_taken/$exit
      -- CP-element group 38: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/loop_taken/ack
      -- 
    ack_355_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_176_branch_ack_1, ack => switch_1p1e_daemon_CP_222_elements(38)); -- 
    -- CP-element group 39:  transition  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	5 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	3 
    -- CP-element group 39:  members (1) 
      -- CP-element group 39: 	 parallel_block_stmt_174/branch_block_stmt_175/do_while_stmt_176/$exit
      -- 
    switch_1p1e_daemon_CP_222_elements(39) <= switch_1p1e_daemon_CP_222_elements(5);
    -- CP-element group 40:  transition  place  bypass 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	76 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	114 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 parallel_block_stmt_174/branch_block_stmt_214/$exit
      -- CP-element group 40: 	 parallel_block_stmt_174/branch_block_stmt_214/branch_block_stmt_214__exit__
      -- CP-element group 40: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215__exit__
      -- 
    switch_1p1e_daemon_CP_222_elements(40) <= switch_1p1e_daemon_CP_222_elements(76);
    -- CP-element group 41:  transition  place  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	2 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	47 
    -- CP-element group 41:  members (2) 
      -- CP-element group 41: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/$entry
      -- CP-element group 41: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215__entry__
      -- 
    switch_1p1e_daemon_CP_222_elements(41) <= switch_1p1e_daemon_CP_222_elements(2);
    -- CP-element group 42:  merge  place  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	76 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215__exit__
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(42) is bound as output of CP function.
    -- CP-element group 43:  merge  place  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	46 
    -- CP-element group 43:  members (1) 
      -- CP-element group 43: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_back
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(43) is bound as output of CP function.
    -- CP-element group 44:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	49 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	75 
    -- CP-element group 44: 	74 
    -- CP-element group 44:  members (3) 
      -- CP-element group 44: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/condition_done
      -- CP-element group 44: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_exit/$entry
      -- CP-element group 44: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_taken/$entry
      -- 
    switch_1p1e_daemon_CP_222_elements(44) <= switch_1p1e_daemon_CP_222_elements(49);
    -- CP-element group 45:  branch  place  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	73 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_body_done
      -- 
    switch_1p1e_daemon_CP_222_elements(45) <= switch_1p1e_daemon_CP_222_elements(73);
    -- CP-element group 46:  transition  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	43 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (1) 
      -- CP-element group 46: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/back_edge_to_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(46) <= switch_1p1e_daemon_CP_222_elements(43);
    -- CP-element group 47:  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	41 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/first_time_through_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(47) <= switch_1p1e_daemon_CP_222_elements(41);
    -- CP-element group 48:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	52 
    -- CP-element group 48: 	50 
    -- CP-element group 48: 	72 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/$entry
      -- CP-element group 48: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/loop_body_start
      -- CP-element group 48: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/phi_stmt_217_sample_start_
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	56 
    -- CP-element group 49: 	72 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	44 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/condition_evaluated
      -- 
    condition_evaluated_378_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_378_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(49), ack => do_while_stmt_215_branch_req_0); -- 
    switch_1p1e_daemon_cp_element_group_49: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_49"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(56) & switch_1p1e_daemon_CP_222_elements(72);
      gj_switch_1p1e_daemon_cp_element_group_49 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(49), clk => clk, reset => reset); --
    end block;
    -- CP-element group 50:  join  transition  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: marked-predecessors 
    -- CP-element group 50: 	56 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	53 
    -- CP-element group 50:  members (1) 
      -- CP-element group 50: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/aggregated_phi_sample_req
      -- 
    switch_1p1e_daemon_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(48) & switch_1p1e_daemon_CP_222_elements(56);
      gj_switch_1p1e_daemon_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	55 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	73 
    -- CP-element group 51:  members (1) 
      -- CP-element group 51: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(51) is a control-delay.
    cp_element_51_delay: control_delay_element  generic map(name => " 51_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(55), ack => switch_1p1e_daemon_CP_222_elements(51), clk => clk, reset =>reset);
    -- CP-element group 52:  join  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	48 
    -- CP-element group 52: marked-predecessors 
    -- CP-element group 52: 	63 
    -- CP-element group 52: 	59 
    -- CP-element group 52: 	67 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	54 
    -- CP-element group 52:  members (2) 
      -- CP-element group 52: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/aggregated_phi_update_req
      -- CP-element group 52: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/phi_stmt_217_update_start_
      -- 
    switch_1p1e_daemon_cp_element_group_52: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_52"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(48) & switch_1p1e_daemon_CP_222_elements(63) & switch_1p1e_daemon_CP_222_elements(59) & switch_1p1e_daemon_CP_222_elements(67);
      gj_switch_1p1e_daemon_cp_element_group_52 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(52), clk => clk, reset => reset); --
    end block;
    -- CP-element group 53:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	50 
    -- CP-element group 53: marked-predecessors 
    -- CP-element group 53: 	56 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	55 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_sample_start_
      -- CP-element group 53: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Sample/$entry
      -- CP-element group 53: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Sample/rr
      -- 
    rr_396_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_396_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(53), ack => RPIPE_acb_master_request_from_engine_219_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_53: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_53"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(50) & switch_1p1e_daemon_CP_222_elements(56);
      gj_switch_1p1e_daemon_cp_element_group_53 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(53), clk => clk, reset => reset); --
    end block;
    -- CP-element group 54:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	52 
    -- CP-element group 54: 	55 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	56 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_update_start_
      -- CP-element group 54: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Update/$entry
      -- CP-element group 54: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Update/cr
      -- 
    cr_401_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_401_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(54), ack => RPIPE_acb_master_request_from_engine_219_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(52) & switch_1p1e_daemon_CP_222_elements(55);
      gj_switch_1p1e_daemon_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	53 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	51 
    -- CP-element group 55: 	73 
    -- CP-element group 55: 	54 
    -- CP-element group 55:  members (5) 
      -- CP-element group 55: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/aggregated_phi_sample_ack
      -- CP-element group 55: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/phi_stmt_217_sample_completed_
      -- CP-element group 55: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_sample_completed_
      -- CP-element group 55: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Sample/$exit
      -- CP-element group 55: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Sample/ra
      -- 
    ra_397_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_master_request_from_engine_219_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(55)); -- 
    -- CP-element group 56:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	54 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	49 
    -- CP-element group 56: 	61 
    -- CP-element group 56: 	57 
    -- CP-element group 56: 	65 
    -- CP-element group 56: marked-successors 
    -- CP-element group 56: 	53 
    -- CP-element group 56: 	50 
    -- CP-element group 56:  members (5) 
      -- CP-element group 56: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Update/ca
      -- CP-element group 56: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/aggregated_phi_update_ack
      -- CP-element group 56: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/phi_stmt_217_update_completed_
      -- CP-element group 56: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_update_completed_
      -- CP-element group 56: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/RPIPE_acb_master_request_from_engine_219_Update/$exit
      -- 
    ca_402_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_master_request_from_engine_219_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(56)); -- 
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	56 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	59 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_sample_start_
      -- CP-element group 57: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Sample/$entry
      -- CP-element group 57: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Sample/crr
      -- 
    crr_410_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_410_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(57), ack => call_stmt_233_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(56) & switch_1p1e_daemon_CP_222_elements(59);
      gj_switch_1p1e_daemon_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: marked-predecessors 
    -- CP-element group 58: 	70 
    -- CP-element group 58: 	60 
    -- CP-element group 58: successors 
    -- CP-element group 58: 	60 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_update_start_
      -- CP-element group 58: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Update/$entry
      -- CP-element group 58: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Update/ccr
      -- 
    ccr_415_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_415_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(58), ack => call_stmt_233_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_58: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_58"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(70) & switch_1p1e_daemon_CP_222_elements(60);
      gj_switch_1p1e_daemon_cp_element_group_58 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(58), clk => clk, reset => reset); --
    end block;
    -- CP-element group 59:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: marked-successors 
    -- CP-element group 59: 	52 
    -- CP-element group 59: 	57 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_sample_completed_
      -- CP-element group 59: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Sample/$exit
      -- CP-element group 59: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Sample/cra
      -- 
    cra_411_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_233_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(59)); -- 
    -- CP-element group 60:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	58 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	69 
    -- CP-element group 60: marked-successors 
    -- CP-element group 60: 	58 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_update_completed_
      -- CP-element group 60: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Update/$exit
      -- CP-element group 60: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_233_Update/cca
      -- 
    cca_416_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 60_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_233_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(60)); -- 
    -- CP-element group 61:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	56 
    -- CP-element group 61: marked-predecessors 
    -- CP-element group 61: 	63 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	63 
    -- CP-element group 61:  members (3) 
      -- CP-element group 61: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_sample_start_
      -- CP-element group 61: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Sample/$entry
      -- CP-element group 61: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Sample/crr
      -- 
    crr_424_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_424_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(61), ack => call_stmt_237_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(56) & switch_1p1e_daemon_CP_222_elements(63);
      gj_switch_1p1e_daemon_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: marked-predecessors 
    -- CP-element group 62: 	70 
    -- CP-element group 62: 	64 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	64 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_update_start_
      -- CP-element group 62: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Update/$entry
      -- CP-element group 62: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Update/ccr
      -- 
    ccr_429_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_429_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(62), ack => call_stmt_237_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_62: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_62"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(70) & switch_1p1e_daemon_CP_222_elements(64);
      gj_switch_1p1e_daemon_cp_element_group_62 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(62), clk => clk, reset => reset); --
    end block;
    -- CP-element group 63:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	61 
    -- CP-element group 63: successors 
    -- CP-element group 63: marked-successors 
    -- CP-element group 63: 	52 
    -- CP-element group 63: 	61 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_sample_completed_
      -- CP-element group 63: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Sample/$exit
      -- CP-element group 63: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Sample/cra
      -- 
    cra_425_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_237_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(63)); -- 
    -- CP-element group 64:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	62 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	69 
    -- CP-element group 64: marked-successors 
    -- CP-element group 64: 	62 
    -- CP-element group 64:  members (3) 
      -- CP-element group 64: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_update_completed_
      -- CP-element group 64: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Update/$exit
      -- CP-element group 64: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/call_stmt_237_Update/cca
      -- 
    cca_430_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 64_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_237_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(64)); -- 
    -- CP-element group 65:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	56 
    -- CP-element group 65: marked-predecessors 
    -- CP-element group 65: 	67 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	67 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_sample_start_
      -- CP-element group 65: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Sample/$entry
      -- CP-element group 65: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Sample/req
      -- 
    req_438_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_438_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(65), ack => W_to_engine_269_delayed_16_0_238_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_65: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_65"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(56) & switch_1p1e_daemon_CP_222_elements(67);
      gj_switch_1p1e_daemon_cp_element_group_65 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(65), clk => clk, reset => reset); --
    end block;
    -- CP-element group 66:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: marked-predecessors 
    -- CP-element group 66: 	70 
    -- CP-element group 66: 	68 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_update_start_
      -- CP-element group 66: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Update/$entry
      -- CP-element group 66: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Update/req
      -- 
    req_443_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_443_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(66), ack => W_to_engine_269_delayed_16_0_238_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_66: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_66"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(70) & switch_1p1e_daemon_CP_222_elements(68);
      gj_switch_1p1e_daemon_cp_element_group_66 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(66), clk => clk, reset => reset); --
    end block;
    -- CP-element group 67:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: 	65 
    -- CP-element group 67: successors 
    -- CP-element group 67: marked-successors 
    -- CP-element group 67: 	52 
    -- CP-element group 67: 	65 
    -- CP-element group 67:  members (3) 
      -- CP-element group 67: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_sample_completed_
      -- CP-element group 67: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Sample/$exit
      -- CP-element group 67: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Sample/ack
      -- 
    ack_439_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 67_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_269_delayed_16_0_238_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(67)); -- 
    -- CP-element group 68:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68: 	69 
    -- CP-element group 68: marked-successors 
    -- CP-element group 68: 	66 
    -- CP-element group 68:  members (3) 
      -- CP-element group 68: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_update_completed_
      -- CP-element group 68: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Update/$exit
      -- CP-element group 68: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/assign_stmt_240_Update/ack
      -- 
    ack_444_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_269_delayed_16_0_238_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(68)); -- 
    -- CP-element group 69:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	68 
    -- CP-element group 69: 	64 
    -- CP-element group 69: 	60 
    -- CP-element group 69: marked-predecessors 
    -- CP-element group 69: 	71 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	70 
    -- CP-element group 69:  members (3) 
      -- CP-element group 69: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_sample_start_
      -- CP-element group 69: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Sample/$entry
      -- CP-element group 69: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Sample/req
      -- 
    req_452_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_452_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(69), ack => WPIPE_acb_master_response_to_engine_247_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_69: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_69"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(68) & switch_1p1e_daemon_CP_222_elements(64) & switch_1p1e_daemon_CP_222_elements(60) & switch_1p1e_daemon_CP_222_elements(71);
      gj_switch_1p1e_daemon_cp_element_group_69 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(69), clk => clk, reset => reset); --
    end block;
    -- CP-element group 70:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	69 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	71 
    -- CP-element group 70: marked-successors 
    -- CP-element group 70: 	58 
    -- CP-element group 70: 	66 
    -- CP-element group 70: 	62 
    -- CP-element group 70:  members (6) 
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_sample_completed_
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_update_start_
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Sample/$exit
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Sample/ack
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Update/$entry
      -- CP-element group 70: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Update/req
      -- 
    ack_453_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 70_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_master_response_to_engine_247_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(70)); -- 
    req_457_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_457_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(70), ack => WPIPE_acb_master_response_to_engine_247_inst_req_1); -- 
    -- CP-element group 71:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	70 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	73 
    -- CP-element group 71: marked-successors 
    -- CP-element group 71: 	69 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_update_completed_
      -- CP-element group 71: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Update/$exit
      -- CP-element group 71: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/WPIPE_acb_master_response_to_engine_247_Update/ack
      -- 
    ack_458_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_master_response_to_engine_247_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(71)); -- 
    -- CP-element group 72:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	48 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	49 
    -- CP-element group 72:  members (1) 
      -- CP-element group 72: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(72) is a control-delay.
    cp_element_72_delay: control_delay_element  generic map(name => " 72_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(48), ack => switch_1p1e_daemon_CP_222_elements(72), clk => clk, reset =>reset);
    -- CP-element group 73:  join  transition  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	55 
    -- CP-element group 73: 	51 
    -- CP-element group 73: 	71 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	45 
    -- CP-element group 73:  members (1) 
      -- CP-element group 73: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/do_while_stmt_215_loop_body/$exit
      -- 
    switch_1p1e_daemon_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(55) & switch_1p1e_daemon_CP_222_elements(51) & switch_1p1e_daemon_CP_222_elements(71);
      gj_switch_1p1e_daemon_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	44 
    -- CP-element group 74: successors 
    -- CP-element group 74:  members (2) 
      -- CP-element group 74: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_exit/$exit
      -- CP-element group 74: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_exit/ack
      -- 
    ack_463_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_215_branch_ack_0, ack => switch_1p1e_daemon_CP_222_elements(74)); -- 
    -- CP-element group 75:  transition  input  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	44 
    -- CP-element group 75: successors 
    -- CP-element group 75:  members (2) 
      -- CP-element group 75: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_taken/$exit
      -- CP-element group 75: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/loop_taken/ack
      -- 
    ack_467_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_215_branch_ack_1, ack => switch_1p1e_daemon_CP_222_elements(75)); -- 
    -- CP-element group 76:  transition  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	42 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	40 
    -- CP-element group 76:  members (1) 
      -- CP-element group 76: 	 parallel_block_stmt_174/branch_block_stmt_214/do_while_stmt_215/$exit
      -- 
    switch_1p1e_daemon_CP_222_elements(76) <= switch_1p1e_daemon_CP_222_elements(42);
    -- CP-element group 77:  transition  place  bypass 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	113 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	114 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 parallel_block_stmt_174/branch_block_stmt_253/$exit
      -- CP-element group 77: 	 parallel_block_stmt_174/branch_block_stmt_253/branch_block_stmt_253__exit__
      -- CP-element group 77: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254__exit__
      -- 
    switch_1p1e_daemon_CP_222_elements(77) <= switch_1p1e_daemon_CP_222_elements(113);
    -- CP-element group 78:  transition  place  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	2 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	84 
    -- CP-element group 78:  members (2) 
      -- CP-element group 78: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/$entry
      -- CP-element group 78: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254__entry__
      -- 
    switch_1p1e_daemon_CP_222_elements(78) <= switch_1p1e_daemon_CP_222_elements(2);
    -- CP-element group 79:  merge  place  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	113 
    -- CP-element group 79:  members (1) 
      -- CP-element group 79: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254__exit__
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(79) is bound as output of CP function.
    -- CP-element group 80:  merge  place  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	83 
    -- CP-element group 80:  members (1) 
      -- CP-element group 80: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_back
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(80) is bound as output of CP function.
    -- CP-element group 81:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	86 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	111 
    -- CP-element group 81: 	112 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/condition_done
      -- CP-element group 81: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_exit/$entry
      -- CP-element group 81: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_taken/$entry
      -- 
    switch_1p1e_daemon_CP_222_elements(81) <= switch_1p1e_daemon_CP_222_elements(86);
    -- CP-element group 82:  branch  place  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	110 
    -- CP-element group 82: successors 
    -- CP-element group 82:  members (1) 
      -- CP-element group 82: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_body_done
      -- 
    switch_1p1e_daemon_CP_222_elements(82) <= switch_1p1e_daemon_CP_222_elements(110);
    -- CP-element group 83:  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	80 
    -- CP-element group 83: successors 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/back_edge_to_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(83) <= switch_1p1e_daemon_CP_222_elements(80);
    -- CP-element group 84:  transition  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	78 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (1) 
      -- CP-element group 84: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/first_time_through_loop_body
      -- 
    switch_1p1e_daemon_CP_222_elements(84) <= switch_1p1e_daemon_CP_222_elements(78);
    -- CP-element group 85:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	89 
    -- CP-element group 85: 	87 
    -- CP-element group 85: 	109 
    -- CP-element group 85:  members (3) 
      -- CP-element group 85: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/$entry
      -- CP-element group 85: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/loop_body_start
      -- CP-element group 85: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/phi_stmt_256_sample_start_
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(85) is bound as output of CP function.
    -- CP-element group 86:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	93 
    -- CP-element group 86: 	109 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	81 
    -- CP-element group 86:  members (1) 
      -- CP-element group 86: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/condition_evaluated
      -- 
    condition_evaluated_490_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_490_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(86), ack => do_while_stmt_254_branch_req_0); -- 
    switch_1p1e_daemon_cp_element_group_86: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 15);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_86"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(93) & switch_1p1e_daemon_CP_222_elements(109);
      gj_switch_1p1e_daemon_cp_element_group_86 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(86), clk => clk, reset => reset); --
    end block;
    -- CP-element group 87:  join  transition  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	85 
    -- CP-element group 87: marked-predecessors 
    -- CP-element group 87: 	93 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	90 
    -- CP-element group 87:  members (1) 
      -- CP-element group 87: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/aggregated_phi_sample_req
      -- 
    switch_1p1e_daemon_cp_element_group_87: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_87"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(85) & switch_1p1e_daemon_CP_222_elements(93);
      gj_switch_1p1e_daemon_cp_element_group_87 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(87), clk => clk, reset => reset); --
    end block;
    -- CP-element group 88:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	92 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	110 
    -- CP-element group 88:  members (1) 
      -- CP-element group 88: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/aggregated_phi_sample_ack_d
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(88) is a control-delay.
    cp_element_88_delay: control_delay_element  generic map(name => " 88_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(92), ack => switch_1p1e_daemon_CP_222_elements(88), clk => clk, reset =>reset);
    -- CP-element group 89:  join  transition  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	85 
    -- CP-element group 89: marked-predecessors 
    -- CP-element group 89: 	96 
    -- CP-element group 89: 	104 
    -- CP-element group 89: 	100 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	91 
    -- CP-element group 89:  members (2) 
      -- CP-element group 89: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/aggregated_phi_update_req
      -- CP-element group 89: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/phi_stmt_256_update_start_
      -- 
    switch_1p1e_daemon_cp_element_group_89: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 1,2 => 1,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_89"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(85) & switch_1p1e_daemon_CP_222_elements(96) & switch_1p1e_daemon_CP_222_elements(104) & switch_1p1e_daemon_CP_222_elements(100);
      gj_switch_1p1e_daemon_cp_element_group_89 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(89), clk => clk, reset => reset); --
    end block;
    -- CP-element group 90:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	87 
    -- CP-element group 90: marked-predecessors 
    -- CP-element group 90: 	93 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	92 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_sample_start_
      -- CP-element group 90: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Sample/$entry
      -- CP-element group 90: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Sample/rr
      -- 
    rr_508_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_508_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(90), ack => RPIPE_acb_request_from_downstream_258_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_90: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_90"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(87) & switch_1p1e_daemon_CP_222_elements(93);
      gj_switch_1p1e_daemon_cp_element_group_90 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(90), clk => clk, reset => reset); --
    end block;
    -- CP-element group 91:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	92 
    -- CP-element group 91: 	89 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	93 
    -- CP-element group 91:  members (3) 
      -- CP-element group 91: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_update_start_
      -- CP-element group 91: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Update/$entry
      -- CP-element group 91: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Update/cr
      -- 
    cr_513_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_513_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(91), ack => RPIPE_acb_request_from_downstream_258_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_91: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_91"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(92) & switch_1p1e_daemon_CP_222_elements(89);
      gj_switch_1p1e_daemon_cp_element_group_91 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(91), clk => clk, reset => reset); --
    end block;
    -- CP-element group 92:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	90 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	88 
    -- CP-element group 92: 	91 
    -- CP-element group 92: 	110 
    -- CP-element group 92:  members (5) 
      -- CP-element group 92: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/aggregated_phi_sample_ack
      -- CP-element group 92: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/phi_stmt_256_sample_completed_
      -- CP-element group 92: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_sample_completed_
      -- CP-element group 92: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Sample/$exit
      -- CP-element group 92: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Sample/ra
      -- 
    ra_509_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_request_from_downstream_258_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(92)); -- 
    -- CP-element group 93:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	91 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	94 
    -- CP-element group 93: 	86 
    -- CP-element group 93: 	98 
    -- CP-element group 93: 	102 
    -- CP-element group 93: marked-successors 
    -- CP-element group 93: 	87 
    -- CP-element group 93: 	90 
    -- CP-element group 93:  members (5) 
      -- CP-element group 93: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/aggregated_phi_update_ack
      -- CP-element group 93: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/phi_stmt_256_update_completed_
      -- CP-element group 93: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_update_completed_
      -- CP-element group 93: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Update/$exit
      -- CP-element group 93: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/RPIPE_acb_request_from_downstream_258_Update/ca
      -- 
    ca_514_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 93_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_acb_request_from_downstream_258_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(93)); -- 
    -- CP-element group 94:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	93 
    -- CP-element group 94: marked-predecessors 
    -- CP-element group 94: 	96 
    -- CP-element group 94: successors 
    -- CP-element group 94: 	96 
    -- CP-element group 94:  members (3) 
      -- CP-element group 94: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_sample_start_
      -- CP-element group 94: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Sample/$entry
      -- CP-element group 94: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Sample/crr
      -- 
    crr_522_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_522_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(94), ack => call_stmt_272_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_94: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_94"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(93) & switch_1p1e_daemon_CP_222_elements(96);
      gj_switch_1p1e_daemon_cp_element_group_94 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(94), clk => clk, reset => reset); --
    end block;
    -- CP-element group 95:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: marked-predecessors 
    -- CP-element group 95: 	97 
    -- CP-element group 95: 	107 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	97 
    -- CP-element group 95:  members (3) 
      -- CP-element group 95: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_update_start_
      -- CP-element group 95: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Update/$entry
      -- CP-element group 95: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Update/ccr
      -- 
    ccr_527_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_527_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(95), ack => call_stmt_272_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_95: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_95"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(97) & switch_1p1e_daemon_CP_222_elements(107);
      gj_switch_1p1e_daemon_cp_element_group_95 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(95), clk => clk, reset => reset); --
    end block;
    -- CP-element group 96:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: successors 
    -- CP-element group 96: marked-successors 
    -- CP-element group 96: 	94 
    -- CP-element group 96: 	89 
    -- CP-element group 96:  members (3) 
      -- CP-element group 96: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_sample_completed_
      -- CP-element group 96: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Sample/$exit
      -- CP-element group 96: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Sample/cra
      -- 
    cra_523_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 96_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_272_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(96)); -- 
    -- CP-element group 97:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	95 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	106 
    -- CP-element group 97: marked-successors 
    -- CP-element group 97: 	95 
    -- CP-element group 97:  members (3) 
      -- CP-element group 97: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_update_completed_
      -- CP-element group 97: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Update/$exit
      -- CP-element group 97: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_272_Update/cca
      -- 
    cca_528_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 97_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_272_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(97)); -- 
    -- CP-element group 98:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	93 
    -- CP-element group 98: marked-predecessors 
    -- CP-element group 98: 	100 
    -- CP-element group 98: successors 
    -- CP-element group 98: 	100 
    -- CP-element group 98:  members (3) 
      -- CP-element group 98: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_sample_start_
      -- CP-element group 98: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Sample/$entry
      -- CP-element group 98: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Sample/crr
      -- 
    crr_536_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_536_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(98), ack => call_stmt_276_call_req_0); -- 
    switch_1p1e_daemon_cp_element_group_98: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_98"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(93) & switch_1p1e_daemon_CP_222_elements(100);
      gj_switch_1p1e_daemon_cp_element_group_98 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(98), clk => clk, reset => reset); --
    end block;
    -- CP-element group 99:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: marked-predecessors 
    -- CP-element group 99: 	101 
    -- CP-element group 99: 	107 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	101 
    -- CP-element group 99:  members (3) 
      -- CP-element group 99: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_update_start_
      -- CP-element group 99: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Update/$entry
      -- CP-element group 99: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Update/ccr
      -- 
    ccr_541_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_541_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(99), ack => call_stmt_276_call_req_1); -- 
    switch_1p1e_daemon_cp_element_group_99: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "switch_1p1e_daemon_cp_element_group_99"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(101) & switch_1p1e_daemon_CP_222_elements(107);
      gj_switch_1p1e_daemon_cp_element_group_99 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(99), clk => clk, reset => reset); --
    end block;
    -- CP-element group 100:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	98 
    -- CP-element group 100: successors 
    -- CP-element group 100: marked-successors 
    -- CP-element group 100: 	89 
    -- CP-element group 100: 	98 
    -- CP-element group 100:  members (3) 
      -- CP-element group 100: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_sample_completed_
      -- CP-element group 100: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Sample/$exit
      -- CP-element group 100: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Sample/cra
      -- 
    cra_537_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 100_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_276_call_ack_0, ack => switch_1p1e_daemon_CP_222_elements(100)); -- 
    -- CP-element group 101:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	99 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	106 
    -- CP-element group 101: marked-successors 
    -- CP-element group 101: 	99 
    -- CP-element group 101:  members (3) 
      -- CP-element group 101: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_update_completed_
      -- CP-element group 101: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Update/$exit
      -- CP-element group 101: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/call_stmt_276_Update/cca
      -- 
    cca_542_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 101_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_276_call_ack_1, ack => switch_1p1e_daemon_CP_222_elements(101)); -- 
    -- CP-element group 102:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	93 
    -- CP-element group 102: marked-predecessors 
    -- CP-element group 102: 	104 
    -- CP-element group 102: successors 
    -- CP-element group 102: 	104 
    -- CP-element group 102:  members (3) 
      -- CP-element group 102: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_sample_start_
      -- CP-element group 102: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Sample/$entry
      -- CP-element group 102: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Sample/req
      -- 
    req_550_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_550_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(102), ack => W_to_engine_321_delayed_16_0_277_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_102: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 39) := "switch_1p1e_daemon_cp_element_group_102"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(93) & switch_1p1e_daemon_CP_222_elements(104);
      gj_switch_1p1e_daemon_cp_element_group_102 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(102), clk => clk, reset => reset); --
    end block;
    -- CP-element group 103:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: marked-predecessors 
    -- CP-element group 103: 	105 
    -- CP-element group 103: 	107 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	105 
    -- CP-element group 103:  members (3) 
      -- CP-element group 103: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_update_start_
      -- CP-element group 103: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Update/$entry
      -- CP-element group 103: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Update/req
      -- 
    req_555_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_555_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(103), ack => W_to_engine_321_delayed_16_0_277_inst_req_1); -- 
    switch_1p1e_daemon_cp_element_group_103: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "switch_1p1e_daemon_cp_element_group_103"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(105) & switch_1p1e_daemon_CP_222_elements(107);
      gj_switch_1p1e_daemon_cp_element_group_103 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(103), clk => clk, reset => reset); --
    end block;
    -- CP-element group 104:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	102 
    -- CP-element group 104: successors 
    -- CP-element group 104: marked-successors 
    -- CP-element group 104: 	89 
    -- CP-element group 104: 	102 
    -- CP-element group 104:  members (3) 
      -- CP-element group 104: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_sample_completed_
      -- CP-element group 104: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Sample/$exit
      -- CP-element group 104: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Sample/ack
      -- 
    ack_551_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 104_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_321_delayed_16_0_277_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(104)); -- 
    -- CP-element group 105:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	103 
    -- CP-element group 105: successors 
    -- CP-element group 105: 	106 
    -- CP-element group 105: marked-successors 
    -- CP-element group 105: 	103 
    -- CP-element group 105:  members (3) 
      -- CP-element group 105: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_update_completed_
      -- CP-element group 105: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Update/$exit
      -- CP-element group 105: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/assign_stmt_279_Update/ack
      -- 
    ack_556_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 105_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_engine_321_delayed_16_0_277_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(105)); -- 
    -- CP-element group 106:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	97 
    -- CP-element group 106: 	105 
    -- CP-element group 106: 	101 
    -- CP-element group 106: marked-predecessors 
    -- CP-element group 106: 	108 
    -- CP-element group 106: successors 
    -- CP-element group 106: 	107 
    -- CP-element group 106:  members (3) 
      -- CP-element group 106: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_sample_start_
      -- CP-element group 106: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Sample/$entry
      -- CP-element group 106: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Sample/req
      -- 
    req_564_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_564_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(106), ack => WPIPE_acb_response_to_downstream_286_inst_req_0); -- 
    switch_1p1e_daemon_cp_element_group_106: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 1,1 => 1,2 => 1,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 39) := "switch_1p1e_daemon_cp_element_group_106"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(97) & switch_1p1e_daemon_CP_222_elements(105) & switch_1p1e_daemon_CP_222_elements(101) & switch_1p1e_daemon_CP_222_elements(108);
      gj_switch_1p1e_daemon_cp_element_group_106 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(106), clk => clk, reset => reset); --
    end block;
    -- CP-element group 107:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	106 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	108 
    -- CP-element group 107: marked-successors 
    -- CP-element group 107: 	95 
    -- CP-element group 107: 	99 
    -- CP-element group 107: 	103 
    -- CP-element group 107:  members (6) 
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_sample_completed_
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_update_start_
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Sample/$exit
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Sample/ack
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Update/$entry
      -- CP-element group 107: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Update/req
      -- 
    ack_565_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 107_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_response_to_downstream_286_inst_ack_0, ack => switch_1p1e_daemon_CP_222_elements(107)); -- 
    req_569_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_569_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => switch_1p1e_daemon_CP_222_elements(107), ack => WPIPE_acb_response_to_downstream_286_inst_req_1); -- 
    -- CP-element group 108:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	107 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	110 
    -- CP-element group 108: marked-successors 
    -- CP-element group 108: 	106 
    -- CP-element group 108:  members (3) 
      -- CP-element group 108: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_update_completed_
      -- CP-element group 108: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Update/$exit
      -- CP-element group 108: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/WPIPE_acb_response_to_downstream_286_Update/ack
      -- 
    ack_570_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 108_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_acb_response_to_downstream_286_inst_ack_1, ack => switch_1p1e_daemon_CP_222_elements(108)); -- 
    -- CP-element group 109:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	85 
    -- CP-element group 109: successors 
    -- CP-element group 109: 	86 
    -- CP-element group 109:  members (1) 
      -- CP-element group 109: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group switch_1p1e_daemon_CP_222_elements(109) is a control-delay.
    cp_element_109_delay: control_delay_element  generic map(name => " 109_delay", delay_value => 1)  port map(req => switch_1p1e_daemon_CP_222_elements(85), ack => switch_1p1e_daemon_CP_222_elements(109), clk => clk, reset =>reset);
    -- CP-element group 110:  join  transition  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	88 
    -- CP-element group 110: 	92 
    -- CP-element group 110: 	108 
    -- CP-element group 110: successors 
    -- CP-element group 110: 	82 
    -- CP-element group 110:  members (1) 
      -- CP-element group 110: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/do_while_stmt_254_loop_body/$exit
      -- 
    switch_1p1e_daemon_cp_element_group_110: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "switch_1p1e_daemon_cp_element_group_110"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(88) & switch_1p1e_daemon_CP_222_elements(92) & switch_1p1e_daemon_CP_222_elements(108);
      gj_switch_1p1e_daemon_cp_element_group_110 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(110), clk => clk, reset => reset); --
    end block;
    -- CP-element group 111:  transition  input  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	81 
    -- CP-element group 111: successors 
    -- CP-element group 111:  members (2) 
      -- CP-element group 111: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_exit/$exit
      -- CP-element group 111: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_exit/ack
      -- 
    ack_575_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 111_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_254_branch_ack_0, ack => switch_1p1e_daemon_CP_222_elements(111)); -- 
    -- CP-element group 112:  transition  input  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	81 
    -- CP-element group 112: successors 
    -- CP-element group 112:  members (2) 
      -- CP-element group 112: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_taken/$exit
      -- CP-element group 112: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/loop_taken/ack
      -- 
    ack_579_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 112_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_254_branch_ack_1, ack => switch_1p1e_daemon_CP_222_elements(112)); -- 
    -- CP-element group 113:  transition  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	79 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	77 
    -- CP-element group 113:  members (1) 
      -- CP-element group 113: 	 parallel_block_stmt_174/branch_block_stmt_253/do_while_stmt_254/$exit
      -- 
    switch_1p1e_daemon_CP_222_elements(113) <= switch_1p1e_daemon_CP_222_elements(79);
    -- CP-element group 114:  join  transition  bypass 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	40 
    -- CP-element group 114: 	77 
    -- CP-element group 114: 	3 
    -- CP-element group 114: successors 
    -- CP-element group 114:  members (2) 
      -- CP-element group 114: 	 $exit
      -- CP-element group 114: 	 parallel_block_stmt_174/$exit
      -- 
    switch_1p1e_daemon_cp_element_group_114: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 39) := "switch_1p1e_daemon_cp_element_group_114"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= switch_1p1e_daemon_CP_222_elements(40) & switch_1p1e_daemon_CP_222_elements(77) & switch_1p1e_daemon_CP_222_elements(3);
      gj_switch_1p1e_daemon_cp_element_group_114 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(114), clk => clk, reset => reset); --
    end block;
    switch_1p1e_daemon_do_while_stmt_176_terminator_356: loop_terminator -- 
      generic map (name => " switch_1p1e_daemon_do_while_stmt_176_terminator_356", max_iterations_in_flight =>15) 
      port map(loop_body_exit => switch_1p1e_daemon_CP_222_elements(8),loop_continue => switch_1p1e_daemon_CP_222_elements(38),loop_terminate => switch_1p1e_daemon_CP_222_elements(37),loop_back => switch_1p1e_daemon_CP_222_elements(6),loop_exit => switch_1p1e_daemon_CP_222_elements(5),clk => clk, reset => reset); -- 
    entry_tmerge_267_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= switch_1p1e_daemon_CP_222_elements(9);
        preds(1)  <= switch_1p1e_daemon_CP_222_elements(10);
        entry_tmerge_267 : transition_merge -- 
          generic map(name => " entry_tmerge_267")
          port map (preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(11));
          -- 
    end block;
    switch_1p1e_daemon_do_while_stmt_215_terminator_468: loop_terminator -- 
      generic map (name => " switch_1p1e_daemon_do_while_stmt_215_terminator_468", max_iterations_in_flight =>15) 
      port map(loop_body_exit => switch_1p1e_daemon_CP_222_elements(45),loop_continue => switch_1p1e_daemon_CP_222_elements(75),loop_terminate => switch_1p1e_daemon_CP_222_elements(74),loop_back => switch_1p1e_daemon_CP_222_elements(43),loop_exit => switch_1p1e_daemon_CP_222_elements(42),clk => clk, reset => reset); -- 
    entry_tmerge_379_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= switch_1p1e_daemon_CP_222_elements(46);
        preds(1)  <= switch_1p1e_daemon_CP_222_elements(47);
        entry_tmerge_379 : transition_merge -- 
          generic map(name => " entry_tmerge_379")
          port map (preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(48));
          -- 
    end block;
    switch_1p1e_daemon_do_while_stmt_254_terminator_580: loop_terminator -- 
      generic map (name => " switch_1p1e_daemon_do_while_stmt_254_terminator_580", max_iterations_in_flight =>15) 
      port map(loop_body_exit => switch_1p1e_daemon_CP_222_elements(82),loop_continue => switch_1p1e_daemon_CP_222_elements(112),loop_terminate => switch_1p1e_daemon_CP_222_elements(111),loop_back => switch_1p1e_daemon_CP_222_elements(80),loop_exit => switch_1p1e_daemon_CP_222_elements(79),clk => clk, reset => reset); -- 
    entry_tmerge_491_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= switch_1p1e_daemon_CP_222_elements(83);
        preds(1)  <= switch_1p1e_daemon_CP_222_elements(84);
        entry_tmerge_491 : transition_merge -- 
          generic map(name => " entry_tmerge_491")
          port map (preds => preds, symbol_out => switch_1p1e_daemon_CP_222_elements(85));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal RPIPE_CLUSTER_ID_172_wire : std_logic_vector(7 downto 0);
    signal RPIPE_acb_master_request_from_engine_219_wire : std_logic_vector(109 downto 0);
    signal RPIPE_acb_request_from_downstream_258_wire : std_logic_vector(109 downto 0);
    signal RPIPE_acb_request_from_processor_180_wire : std_logic_vector(109 downto 0);
    signal a36_185 : std_logic_vector(35 downto 0);
    signal a36_224 : std_logic_vector(35 downto 0);
    signal a36_263 : std_logic_vector(35 downto 0);
    signal cluster_id_173 : std_logic_vector(7 downto 0);
    signal dreq_256 : std_logic_vector(109 downto 0);
    signal dresp_downstream_276 : std_logic_vector(64 downto 0);
    signal dresp_engine_272 : std_logic_vector(64 downto 0);
    signal ereq_217 : std_logic_vector(109 downto 0);
    signal eresp_downstream_237 : std_logic_vector(64 downto 0);
    signal eresp_engine_233 : std_logic_vector(64 downto 0);
    signal konst_212_wire_constant : std_logic_vector(0 downto 0);
    signal konst_251_wire_constant : std_logic_vector(0 downto 0);
    signal konst_290_wire_constant : std_logic_vector(0 downto 0);
    signal preq_178 : std_logic_vector(109 downto 0);
    signal presp_downstream_198 : std_logic_vector(64 downto 0);
    signal presp_engine_194 : std_logic_vector(64 downto 0);
    signal resp_207 : std_logic_vector(64 downto 0);
    signal resp_246 : std_logic_vector(64 downto 0);
    signal resp_285 : std_logic_vector(64 downto 0);
    signal to_downstream_190 : std_logic_vector(0 downto 0);
    signal to_downstream_229 : std_logic_vector(0 downto 0);
    signal to_downstream_268 : std_logic_vector(0 downto 0);
    signal to_engine_190 : std_logic_vector(0 downto 0);
    signal to_engine_217_delayed_16_0_201 : std_logic_vector(0 downto 0);
    signal to_engine_229 : std_logic_vector(0 downto 0);
    signal to_engine_268 : std_logic_vector(0 downto 0);
    signal to_engine_269_delayed_16_0_240 : std_logic_vector(0 downto 0);
    signal to_engine_321_delayed_16_0_279 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_212_wire_constant <= "1";
    konst_251_wire_constant <= "1";
    konst_290_wire_constant <= "1";
    -- flow-through select operator MUX_206_inst
    resp_207 <= presp_engine_194 when (to_engine_217_delayed_16_0_201(0) /=  '0') else presp_downstream_198;
    -- flow-through select operator MUX_245_inst
    resp_246 <= eresp_engine_233 when (to_engine_269_delayed_16_0_240(0) /=  '0') else eresp_downstream_237;
    -- flow-through select operator MUX_284_inst
    resp_285 <= dresp_engine_272 when (to_engine_321_delayed_16_0_279(0) /=  '0') else dresp_downstream_276;
    -- flow-through slice operator slice_184_inst
    a36_185 <= preq_178(99 downto 64);
    -- flow-through slice operator slice_223_inst
    a36_224 <= ereq_217(99 downto 64);
    -- flow-through slice operator slice_262_inst
    a36_263 <= dreq_256(99 downto 64);
    W_cluster_id_171_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_cluster_id_171_inst_req_0;
      W_cluster_id_171_inst_ack_0<= wack(0);
      rreq(0) <= W_cluster_id_171_inst_req_1;
      W_cluster_id_171_inst_ack_1<= rack(0);
      W_cluster_id_171_inst : InterlockBuffer generic map ( -- 
        name => "W_cluster_id_171_inst",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false ,
        in_phi =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => RPIPE_CLUSTER_ID_172_wire,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => cluster_id_173,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_engine_217_delayed_16_0_199_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_engine_217_delayed_16_0_199_inst_req_0;
      W_to_engine_217_delayed_16_0_199_inst_ack_0<= wack(0);
      rreq(0) <= W_to_engine_217_delayed_16_0_199_inst_req_1;
      W_to_engine_217_delayed_16_0_199_inst_ack_1<= rack(0);
      W_to_engine_217_delayed_16_0_199_inst : InterlockBuffer generic map ( -- 
        name => "W_to_engine_217_delayed_16_0_199_inst",
        buffer_size => 16,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true ,
        in_phi =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => to_engine_190,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_engine_217_delayed_16_0_201,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_engine_269_delayed_16_0_238_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_engine_269_delayed_16_0_238_inst_req_0;
      W_to_engine_269_delayed_16_0_238_inst_ack_0<= wack(0);
      rreq(0) <= W_to_engine_269_delayed_16_0_238_inst_req_1;
      W_to_engine_269_delayed_16_0_238_inst_ack_1<= rack(0);
      W_to_engine_269_delayed_16_0_238_inst : InterlockBuffer generic map ( -- 
        name => "W_to_engine_269_delayed_16_0_238_inst",
        buffer_size => 16,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true ,
        in_phi =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => to_engine_229,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_engine_269_delayed_16_0_240,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_engine_321_delayed_16_0_277_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_engine_321_delayed_16_0_277_inst_req_0;
      W_to_engine_321_delayed_16_0_277_inst_ack_0<= wack(0);
      rreq(0) <= W_to_engine_321_delayed_16_0_277_inst_req_1;
      W_to_engine_321_delayed_16_0_277_inst_ack_1<= rack(0);
      W_to_engine_321_delayed_16_0_277_inst : InterlockBuffer generic map ( -- 
        name => "W_to_engine_321_delayed_16_0_277_inst",
        buffer_size => 16,
        flow_through =>  false ,
        cut_through =>  true ,
        in_data_width => 1,
        out_data_width => 1,
        bypass_flag =>  true ,
        in_phi =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => to_engine_268,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_engine_321_delayed_16_0_279,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- interlock ssrc_phi_stmt_178
    process(RPIPE_acb_request_from_processor_180_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 109 downto 0) := RPIPE_acb_request_from_processor_180_wire(109 downto 0);
      preq_178 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_217
    process(RPIPE_acb_master_request_from_engine_219_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 109 downto 0) := RPIPE_acb_master_request_from_engine_219_wire(109 downto 0);
      ereq_217 <= tmp_var; -- 
    end process;
    -- interlock ssrc_phi_stmt_256
    process(RPIPE_acb_request_from_downstream_258_wire) -- 
      variable tmp_var : std_logic_vector(109 downto 0); -- 
    begin -- 
      tmp_var := (others => '0'); 
      tmp_var( 109 downto 0) := RPIPE_acb_request_from_downstream_258_wire(109 downto 0);
      dreq_256 <= tmp_var; -- 
    end process;
    do_while_stmt_176_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_212_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_176_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_176_branch_req_0,
          ack0 => do_while_stmt_176_branch_ack_0,
          ack1 => do_while_stmt_176_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    do_while_stmt_215_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_251_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_215_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_215_branch_req_0,
          ack0 => do_while_stmt_215_branch_ack_0,
          ack1 => do_while_stmt_215_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    do_while_stmt_254_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_290_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_254_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_254_branch_req_0,
          ack0 => do_while_stmt_254_branch_ack_0,
          ack1 => do_while_stmt_254_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- read from input-signal CLUSTER_ID
    RPIPE_CLUSTER_ID_172_wire <= CLUSTER_ID;
    -- shared inport operator group (1) : RPIPE_acb_master_request_from_engine_219_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(109 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_acb_master_request_from_engine_219_inst_req_0;
      RPIPE_acb_master_request_from_engine_219_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_acb_master_request_from_engine_219_inst_req_1;
      RPIPE_acb_master_request_from_engine_219_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_acb_master_request_from_engine_219_wire <= data_out(109 downto 0);
      acb_master_request_from_engine_read_1_gI: SplitGuardInterface generic map(name => "acb_master_request_from_engine_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      acb_master_request_from_engine_read_1: InputPort_P2P -- 
        generic map ( name => "acb_master_request_from_engine_read_1", data_width => 110,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => acb_master_request_from_engine_pipe_read_req(0),
          oack => acb_master_request_from_engine_pipe_read_ack(0),
          odata => acb_master_request_from_engine_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared inport operator group (2) : RPIPE_acb_request_from_downstream_258_inst 
    InportGroup_2: Block -- 
      signal data_out: std_logic_vector(109 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_acb_request_from_downstream_258_inst_req_0;
      RPIPE_acb_request_from_downstream_258_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_acb_request_from_downstream_258_inst_req_1;
      RPIPE_acb_request_from_downstream_258_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_acb_request_from_downstream_258_wire <= data_out(109 downto 0);
      acb_request_from_downstream_read_2_gI: SplitGuardInterface generic map(name => "acb_request_from_downstream_read_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      acb_request_from_downstream_read_2: InputPort_P2P -- 
        generic map ( name => "acb_request_from_downstream_read_2", data_width => 110,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => acb_request_from_downstream_pipe_read_req(0),
          oack => acb_request_from_downstream_pipe_read_ack(0),
          odata => acb_request_from_downstream_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 2
    -- shared inport operator group (3) : RPIPE_acb_request_from_processor_180_inst 
    InportGroup_3: Block -- 
      signal data_out: std_logic_vector(109 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_acb_request_from_processor_180_inst_req_0;
      RPIPE_acb_request_from_processor_180_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_acb_request_from_processor_180_inst_req_1;
      RPIPE_acb_request_from_processor_180_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      RPIPE_acb_request_from_processor_180_wire <= data_out(109 downto 0);
      acb_request_from_processor_read_3_gI: SplitGuardInterface generic map(name => "acb_request_from_processor_read_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      acb_request_from_processor_read_3: InputPort_P2P -- 
        generic map ( name => "acb_request_from_processor_read_3", data_width => 110,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => acb_request_from_processor_pipe_read_req(0),
          oack => acb_request_from_processor_pipe_read_ack(0),
          odata => acb_request_from_processor_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 3
    -- shared outport operator group (0) : WPIPE_acb_master_response_to_engine_247_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(64 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_acb_master_response_to_engine_247_inst_req_0;
      WPIPE_acb_master_response_to_engine_247_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_acb_master_response_to_engine_247_inst_req_1;
      WPIPE_acb_master_response_to_engine_247_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= resp_246;
      acb_master_response_to_engine_write_0_gI: SplitGuardInterface generic map(name => "acb_master_response_to_engine_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      acb_master_response_to_engine_write_0: OutputPortRevised -- 
        generic map ( name => "acb_master_response_to_engine", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => acb_master_response_to_engine_pipe_write_req(0),
          oack => acb_master_response_to_engine_pipe_write_ack(0),
          odata => acb_master_response_to_engine_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_acb_response_to_downstream_286_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(64 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_acb_response_to_downstream_286_inst_req_0;
      WPIPE_acb_response_to_downstream_286_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_acb_response_to_downstream_286_inst_req_1;
      WPIPE_acb_response_to_downstream_286_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= resp_285;
      acb_response_to_downstream_write_1_gI: SplitGuardInterface generic map(name => "acb_response_to_downstream_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      acb_response_to_downstream_write_1: OutputPortRevised -- 
        generic map ( name => "acb_response_to_downstream", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => acb_response_to_downstream_pipe_write_req(0),
          oack => acb_response_to_downstream_pipe_write_ack(0),
          odata => acb_response_to_downstream_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_acb_response_to_processor_208_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(64 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_acb_response_to_processor_208_inst_req_0;
      WPIPE_acb_response_to_processor_208_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_acb_response_to_processor_208_inst_req_1;
      WPIPE_acb_response_to_processor_208_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= resp_207;
      acb_response_to_processor_write_2_gI: SplitGuardInterface generic map(name => "acb_response_to_processor_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      acb_response_to_processor_write_2: OutputPortRevised -- 
        generic map ( name => "acb_response_to_processor", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => acb_response_to_processor_pipe_write_req(0),
          oack => acb_response_to_processor_pipe_write_ack(0),
          odata => acb_response_to_processor_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    volatile_operator_findRequestTarget_814: findRequestTarget_Volatile port map(cluster_id => cluster_id_173, addr_36 => a36_185, to_engine => to_engine_190, to_downstream => to_downstream_190); 
    -- shared call operator group (1) : call_stmt_194_call call_stmt_233_call call_stmt_272_call 
    access_engine_call_group_1: Block -- 
      signal data_in: std_logic_vector(329 downto 0);
      signal data_out: std_logic_vector(194 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 2 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 2 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 2 downto 0);
      signal guard_vector : std_logic_vector( 2 downto 0);
      constant inBUFs : IntegerArray(2 downto 0) := (2 => 1, 1 => 1, 0 => 1);
      constant outBUFs : IntegerArray(2 downto 0) := (2 => 12, 1 => 12, 0 => 12);
      constant guardFlags : BooleanArray(2 downto 0) := (0 => true, 1 => true, 2 => true);
      constant guardBuffering: IntegerArray(2 downto 0)  := (0 => 16, 1 => 16, 2 => 16);
      -- 
    begin -- 
      reqL_unguarded(2) <= call_stmt_194_call_req_0;
      reqL_unguarded(1) <= call_stmt_233_call_req_0;
      reqL_unguarded(0) <= call_stmt_272_call_req_0;
      call_stmt_194_call_ack_0 <= ackL_unguarded(2);
      call_stmt_233_call_ack_0 <= ackL_unguarded(1);
      call_stmt_272_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(2) <= call_stmt_194_call_req_1;
      reqR_unguarded(1) <= call_stmt_233_call_req_1;
      reqR_unguarded(0) <= call_stmt_272_call_req_1;
      call_stmt_194_call_ack_1 <= ackR_unguarded(2);
      call_stmt_233_call_ack_1 <= ackR_unguarded(1);
      call_stmt_272_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_engine_268(0);
      guard_vector(1)  <= to_engine_229(0);
      guard_vector(2)  <= to_engine_190(0);
      access_engine_call_group_1_accessRegulator_0: access_regulator_base generic map (name => "access_engine_call_group_1_accessRegulator_0", num_slots => 12) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      access_engine_call_group_1_accessRegulator_1: access_regulator_base generic map (name => "access_engine_call_group_1_accessRegulator_1", num_slots => 12) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      access_engine_call_group_1_accessRegulator_2: access_regulator_base generic map (name => "access_engine_call_group_1_accessRegulator_2", num_slots => 12) -- 
        port map (req => reqL_unregulated(2), -- 
          ack => ackL_unregulated(2),
          regulated_req => reqL(2),
          regulated_ack => ackL(2),
          release_req => reqR(2),
          release_ack => ackR(2),
          clk => clk, reset => reset); -- 
      access_engine_call_group_1_gI: SplitGuardInterface generic map(name => "access_engine_call_group_1_gI", nreqs => 3, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= preq_178 & ereq_217 & dreq_256;
      presp_engine_194 <= data_out(194 downto 130);
      eresp_engine_233 <= data_out(129 downto 65);
      dresp_engine_272 <= data_out(64 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 330,
        owidth => 110,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 2,
        nreqs => 3,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => access_engine_call_reqs(0),
          ackR => access_engine_call_acks(0),
          dataR => access_engine_call_data(109 downto 0),
          tagR => access_engine_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 65,
          owidth => 195,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 3) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => access_engine_return_acks(0), -- cross-over
          ackL => access_engine_return_reqs(0), -- cross-over
          dataL => access_engine_return_data(64 downto 0),
          tagL => access_engine_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 1
    -- shared call operator group (2) : call_stmt_276_call call_stmt_198_call call_stmt_237_call 
    access_downstream_call_group_2: Block -- 
      signal data_in: std_logic_vector(329 downto 0);
      signal data_out: std_logic_vector(194 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 2 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 2 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 2 downto 0);
      signal guard_vector : std_logic_vector( 2 downto 0);
      constant inBUFs : IntegerArray(2 downto 0) := (2 => 1, 1 => 1, 0 => 1);
      constant outBUFs : IntegerArray(2 downto 0) := (2 => 12, 1 => 12, 0 => 12);
      constant guardFlags : BooleanArray(2 downto 0) := (0 => true, 1 => true, 2 => true);
      constant guardBuffering: IntegerArray(2 downto 0)  := (0 => 16, 1 => 16, 2 => 16);
      -- 
    begin -- 
      reqL_unguarded(2) <= call_stmt_276_call_req_0;
      reqL_unguarded(1) <= call_stmt_198_call_req_0;
      reqL_unguarded(0) <= call_stmt_237_call_req_0;
      call_stmt_276_call_ack_0 <= ackL_unguarded(2);
      call_stmt_198_call_ack_0 <= ackL_unguarded(1);
      call_stmt_237_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(2) <= call_stmt_276_call_req_1;
      reqR_unguarded(1) <= call_stmt_198_call_req_1;
      reqR_unguarded(0) <= call_stmt_237_call_req_1;
      call_stmt_276_call_ack_1 <= ackR_unguarded(2);
      call_stmt_198_call_ack_1 <= ackR_unguarded(1);
      call_stmt_237_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  not to_engine_229(0);
      guard_vector(1)  <=  not to_engine_190(0);
      guard_vector(2)  <=  not to_engine_268(0);
      access_downstream_call_group_2_accessRegulator_0: access_regulator_base generic map (name => "access_downstream_call_group_2_accessRegulator_0", num_slots => 12) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      access_downstream_call_group_2_accessRegulator_1: access_regulator_base generic map (name => "access_downstream_call_group_2_accessRegulator_1", num_slots => 12) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      access_downstream_call_group_2_accessRegulator_2: access_regulator_base generic map (name => "access_downstream_call_group_2_accessRegulator_2", num_slots => 12) -- 
        port map (req => reqL_unregulated(2), -- 
          ack => ackL_unregulated(2),
          regulated_req => reqL(2),
          regulated_ack => ackL(2),
          release_req => reqR(2),
          release_ack => ackR(2),
          clk => clk, reset => reset); -- 
      access_downstream_call_group_2_gI: SplitGuardInterface generic map(name => "access_downstream_call_group_2_gI", nreqs => 3, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= dreq_256 & preq_178 & ereq_217;
      dresp_downstream_276 <= data_out(194 downto 130);
      presp_downstream_198 <= data_out(129 downto 65);
      eresp_downstream_237 <= data_out(64 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 330,
        owidth => 110,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 2,
        nreqs => 3,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => access_downstream_call_reqs(0),
          ackR => access_downstream_call_acks(0),
          dataR => access_downstream_call_data(109 downto 0),
          tagR => access_downstream_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 65,
          owidth => 195,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 3) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => access_downstream_return_acks(0), -- cross-over
          ackL => access_downstream_return_reqs(0), -- cross-over
          dataL => access_downstream_return_data(64 downto 0),
          tagL => access_downstream_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 2
    volatile_operator_findRequestTarget_824: findRequestTarget_Volatile port map(cluster_id => cluster_id_173, addr_36 => a36_224, to_engine => to_engine_229, to_downstream => to_downstream_229); 
    volatile_operator_findRequestTarget_834: findRequestTarget_Volatile port map(cluster_id => cluster_id_173, addr_36 => a36_263, to_engine => to_engine_268, to_downstream => to_downstream_268); 
    -- 
  end Block; -- data_path
  -- 
end switch_1p1e_daemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library switches_lib;
use switches_lib.switch_1p1e_red_global_package.all;
entity switch_1p1e_red is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    CLUSTER_ID: in std_logic_vector(7 downto 0);
    acb_master_request_from_engine_pipe_write_data: in std_logic_vector(109 downto 0);
    acb_master_request_from_engine_pipe_write_req : in std_logic_vector(0 downto 0);
    acb_master_request_from_engine_pipe_write_ack : out std_logic_vector(0 downto 0);
    acb_master_response_to_engine_pipe_read_data: out std_logic_vector(64 downto 0);
    acb_master_response_to_engine_pipe_read_req : in std_logic_vector(0 downto 0);
    acb_master_response_to_engine_pipe_read_ack : out std_logic_vector(0 downto 0);
    acb_request_from_downstream_pipe_write_data: in std_logic_vector(109 downto 0);
    acb_request_from_downstream_pipe_write_req : in std_logic_vector(0 downto 0);
    acb_request_from_downstream_pipe_write_ack : out std_logic_vector(0 downto 0);
    acb_request_from_processor_pipe_write_data: in std_logic_vector(109 downto 0);
    acb_request_from_processor_pipe_write_req : in std_logic_vector(0 downto 0);
    acb_request_from_processor_pipe_write_ack : out std_logic_vector(0 downto 0);
    acb_request_to_downstream_pipe_read_data: out std_logic_vector(109 downto 0);
    acb_request_to_downstream_pipe_read_req : in std_logic_vector(0 downto 0);
    acb_request_to_downstream_pipe_read_ack : out std_logic_vector(0 downto 0);
    acb_response_from_downstream_pipe_write_data: in std_logic_vector(64 downto 0);
    acb_response_from_downstream_pipe_write_req : in std_logic_vector(0 downto 0);
    acb_response_from_downstream_pipe_write_ack : out std_logic_vector(0 downto 0);
    acb_response_to_downstream_pipe_read_data: out std_logic_vector(64 downto 0);
    acb_response_to_downstream_pipe_read_req : in std_logic_vector(0 downto 0);
    acb_response_to_downstream_pipe_read_ack : out std_logic_vector(0 downto 0);
    acb_response_to_processor_pipe_read_data: out std_logic_vector(64 downto 0);
    acb_response_to_processor_pipe_read_req : in std_logic_vector(0 downto 0);
    acb_response_to_processor_pipe_read_ack : out std_logic_vector(0 downto 0);
    acb_slave_request_to_engine_pipe_read_data: out std_logic_vector(109 downto 0);
    acb_slave_request_to_engine_pipe_read_req : in std_logic_vector(0 downto 0);
    acb_slave_request_to_engine_pipe_read_ack : out std_logic_vector(0 downto 0);
    acb_slave_response_from_engine_pipe_write_data: in std_logic_vector(64 downto 0);
    acb_slave_response_from_engine_pipe_write_req : in std_logic_vector(0 downto 0);
    acb_slave_response_from_engine_pipe_write_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture switch_1p1e_red_arch  of switch_1p1e_red is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module access_downstream
  component access_downstream is -- 
    generic (tag_length : integer); 
    port ( -- 
      acb_req : in  std_logic_vector(109 downto 0);
      acb_resp : out  std_logic_vector(64 downto 0);
      acb_response_from_downstream_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_response_from_downstream_pipe_read_data : in   std_logic_vector(64 downto 0);
      acb_request_to_downstream_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_request_to_downstream_pipe_write_data : out  std_logic_vector(109 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module access_downstream
  signal access_downstream_acb_req :  std_logic_vector(109 downto 0);
  signal access_downstream_acb_resp :  std_logic_vector(64 downto 0);
  signal access_downstream_in_args    : std_logic_vector(109 downto 0);
  signal access_downstream_out_args   : std_logic_vector(64 downto 0);
  signal access_downstream_tag_in    : std_logic_vector(2 downto 0) := (others => '0');
  signal access_downstream_tag_out   : std_logic_vector(2 downto 0);
  signal access_downstream_start_req : std_logic;
  signal access_downstream_start_ack : std_logic;
  signal access_downstream_fin_req   : std_logic;
  signal access_downstream_fin_ack : std_logic;
  -- caller side aggregated signals for module access_downstream
  signal access_downstream_call_reqs: std_logic_vector(0 downto 0);
  signal access_downstream_call_acks: std_logic_vector(0 downto 0);
  signal access_downstream_return_reqs: std_logic_vector(0 downto 0);
  signal access_downstream_return_acks: std_logic_vector(0 downto 0);
  signal access_downstream_call_data: std_logic_vector(109 downto 0);
  signal access_downstream_call_tag: std_logic_vector(1 downto 0);
  signal access_downstream_return_data: std_logic_vector(64 downto 0);
  signal access_downstream_return_tag: std_logic_vector(1 downto 0);
  -- declarations related to module access_engine
  component access_engine is -- 
    generic (tag_length : integer); 
    port ( -- 
      acb_req : in  std_logic_vector(109 downto 0);
      acb_resp : out  std_logic_vector(64 downto 0);
      acb_slave_response_from_engine_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_slave_response_from_engine_pipe_read_data : in   std_logic_vector(64 downto 0);
      acb_slave_request_to_engine_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_slave_request_to_engine_pipe_write_data : out  std_logic_vector(109 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module access_engine
  signal access_engine_acb_req :  std_logic_vector(109 downto 0);
  signal access_engine_acb_resp :  std_logic_vector(64 downto 0);
  signal access_engine_in_args    : std_logic_vector(109 downto 0);
  signal access_engine_out_args   : std_logic_vector(64 downto 0);
  signal access_engine_tag_in    : std_logic_vector(2 downto 0) := (others => '0');
  signal access_engine_tag_out   : std_logic_vector(2 downto 0);
  signal access_engine_start_req : std_logic;
  signal access_engine_start_ack : std_logic;
  signal access_engine_fin_req   : std_logic;
  signal access_engine_fin_ack : std_logic;
  -- caller side aggregated signals for module access_engine
  signal access_engine_call_reqs: std_logic_vector(0 downto 0);
  signal access_engine_call_acks: std_logic_vector(0 downto 0);
  signal access_engine_return_reqs: std_logic_vector(0 downto 0);
  signal access_engine_return_acks: std_logic_vector(0 downto 0);
  signal access_engine_call_data: std_logic_vector(109 downto 0);
  signal access_engine_call_tag: std_logic_vector(1 downto 0);
  signal access_engine_return_data: std_logic_vector(64 downto 0);
  signal access_engine_return_tag: std_logic_vector(1 downto 0);
  -- declarations related to module findRequestTarget
  -- declarations related to module switch_1p1e_daemon
  component switch_1p1e_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      acb_master_request_from_engine_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_master_request_from_engine_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_master_request_from_engine_pipe_read_data : in   std_logic_vector(109 downto 0);
      acb_request_from_downstream_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_request_from_downstream_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_request_from_downstream_pipe_read_data : in   std_logic_vector(109 downto 0);
      acb_request_from_processor_pipe_read_req : out  std_logic_vector(0 downto 0);
      acb_request_from_processor_pipe_read_ack : in   std_logic_vector(0 downto 0);
      acb_request_from_processor_pipe_read_data : in   std_logic_vector(109 downto 0);
      CLUSTER_ID : in std_logic_vector(7 downto 0);
      acb_response_to_downstream_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_response_to_downstream_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_response_to_downstream_pipe_write_data : out  std_logic_vector(64 downto 0);
      acb_response_to_processor_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_response_to_processor_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_response_to_processor_pipe_write_data : out  std_logic_vector(64 downto 0);
      acb_master_response_to_engine_pipe_write_req : out  std_logic_vector(0 downto 0);
      acb_master_response_to_engine_pipe_write_ack : in   std_logic_vector(0 downto 0);
      acb_master_response_to_engine_pipe_write_data : out  std_logic_vector(64 downto 0);
      access_downstream_call_reqs : out  std_logic_vector(0 downto 0);
      access_downstream_call_acks : in   std_logic_vector(0 downto 0);
      access_downstream_call_data : out  std_logic_vector(109 downto 0);
      access_downstream_call_tag  :  out  std_logic_vector(1 downto 0);
      access_downstream_return_reqs : out  std_logic_vector(0 downto 0);
      access_downstream_return_acks : in   std_logic_vector(0 downto 0);
      access_downstream_return_data : in   std_logic_vector(64 downto 0);
      access_downstream_return_tag :  in   std_logic_vector(1 downto 0);
      access_engine_call_reqs : out  std_logic_vector(0 downto 0);
      access_engine_call_acks : in   std_logic_vector(0 downto 0);
      access_engine_call_data : out  std_logic_vector(109 downto 0);
      access_engine_call_tag  :  out  std_logic_vector(1 downto 0);
      access_engine_return_reqs : out  std_logic_vector(0 downto 0);
      access_engine_return_acks : in   std_logic_vector(0 downto 0);
      access_engine_return_data : in   std_logic_vector(64 downto 0);
      access_engine_return_tag :  in   std_logic_vector(1 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module switch_1p1e_daemon
  signal switch_1p1e_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal switch_1p1e_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal switch_1p1e_daemon_start_req : std_logic;
  signal switch_1p1e_daemon_start_ack : std_logic;
  signal switch_1p1e_daemon_fin_req   : std_logic;
  signal switch_1p1e_daemon_fin_ack : std_logic;
  -- aggregate signals for read from pipe acb_master_request_from_engine
  signal acb_master_request_from_engine_pipe_read_data: std_logic_vector(109 downto 0);
  signal acb_master_request_from_engine_pipe_read_req: std_logic_vector(0 downto 0);
  signal acb_master_request_from_engine_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe acb_master_response_to_engine
  signal acb_master_response_to_engine_pipe_write_data: std_logic_vector(64 downto 0);
  signal acb_master_response_to_engine_pipe_write_req: std_logic_vector(0 downto 0);
  signal acb_master_response_to_engine_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe acb_request_from_downstream
  signal acb_request_from_downstream_pipe_read_data: std_logic_vector(109 downto 0);
  signal acb_request_from_downstream_pipe_read_req: std_logic_vector(0 downto 0);
  signal acb_request_from_downstream_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe acb_request_from_processor
  signal acb_request_from_processor_pipe_read_data: std_logic_vector(109 downto 0);
  signal acb_request_from_processor_pipe_read_req: std_logic_vector(0 downto 0);
  signal acb_request_from_processor_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe acb_request_to_downstream
  signal acb_request_to_downstream_pipe_write_data: std_logic_vector(109 downto 0);
  signal acb_request_to_downstream_pipe_write_req: std_logic_vector(0 downto 0);
  signal acb_request_to_downstream_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe acb_response_from_downstream
  signal acb_response_from_downstream_pipe_read_data: std_logic_vector(64 downto 0);
  signal acb_response_from_downstream_pipe_read_req: std_logic_vector(0 downto 0);
  signal acb_response_from_downstream_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe acb_response_to_downstream
  signal acb_response_to_downstream_pipe_write_data: std_logic_vector(64 downto 0);
  signal acb_response_to_downstream_pipe_write_req: std_logic_vector(0 downto 0);
  signal acb_response_to_downstream_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe acb_response_to_processor
  signal acb_response_to_processor_pipe_write_data: std_logic_vector(64 downto 0);
  signal acb_response_to_processor_pipe_write_req: std_logic_vector(0 downto 0);
  signal acb_response_to_processor_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe acb_slave_request_to_engine
  signal acb_slave_request_to_engine_pipe_write_data: std_logic_vector(109 downto 0);
  signal acb_slave_request_to_engine_pipe_write_req: std_logic_vector(0 downto 0);
  signal acb_slave_request_to_engine_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe acb_slave_response_from_engine
  signal acb_slave_response_from_engine_pipe_read_data: std_logic_vector(64 downto 0);
  signal acb_slave_response_from_engine_pipe_read_req: std_logic_vector(0 downto 0);
  signal acb_slave_response_from_engine_pipe_read_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module access_downstream
  access_downstream_acb_req <= access_downstream_in_args(109 downto 0);
  access_downstream_out_args <= access_downstream_acb_resp ;
  -- call arbiter for module access_downstream
  access_downstream_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 110,
      return_data_width => 65,
      callee_tag_length => 1,
      caller_tag_length => 2--
    )
    port map(-- 
      call_reqs => access_downstream_call_reqs,
      call_acks => access_downstream_call_acks,
      return_reqs => access_downstream_return_reqs,
      return_acks => access_downstream_return_acks,
      call_data  => access_downstream_call_data,
      call_tag  => access_downstream_call_tag,
      return_tag  => access_downstream_return_tag,
      call_mtag => access_downstream_tag_in,
      return_mtag => access_downstream_tag_out,
      return_data =>access_downstream_return_data,
      call_mreq => access_downstream_start_req,
      call_mack => access_downstream_start_ack,
      return_mreq => access_downstream_fin_req,
      return_mack => access_downstream_fin_ack,
      call_mdata => access_downstream_in_args,
      return_mdata => access_downstream_out_args,
      clk => clk, 
      reset => reset --
    ); --
  access_downstream_instance:access_downstream-- 
    generic map(tag_length => 3)
    port map(-- 
      acb_req => access_downstream_acb_req,
      acb_resp => access_downstream_acb_resp,
      start_req => access_downstream_start_req,
      start_ack => access_downstream_start_ack,
      fin_req => access_downstream_fin_req,
      fin_ack => access_downstream_fin_ack,
      clk => clk,
      reset => reset,
      acb_response_from_downstream_pipe_read_req => acb_response_from_downstream_pipe_read_req(0 downto 0),
      acb_response_from_downstream_pipe_read_ack => acb_response_from_downstream_pipe_read_ack(0 downto 0),
      acb_response_from_downstream_pipe_read_data => acb_response_from_downstream_pipe_read_data(64 downto 0),
      acb_request_to_downstream_pipe_write_req => acb_request_to_downstream_pipe_write_req(0 downto 0),
      acb_request_to_downstream_pipe_write_ack => acb_request_to_downstream_pipe_write_ack(0 downto 0),
      acb_request_to_downstream_pipe_write_data => acb_request_to_downstream_pipe_write_data(109 downto 0),
      tag_in => access_downstream_tag_in,
      tag_out => access_downstream_tag_out-- 
    ); -- 
  -- module access_engine
  access_engine_acb_req <= access_engine_in_args(109 downto 0);
  access_engine_out_args <= access_engine_acb_resp ;
  -- call arbiter for module access_engine
  access_engine_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 110,
      return_data_width => 65,
      callee_tag_length => 1,
      caller_tag_length => 2--
    )
    port map(-- 
      call_reqs => access_engine_call_reqs,
      call_acks => access_engine_call_acks,
      return_reqs => access_engine_return_reqs,
      return_acks => access_engine_return_acks,
      call_data  => access_engine_call_data,
      call_tag  => access_engine_call_tag,
      return_tag  => access_engine_return_tag,
      call_mtag => access_engine_tag_in,
      return_mtag => access_engine_tag_out,
      return_data =>access_engine_return_data,
      call_mreq => access_engine_start_req,
      call_mack => access_engine_start_ack,
      return_mreq => access_engine_fin_req,
      return_mack => access_engine_fin_ack,
      call_mdata => access_engine_in_args,
      return_mdata => access_engine_out_args,
      clk => clk, 
      reset => reset --
    ); --
  access_engine_instance:access_engine-- 
    generic map(tag_length => 3)
    port map(-- 
      acb_req => access_engine_acb_req,
      acb_resp => access_engine_acb_resp,
      start_req => access_engine_start_req,
      start_ack => access_engine_start_ack,
      fin_req => access_engine_fin_req,
      fin_ack => access_engine_fin_ack,
      clk => clk,
      reset => reset,
      acb_slave_response_from_engine_pipe_read_req => acb_slave_response_from_engine_pipe_read_req(0 downto 0),
      acb_slave_response_from_engine_pipe_read_ack => acb_slave_response_from_engine_pipe_read_ack(0 downto 0),
      acb_slave_response_from_engine_pipe_read_data => acb_slave_response_from_engine_pipe_read_data(64 downto 0),
      acb_slave_request_to_engine_pipe_write_req => acb_slave_request_to_engine_pipe_write_req(0 downto 0),
      acb_slave_request_to_engine_pipe_write_ack => acb_slave_request_to_engine_pipe_write_ack(0 downto 0),
      acb_slave_request_to_engine_pipe_write_data => acb_slave_request_to_engine_pipe_write_data(109 downto 0),
      tag_in => access_engine_tag_in,
      tag_out => access_engine_tag_out-- 
    ); -- 
  -- module switch_1p1e_daemon
  switch_1p1e_daemon_instance:switch_1p1e_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => switch_1p1e_daemon_start_req,
      start_ack => switch_1p1e_daemon_start_ack,
      fin_req => switch_1p1e_daemon_fin_req,
      fin_ack => switch_1p1e_daemon_fin_ack,
      clk => clk,
      reset => reset,
      CLUSTER_ID => CLUSTER_ID,
      acb_master_request_from_engine_pipe_read_req => acb_master_request_from_engine_pipe_read_req(0 downto 0),
      acb_master_request_from_engine_pipe_read_ack => acb_master_request_from_engine_pipe_read_ack(0 downto 0),
      acb_master_request_from_engine_pipe_read_data => acb_master_request_from_engine_pipe_read_data(109 downto 0),
      acb_request_from_downstream_pipe_read_req => acb_request_from_downstream_pipe_read_req(0 downto 0),
      acb_request_from_downstream_pipe_read_ack => acb_request_from_downstream_pipe_read_ack(0 downto 0),
      acb_request_from_downstream_pipe_read_data => acb_request_from_downstream_pipe_read_data(109 downto 0),
      acb_request_from_processor_pipe_read_req => acb_request_from_processor_pipe_read_req(0 downto 0),
      acb_request_from_processor_pipe_read_ack => acb_request_from_processor_pipe_read_ack(0 downto 0),
      acb_request_from_processor_pipe_read_data => acb_request_from_processor_pipe_read_data(109 downto 0),
      acb_response_to_downstream_pipe_write_req => acb_response_to_downstream_pipe_write_req(0 downto 0),
      acb_response_to_downstream_pipe_write_ack => acb_response_to_downstream_pipe_write_ack(0 downto 0),
      acb_response_to_downstream_pipe_write_data => acb_response_to_downstream_pipe_write_data(64 downto 0),
      acb_response_to_processor_pipe_write_req => acb_response_to_processor_pipe_write_req(0 downto 0),
      acb_response_to_processor_pipe_write_ack => acb_response_to_processor_pipe_write_ack(0 downto 0),
      acb_response_to_processor_pipe_write_data => acb_response_to_processor_pipe_write_data(64 downto 0),
      acb_master_response_to_engine_pipe_write_req => acb_master_response_to_engine_pipe_write_req(0 downto 0),
      acb_master_response_to_engine_pipe_write_ack => acb_master_response_to_engine_pipe_write_ack(0 downto 0),
      acb_master_response_to_engine_pipe_write_data => acb_master_response_to_engine_pipe_write_data(64 downto 0),
      access_downstream_call_reqs => access_downstream_call_reqs(0 downto 0),
      access_downstream_call_acks => access_downstream_call_acks(0 downto 0),
      access_downstream_call_data => access_downstream_call_data(109 downto 0),
      access_downstream_call_tag => access_downstream_call_tag(1 downto 0),
      access_downstream_return_reqs => access_downstream_return_reqs(0 downto 0),
      access_downstream_return_acks => access_downstream_return_acks(0 downto 0),
      access_downstream_return_data => access_downstream_return_data(64 downto 0),
      access_downstream_return_tag => access_downstream_return_tag(1 downto 0),
      access_engine_call_reqs => access_engine_call_reqs(0 downto 0),
      access_engine_call_acks => access_engine_call_acks(0 downto 0),
      access_engine_call_data => access_engine_call_data(109 downto 0),
      access_engine_call_tag => access_engine_call_tag(1 downto 0),
      access_engine_return_reqs => access_engine_return_reqs(0 downto 0),
      access_engine_return_acks => access_engine_return_acks(0 downto 0),
      access_engine_return_data => access_engine_return_data(64 downto 0),
      access_engine_return_tag => access_engine_return_tag(1 downto 0),
      tag_in => switch_1p1e_daemon_tag_in,
      tag_out => switch_1p1e_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  switch_1p1e_daemon_tag_in <= (others => '0');
  switch_1p1e_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => switch_1p1e_daemon_start_req, start_ack => switch_1p1e_daemon_start_ack,  fin_req => switch_1p1e_daemon_fin_req,  fin_ack => switch_1p1e_daemon_fin_ack);
  -- input signal-pipe CLUSTER_ID accessed directly. 
  acb_master_request_from_engine_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_master_request_from_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_master_request_from_engine_pipe_read_req,
      read_ack => acb_master_request_from_engine_pipe_read_ack,
      read_data => acb_master_request_from_engine_pipe_read_data,
      write_req => acb_master_request_from_engine_pipe_write_req,
      write_ack => acb_master_request_from_engine_pipe_write_ack,
      write_data => acb_master_request_from_engine_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_master_response_to_engine_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_master_response_to_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_master_response_to_engine_pipe_read_req,
      read_ack => acb_master_response_to_engine_pipe_read_ack,
      read_data => acb_master_response_to_engine_pipe_read_data,
      write_req => acb_master_response_to_engine_pipe_write_req,
      write_ack => acb_master_response_to_engine_pipe_write_ack,
      write_data => acb_master_response_to_engine_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_request_from_downstream_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_request_from_downstream",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_request_from_downstream_pipe_read_req,
      read_ack => acb_request_from_downstream_pipe_read_ack,
      read_data => acb_request_from_downstream_pipe_read_data,
      write_req => acb_request_from_downstream_pipe_write_req,
      write_ack => acb_request_from_downstream_pipe_write_ack,
      write_data => acb_request_from_downstream_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_request_from_processor_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_request_from_processor",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_request_from_processor_pipe_read_req,
      read_ack => acb_request_from_processor_pipe_read_ack,
      read_data => acb_request_from_processor_pipe_read_data,
      write_req => acb_request_from_processor_pipe_write_req,
      write_ack => acb_request_from_processor_pipe_write_ack,
      write_data => acb_request_from_processor_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_request_to_downstream_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_request_to_downstream",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_request_to_downstream_pipe_read_req,
      read_ack => acb_request_to_downstream_pipe_read_ack,
      read_data => acb_request_to_downstream_pipe_read_data,
      write_req => acb_request_to_downstream_pipe_write_req,
      write_ack => acb_request_to_downstream_pipe_write_ack,
      write_data => acb_request_to_downstream_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_response_from_downstream_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_response_from_downstream",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_response_from_downstream_pipe_read_req,
      read_ack => acb_response_from_downstream_pipe_read_ack,
      read_data => acb_response_from_downstream_pipe_read_data,
      write_req => acb_response_from_downstream_pipe_write_req,
      write_ack => acb_response_from_downstream_pipe_write_ack,
      write_data => acb_response_from_downstream_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_response_to_downstream_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_response_to_downstream",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_response_to_downstream_pipe_read_req,
      read_ack => acb_response_to_downstream_pipe_read_ack,
      read_data => acb_response_to_downstream_pipe_read_data,
      write_req => acb_response_to_downstream_pipe_write_req,
      write_ack => acb_response_to_downstream_pipe_write_ack,
      write_data => acb_response_to_downstream_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_response_to_processor_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_response_to_processor",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_response_to_processor_pipe_read_req,
      read_ack => acb_response_to_processor_pipe_read_ack,
      read_data => acb_response_to_processor_pipe_read_data,
      write_req => acb_response_to_processor_pipe_write_req,
      write_ack => acb_response_to_processor_pipe_write_ack,
      write_data => acb_response_to_processor_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_slave_request_to_engine_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_slave_request_to_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_slave_request_to_engine_pipe_read_req,
      read_ack => acb_slave_request_to_engine_pipe_read_ack,
      read_data => acb_slave_request_to_engine_pipe_read_data,
      write_req => acb_slave_request_to_engine_pipe_write_req,
      write_ack => acb_slave_request_to_engine_pipe_write_ack,
      write_data => acb_slave_request_to_engine_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  acb_slave_response_from_engine_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe acb_slave_response_from_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => acb_slave_response_from_engine_pipe_read_req,
      read_ack => acb_slave_response_from_engine_pipe_read_ack,
      read_data => acb_slave_response_from_engine_pipe_read_data,
      write_req => acb_slave_response_from_engine_pipe_write_req,
      write_ack => acb_slave_response_from_engine_pipe_write_ack,
      write_data => acb_slave_response_from_engine_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- gated clock generators 
  -- 
end switch_1p1e_red_arch;
