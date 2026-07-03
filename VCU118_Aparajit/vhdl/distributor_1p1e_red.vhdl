-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package distributor_1p1e_red_global_package is -- 
  constant default_mem_pool_base_address : std_logic_vector(0 downto 0) := "0";
  component distributor_1p1e_red is -- 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      ACB_DRAM_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_DRAM_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_DRAM_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_DRAM_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_data: in std_logic_vector(109 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_data: out std_logic_vector(64 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_data: in std_logic_vector(109 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_data: out std_logic_vector(64 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data: in std_logic_vector(109 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req : in std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack : out std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data: out std_logic_vector(64 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req : in std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack : out std_logic_vector(0 downto 0);
      ETH_CONFIG_ADDR_HIGH: in std_logic_vector(35 downto 0);
      ETH_CONFIG_ADDR_LOW: in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_HIGH: in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_LOW: in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_HIGH: in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_LOW: in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_HIGH: in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_LOW: in std_logic_vector(35 downto 0)); -- 
    -- 
  end component;
  -- 
end package distributor_1p1e_red_global_package;
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
use switches_lib.distributor_1p1e_red_global_package.all;
entity distributorDaemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    distributor_tap_call_reqs : out  std_logic_vector(0 downto 0);
    distributor_tap_call_acks : in   std_logic_vector(0 downto 0);
    distributor_tap_call_tag  :  out  std_logic_vector(0 downto 0);
    distributor_tap_return_reqs : out  std_logic_vector(0 downto 0);
    distributor_tap_return_acks : in   std_logic_vector(0 downto 0);
    distributor_tap_return_tag :  in   std_logic_vector(0 downto 0);
    distributor_mux_call_reqs : out  std_logic_vector(0 downto 0);
    distributor_mux_call_acks : in   std_logic_vector(0 downto 0);
    distributor_mux_call_tag  :  out  std_logic_vector(0 downto 0);
    distributor_mux_return_reqs : out  std_logic_vector(0 downto 0);
    distributor_mux_return_acks : in   std_logic_vector(0 downto 0);
    distributor_mux_return_tag :  in   std_logic_vector(0 downto 0);
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
end entity distributorDaemon;
architecture distributorDaemon_arch of distributorDaemon is -- 
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
  signal distributorDaemon_CP_540_start: Boolean;
  signal distributorDaemon_CP_540_symbol: Boolean;
  -- volatile/operator module components. 
  component distributor_tap is -- 
    generic (tag_length : integer); 
    port ( -- 
      ACB_ETH_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(109 downto 0);
      ETH_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_DRAM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_DRAM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_DRAM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(64 downto 0);
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
  component distributor_mux is -- 
    generic (tag_length : integer); 
    port ( -- 
      ACB_ETH_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
      do_upstream_access_call_reqs : out  std_logic_vector(0 downto 0);
      do_upstream_access_call_acks : in   std_logic_vector(0 downto 0);
      do_upstream_access_call_data : out  std_logic_vector(109 downto 0);
      do_upstream_access_call_tag  :  out  std_logic_vector(1 downto 0);
      do_upstream_access_return_reqs : out  std_logic_vector(0 downto 0);
      do_upstream_access_return_acks : in   std_logic_vector(0 downto 0);
      do_upstream_access_return_data : in   std_logic_vector(64 downto 0);
      do_upstream_access_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- links between control-path and data-path
  signal call_stmt_295_call_ack_1 : boolean;
  signal call_stmt_294_call_req_1 : boolean;
  signal call_stmt_294_call_ack_0 : boolean;
  signal call_stmt_294_call_req_0 : boolean;
  signal call_stmt_295_call_req_1 : boolean;
  signal call_stmt_295_call_ack_0 : boolean;
  signal call_stmt_295_call_req_0 : boolean;
  signal call_stmt_294_call_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "distributorDaemon_input_buffer", -- 
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
  distributorDaemon_CP_540_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "distributorDaemon_out_buffer", -- 
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
    preds <= distributorDaemon_CP_540_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= distributorDaemon_CP_540_start & tag_ilock_write_ack_symbol;
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
    preds <= distributorDaemon_CP_540_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  distributorDaemon_CP_540: Block -- control-path 
    signal distributorDaemon_CP_540_elements: BooleanArray(5 downto 0);
    -- 
  begin -- 
    distributorDaemon_CP_540_elements(0) <= distributorDaemon_CP_540_start;
    distributorDaemon_CP_540_symbol <= distributorDaemon_CP_540_elements(5);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	4 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	2 
    -- CP-element group 0: 	3 
    -- CP-element group 0:  members (16) 
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Sample/$entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_update_start_
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_sample_start_
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Update/ccr
      -- CP-element group 0: 	 parallel_block_stmt_293/$entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/$entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Update/$entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Sample/crr
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Sample/$entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Update/ccr
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_update_start_
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_sample_start_
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_294/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Sample/crr
      -- CP-element group 0: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Update/$entry
      -- 
    crr_556_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_556_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributorDaemon_CP_540_elements(0), ack => call_stmt_294_call_req_0); -- 
    ccr_561_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_561_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributorDaemon_CP_540_elements(0), ack => call_stmt_294_call_req_1); -- 
    crr_573_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_573_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributorDaemon_CP_540_elements(0), ack => call_stmt_295_call_req_0); -- 
    ccr_578_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_578_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributorDaemon_CP_540_elements(0), ack => call_stmt_295_call_req_1); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Sample/cra
      -- CP-element group 1: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Sample/$exit
      -- CP-element group 1: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_sample_completed_
      -- 
    cra_557_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_294_call_ack_0, ack => distributorDaemon_CP_540_elements(1)); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	5 
    -- CP-element group 2:  members (4) 
      -- CP-element group 2: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Update/$exit
      -- CP-element group 2: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_update_completed_
      -- CP-element group 2: 	 parallel_block_stmt_293/call_stmt_294/$exit
      -- CP-element group 2: 	 parallel_block_stmt_293/call_stmt_294/call_stmt_294_Update/cca
      -- 
    cca_562_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_294_call_ack_1, ack => distributorDaemon_CP_540_elements(2)); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	0 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_sample_completed_
      -- CP-element group 3: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Sample/$exit
      -- CP-element group 3: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Sample/cra
      -- 
    cra_574_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_295_call_ack_0, ack => distributorDaemon_CP_540_elements(3)); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	0 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (4) 
      -- CP-element group 4: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Update/cca
      -- CP-element group 4: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_update_completed_
      -- CP-element group 4: 	 parallel_block_stmt_293/call_stmt_295/$exit
      -- CP-element group 4: 	 parallel_block_stmt_293/call_stmt_295/call_stmt_295_Update/$exit
      -- 
    cca_579_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_295_call_ack_1, ack => distributorDaemon_CP_540_elements(4)); -- 
    -- CP-element group 5:  join  transition  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: 	2 
    -- CP-element group 5: successors 
    -- CP-element group 5:  members (2) 
      -- CP-element group 5: 	 parallel_block_stmt_293/$exit
      -- CP-element group 5: 	 $exit
      -- 
    distributorDaemon_cp_element_group_5: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 36) := "distributorDaemon_cp_element_group_5"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributorDaemon_CP_540_elements(4) & distributorDaemon_CP_540_elements(2);
      gj_distributorDaemon_cp_element_group_5 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributorDaemon_CP_540_elements(5), clk => clk, reset => reset); --
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared call operator group (0) : call_stmt_294_call 
    distributor_tap_call_group_0: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_294_call_req_0;
      call_stmt_294_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_294_call_req_1;
      call_stmt_294_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      distributor_tap_call_group_0_gI: SplitGuardInterface generic map(name => "distributor_tap_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => distributor_tap_call_reqs(0),
          ackR => distributor_tap_call_acks(0),
          tagR => distributor_tap_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => distributor_tap_return_acks(0), -- cross-over
          ackL => distributor_tap_return_reqs(0), -- cross-over
          tagL => distributor_tap_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- shared call operator group (1) : call_stmt_295_call 
    distributor_mux_call_group_1: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_295_call_req_0;
      call_stmt_295_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_295_call_req_1;
      call_stmt_295_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      distributor_mux_call_group_1_gI: SplitGuardInterface generic map(name => "distributor_mux_call_group_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => distributor_mux_call_reqs(0),
          ackR => distributor_mux_call_acks(0),
          tagR => distributor_mux_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => distributor_mux_return_acks(0), -- cross-over
          ackL => distributor_mux_return_reqs(0), -- cross-over
          tagL => distributor_mux_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 1
    -- 
  end Block; -- data_path
  -- 
end distributorDaemon_arch;
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
use switches_lib.distributor_1p1e_red_global_package.all;
entity distributor_mux is -- 
  generic (tag_length : integer); 
  port ( -- 
    ACB_ETH_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
    do_upstream_access_call_reqs : out  std_logic_vector(0 downto 0);
    do_upstream_access_call_acks : in   std_logic_vector(0 downto 0);
    do_upstream_access_call_data : out  std_logic_vector(109 downto 0);
    do_upstream_access_call_tag  :  out  std_logic_vector(1 downto 0);
    do_upstream_access_return_reqs : out  std_logic_vector(0 downto 0);
    do_upstream_access_return_acks : in   std_logic_vector(0 downto 0);
    do_upstream_access_return_data : in   std_logic_vector(64 downto 0);
    do_upstream_access_return_tag :  in   std_logic_vector(1 downto 0);
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
end entity distributor_mux;
architecture distributor_mux_arch of distributor_mux is -- 
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
  signal distributor_mux_CP_384_start: Boolean;
  signal distributor_mux_CP_384_symbol: Boolean;
  -- volatile/operator module components. 
  component do_upstream_access is -- 
    generic (tag_length : integer); 
    port ( -- 
      req : in  std_logic_vector(109 downto 0);
      resp : out  std_logic_vector(64 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  -- links between control-path and data-path
  signal WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_0 : boolean;
  signal RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_0 : boolean;
  signal call_stmt_283_call_ack_0 : boolean;
  signal WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_1 : boolean;
  signal WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_0 : boolean;
  signal call_stmt_283_call_req_0 : boolean;
  signal do_while_stmt_261_branch_ack_1 : boolean;
  signal WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_1 : boolean;
  signal WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_0 : boolean;
  signal do_while_stmt_276_branch_req_0 : boolean;
  signal do_while_stmt_261_branch_ack_0 : boolean;
  signal do_while_stmt_261_branch_req_0 : boolean;
  signal call_stmt_268_call_ack_1 : boolean;
  signal WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_1 : boolean;
  signal call_stmt_268_call_req_1 : boolean;
  signal call_stmt_268_call_ack_0 : boolean;
  signal WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_1 : boolean;
  signal do_while_stmt_276_branch_ack_1 : boolean;
  signal RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_1 : boolean;
  signal RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_1 : boolean;
  signal call_stmt_268_call_req_0 : boolean;
  signal WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_0 : boolean;
  signal RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_0 : boolean;
  signal RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_0 : boolean;
  signal call_stmt_283_call_ack_1 : boolean;
  signal call_stmt_283_call_req_1 : boolean;
  signal RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_1 : boolean;
  signal RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_1 : boolean;
  signal do_while_stmt_276_branch_ack_0 : boolean;
  signal RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "distributor_mux_input_buffer", -- 
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
  distributor_mux_CP_384_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "distributor_mux_out_buffer", -- 
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
    preds <= distributor_mux_CP_384_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= distributor_mux_CP_384_start & tag_ilock_write_ack_symbol;
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
    preds <= distributor_mux_CP_384_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  distributor_mux_CP_384: Block -- control-path 
    signal distributor_mux_CP_384_elements: BooleanArray(48 downto 0);
    -- 
  begin -- 
    distributor_mux_CP_384_elements(0) <= distributor_mux_CP_384_start;
    distributor_mux_CP_384_symbol <= distributor_mux_CP_384_elements(48);
    -- CP-element group 0:  fork  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0: 	25 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_275/branch_block_stmt_275__entry__
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_275/$entry
      -- CP-element group 0: 	 parallel_block_stmt_259/$entry
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_260/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276__entry__
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261__entry__
      -- CP-element group 0: 	 parallel_block_stmt_259/branch_block_stmt_260/branch_block_stmt_260__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	23 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	48 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 parallel_block_stmt_259/branch_block_stmt_260/branch_block_stmt_260__exit__
      -- CP-element group 1: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261__exit__
      -- CP-element group 1: 	 parallel_block_stmt_259/branch_block_stmt_260/$exit
      -- 
    distributor_mux_CP_384_elements(1) <= distributor_mux_CP_384_elements(23);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261__entry__
      -- CP-element group 2: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/$entry
      -- 
    distributor_mux_CP_384_elements(2) <= distributor_mux_CP_384_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	23 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261__exit__
      -- 
    -- Element group distributor_mux_CP_384_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_back
      -- 
    -- Element group distributor_mux_CP_384_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	20 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	21 
    -- CP-element group 5: 	22 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_taken/$entry
      -- CP-element group 5: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/condition_done
      -- CP-element group 5: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_exit/$entry
      -- 
    distributor_mux_CP_384_elements(5) <= distributor_mux_CP_384_elements(20);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	19 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_body_done
      -- 
    distributor_mux_CP_384_elements(6) <= distributor_mux_CP_384_elements(19);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/back_edge_to_loop_body
      -- 
    distributor_mux_CP_384_elements(7) <= distributor_mux_CP_384_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/first_time_through_loop_body
      -- 
    distributor_mux_CP_384_elements(8) <= distributor_mux_CP_384_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9: 	20 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/$entry
      -- CP-element group 9: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/loop_body_start
      -- 
    -- Element group distributor_mux_CP_384_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Sample/rr
      -- CP-element group 10: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Sample/$entry
      -- CP-element group 10: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_sample_start_
      -- 
    rr_420_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_420_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(10), ack => RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_0); -- 
    distributor_mux_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(9) & distributor_mux_CP_384_elements(13);
      gj_distributor_mux_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_update_start_
      -- CP-element group 11: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Update/cr
      -- CP-element group 11: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Update/$entry
      -- 
    cr_425_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_425_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(11), ack => RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_1); -- 
    distributor_mux_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(12) & distributor_mux_CP_384_elements(15);
      gj_distributor_mux_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Sample/$exit
      -- CP-element group 12: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_sample_completed_
      -- CP-element group 12: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Sample/ra
      -- 
    ra_421_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_0, ack => distributor_mux_CP_384_elements(12)); -- 
    -- CP-element group 13:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	15 
    -- CP-element group 13: marked-successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (6) 
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_update_completed_
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Sample/crr
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Sample/$entry
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_sample_start_
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Update/ca
      -- CP-element group 13: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/RPIPE_ACB_ETH_MASTER_REQUEST_264_Update/$exit
      -- 
    ca_426_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_1, ack => distributor_mux_CP_384_elements(13)); -- 
    crr_434_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_434_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(13), ack => call_stmt_268_call_req_0); -- 
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	18 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	16 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Update/ccr
      -- CP-element group 14: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Update/$entry
      -- CP-element group 14: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_update_start_
      -- 
    ccr_439_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_439_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(14), ack => call_stmt_268_call_req_1); -- 
    distributor_mux_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_mux_CP_384_elements(18);
      gj_distributor_mux_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	13 
    -- CP-element group 15: successors 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (3) 
      -- CP-element group 15: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Sample/$exit
      -- CP-element group 15: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Sample/cra
      -- CP-element group 15: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_sample_completed_
      -- 
    cra_435_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_268_call_ack_0, ack => distributor_mux_CP_384_elements(15)); -- 
    -- CP-element group 16:  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	14 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	17 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Update/cca
      -- CP-element group 16: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_Update/$exit
      -- CP-element group 16: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/call_stmt_268_update_completed_
      -- 
    cca_440_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_268_call_ack_1, ack => distributor_mux_CP_384_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	16 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	19 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	18 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Sample/req
      -- CP-element group 17: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Sample/$entry
      -- CP-element group 17: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_sample_start_
      -- 
    req_448_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_448_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(17), ack => WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_0); -- 
    distributor_mux_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(16) & distributor_mux_CP_384_elements(19);
      gj_distributor_mux_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	17 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	19 
    -- CP-element group 18: marked-successors 
    -- CP-element group 18: 	14 
    -- CP-element group 18:  members (6) 
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Sample/$exit
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_update_start_
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_sample_completed_
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Update/req
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Update/$entry
      -- CP-element group 18: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Sample/ack
      -- 
    ack_449_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_0, ack => distributor_mux_CP_384_elements(18)); -- 
    req_453_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_453_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(18), ack => WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_1); -- 
    -- CP-element group 19:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	18 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	6 
    -- CP-element group 19: marked-successors 
    -- CP-element group 19: 	17 
    -- CP-element group 19:  members (4) 
      -- CP-element group 19: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Update/ack
      -- CP-element group 19: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_update_completed_
      -- CP-element group 19: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/WPIPE_ACB_ETH_MASTER_RESPONSE_269_Update/$exit
      -- CP-element group 19: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/$exit
      -- 
    ack_454_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_1, ack => distributor_mux_CP_384_elements(19)); -- 
    -- CP-element group 20:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	9 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	5 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/condition_evaluated
      -- CP-element group 20: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/do_while_stmt_261_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_411_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_411_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(20), ack => do_while_stmt_261_branch_req_0); -- 
    -- Element group distributor_mux_CP_384_elements(20) is a control-delay.
    cp_element_20_delay: control_delay_element  generic map(name => " 20_delay", delay_value => 1)  port map(req => distributor_mux_CP_384_elements(9), ack => distributor_mux_CP_384_elements(20), clk => clk, reset =>reset);
    -- CP-element group 21:  transition  input  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	5 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (2) 
      -- CP-element group 21: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_exit/ack
      -- CP-element group 21: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_exit/$exit
      -- 
    ack_459_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 21_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_261_branch_ack_0, ack => distributor_mux_CP_384_elements(21)); -- 
    -- CP-element group 22:  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	5 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_taken/ack
      -- CP-element group 22: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/loop_taken/$exit
      -- 
    ack_463_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_261_branch_ack_1, ack => distributor_mux_CP_384_elements(22)); -- 
    -- CP-element group 23:  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	3 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	1 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 parallel_block_stmt_259/branch_block_stmt_260/do_while_stmt_261/$exit
      -- 
    distributor_mux_CP_384_elements(23) <= distributor_mux_CP_384_elements(3);
    -- CP-element group 24:  transition  place  bypass 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	47 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	48 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 parallel_block_stmt_259/branch_block_stmt_275/$exit
      -- CP-element group 24: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276__exit__
      -- CP-element group 24: 	 parallel_block_stmt_259/branch_block_stmt_275/branch_block_stmt_275__exit__
      -- 
    distributor_mux_CP_384_elements(24) <= distributor_mux_CP_384_elements(47);
    -- CP-element group 25:  transition  place  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	0 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	31 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276__entry__
      -- CP-element group 25: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/$entry
      -- 
    distributor_mux_CP_384_elements(25) <= distributor_mux_CP_384_elements(0);
    -- CP-element group 26:  merge  place  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	47 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276__exit__
      -- 
    -- Element group distributor_mux_CP_384_elements(26) is bound as output of CP function.
    -- CP-element group 27:  merge  place  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	30 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_back
      -- 
    -- Element group distributor_mux_CP_384_elements(27) is bound as output of CP function.
    -- CP-element group 28:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	44 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	46 
    -- CP-element group 28: 	45 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_taken/$entry
      -- CP-element group 28: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/condition_done
      -- CP-element group 28: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_exit/$entry
      -- 
    distributor_mux_CP_384_elements(28) <= distributor_mux_CP_384_elements(44);
    -- CP-element group 29:  branch  place  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	43 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (1) 
      -- CP-element group 29: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_body_done
      -- 
    distributor_mux_CP_384_elements(29) <= distributor_mux_CP_384_elements(43);
    -- CP-element group 30:  transition  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	27 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (1) 
      -- CP-element group 30: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/back_edge_to_loop_body
      -- 
    distributor_mux_CP_384_elements(30) <= distributor_mux_CP_384_elements(27);
    -- CP-element group 31:  transition  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	25 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (1) 
      -- CP-element group 31: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/first_time_through_loop_body
      -- 
    distributor_mux_CP_384_elements(31) <= distributor_mux_CP_384_elements(25);
    -- CP-element group 32:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32: 	44 
    -- CP-element group 32:  members (2) 
      -- CP-element group 32: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/loop_body_start
      -- CP-element group 32: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/$entry
      -- 
    -- Element group distributor_mux_CP_384_elements(32) is bound as output of CP function.
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	32 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	36 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Sample/rr
      -- CP-element group 33: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Sample/$entry
      -- CP-element group 33: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_sample_start_
      -- 
    rr_495_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_495_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(33), ack => RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_0); -- 
    distributor_mux_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(32) & distributor_mux_CP_384_elements(36);
      gj_distributor_mux_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	35 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	39 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Update/cr
      -- CP-element group 34: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Update/$entry
      -- CP-element group 34: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_update_start_
      -- 
    cr_500_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_500_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(34), ack => RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_1); -- 
    distributor_mux_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(35) & distributor_mux_CP_384_elements(39);
      gj_distributor_mux_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	34 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Sample/ra
      -- CP-element group 35: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Sample/$exit
      -- CP-element group 35: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_sample_completed_
      -- 
    ra_496_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_0, ack => distributor_mux_CP_384_elements(35)); -- 
    -- CP-element group 36:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	37 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	33 
    -- CP-element group 36:  members (3) 
      -- CP-element group 36: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Update/ca
      -- CP-element group 36: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_Update/$exit
      -- CP-element group 36: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/RPIPE_ACB_PCIE_MASTER_REQUEST_279_update_completed_
      -- 
    ca_501_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_1, ack => distributor_mux_CP_384_elements(36)); -- 
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	36 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	39 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Sample/crr
      -- CP-element group 37: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_sample_start_
      -- CP-element group 37: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Sample/$entry
      -- 
    crr_509_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_509_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(37), ack => call_stmt_283_call_req_0); -- 
    distributor_mux_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(36) & distributor_mux_CP_384_elements(39);
      gj_distributor_mux_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: marked-predecessors 
    -- CP-element group 38: 	42 
    -- CP-element group 38: 	40 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_update_start_
      -- CP-element group 38: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Update/ccr
      -- CP-element group 38: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Update/$entry
      -- 
    ccr_514_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_514_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(38), ack => call_stmt_283_call_req_1); -- 
    distributor_mux_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(42) & distributor_mux_CP_384_elements(40);
      gj_distributor_mux_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: marked-successors 
    -- CP-element group 39: 	34 
    -- CP-element group 39: 	37 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Sample/cra
      -- CP-element group 39: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_sample_completed_
      -- CP-element group 39: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Sample/$exit
      -- 
    cra_510_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_283_call_ack_0, ack => distributor_mux_CP_384_elements(39)); -- 
    -- CP-element group 40:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	41 
    -- CP-element group 40: marked-successors 
    -- CP-element group 40: 	38 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_update_completed_
      -- CP-element group 40: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Update/cca
      -- CP-element group 40: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/call_stmt_283_Update/$exit
      -- 
    cca_515_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_283_call_ack_1, ack => distributor_mux_CP_384_elements(40)); -- 
    -- CP-element group 41:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	40 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	43 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	42 
    -- CP-element group 41:  members (3) 
      -- CP-element group 41: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Sample/req
      -- CP-element group 41: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_sample_start_
      -- CP-element group 41: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Sample/$entry
      -- 
    req_523_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_523_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(41), ack => WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_0); -- 
    distributor_mux_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(40) & distributor_mux_CP_384_elements(43);
      gj_distributor_mux_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	41 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	43 
    -- CP-element group 42: marked-successors 
    -- CP-element group 42: 	38 
    -- CP-element group 42:  members (6) 
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Sample/ack
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_sample_completed_
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Sample/$exit
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Update/req
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_update_start_
      -- CP-element group 42: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Update/$entry
      -- 
    ack_524_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 42_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_0, ack => distributor_mux_CP_384_elements(42)); -- 
    req_528_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_528_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(42), ack => WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_1); -- 
    -- CP-element group 43:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	42 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	29 
    -- CP-element group 43: marked-successors 
    -- CP-element group 43: 	41 
    -- CP-element group 43:  members (4) 
      -- CP-element group 43: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Update/ack
      -- CP-element group 43: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_update_completed_
      -- CP-element group 43: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/$exit
      -- CP-element group 43: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/WPIPE_ACB_PCIE_MASTER_RESPONSE_284_Update/$exit
      -- 
    ack_529_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_1, ack => distributor_mux_CP_384_elements(43)); -- 
    -- CP-element group 44:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	32 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	28 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/condition_evaluated
      -- CP-element group 44: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/do_while_stmt_276_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_486_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_486_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_mux_CP_384_elements(44), ack => do_while_stmt_276_branch_req_0); -- 
    -- Element group distributor_mux_CP_384_elements(44) is a control-delay.
    cp_element_44_delay: control_delay_element  generic map(name => " 44_delay", delay_value => 1)  port map(req => distributor_mux_CP_384_elements(32), ack => distributor_mux_CP_384_elements(44), clk => clk, reset =>reset);
    -- CP-element group 45:  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	28 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (2) 
      -- CP-element group 45: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_exit/ack
      -- CP-element group 45: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_exit/$exit
      -- 
    ack_534_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_276_branch_ack_0, ack => distributor_mux_CP_384_elements(45)); -- 
    -- CP-element group 46:  transition  input  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	28 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (2) 
      -- CP-element group 46: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_taken/ack
      -- CP-element group 46: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/loop_taken/$exit
      -- 
    ack_538_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_276_branch_ack_1, ack => distributor_mux_CP_384_elements(46)); -- 
    -- CP-element group 47:  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: 	26 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	24 
    -- CP-element group 47:  members (1) 
      -- CP-element group 47: 	 parallel_block_stmt_259/branch_block_stmt_275/do_while_stmt_276/$exit
      -- 
    distributor_mux_CP_384_elements(47) <= distributor_mux_CP_384_elements(26);
    -- CP-element group 48:  join  transition  bypass 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	24 
    -- CP-element group 48: 	1 
    -- CP-element group 48: successors 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 $exit
      -- CP-element group 48: 	 parallel_block_stmt_259/$exit
      -- 
    distributor_mux_cp_element_group_48: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_mux_cp_element_group_48"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_mux_CP_384_elements(24) & distributor_mux_CP_384_elements(1);
      gj_distributor_mux_cp_element_group_48 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_mux_CP_384_elements(48), clk => clk, reset => reset); --
    end block;
    distributor_mux_do_while_stmt_276_terminator_539: loop_terminator -- 
      generic map (name => " distributor_mux_do_while_stmt_276_terminator_539", max_iterations_in_flight =>15) 
      port map(loop_body_exit => distributor_mux_CP_384_elements(29),loop_continue => distributor_mux_CP_384_elements(46),loop_terminate => distributor_mux_CP_384_elements(45),loop_back => distributor_mux_CP_384_elements(27),loop_exit => distributor_mux_CP_384_elements(26),clk => clk, reset => reset); -- 
    entry_tmerge_487_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= distributor_mux_CP_384_elements(30);
        preds(1)  <= distributor_mux_CP_384_elements(31);
        entry_tmerge_487 : transition_merge -- 
          generic map(name => " entry_tmerge_487")
          port map (preds => preds, symbol_out => distributor_mux_CP_384_elements(32));
          -- 
    end block;
    distributor_mux_do_while_stmt_261_terminator_464: loop_terminator -- 
      generic map (name => " distributor_mux_do_while_stmt_261_terminator_464", max_iterations_in_flight =>15) 
      port map(loop_body_exit => distributor_mux_CP_384_elements(6),loop_continue => distributor_mux_CP_384_elements(22),loop_terminate => distributor_mux_CP_384_elements(21),loop_back => distributor_mux_CP_384_elements(4),loop_exit => distributor_mux_CP_384_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_412_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= distributor_mux_CP_384_elements(7);
        preds(1)  <= distributor_mux_CP_384_elements(8);
        entry_tmerge_412 : transition_merge -- 
          generic map(name => " entry_tmerge_412")
          port map (preds => preds, symbol_out => distributor_mux_CP_384_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal eth_req_265 : std_logic_vector(109 downto 0);
    signal eth_resp_268 : std_logic_vector(64 downto 0);
    signal konst_273_wire_constant : std_logic_vector(0 downto 0);
    signal konst_288_wire_constant : std_logic_vector(0 downto 0);
    signal pcie_req_280 : std_logic_vector(109 downto 0);
    signal pcie_resp_283 : std_logic_vector(64 downto 0);
    -- 
  begin -- 
    konst_273_wire_constant <= "1";
    konst_288_wire_constant <= "1";
    do_while_stmt_261_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_273_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_261_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_261_branch_req_0,
          ack0 => do_while_stmt_261_branch_ack_0,
          ack1 => do_while_stmt_261_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    do_while_stmt_276_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_288_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_276_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_276_branch_req_0,
          ack0 => do_while_stmt_276_branch_ack_0,
          ack1 => do_while_stmt_276_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- shared inport operator group (0) : RPIPE_ACB_ETH_MASTER_REQUEST_264_inst 
    InportGroup_0: Block -- 
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
      reqL_unguarded(0) <= RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_0;
      RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_req_1;
      RPIPE_ACB_ETH_MASTER_REQUEST_264_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      eth_req_265 <= data_out(109 downto 0);
      ACB_ETH_MASTER_REQUEST_read_0_gI: SplitGuardInterface generic map(name => "ACB_ETH_MASTER_REQUEST_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_ETH_MASTER_REQUEST_read_0: InputPortRevised -- 
        generic map ( name => "ACB_ETH_MASTER_REQUEST_read_0", data_width => 110,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_ETH_MASTER_REQUEST_pipe_read_req(0),
          oack => ACB_ETH_MASTER_REQUEST_pipe_read_ack(0),
          odata => ACB_ETH_MASTER_REQUEST_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst 
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
      reqL_unguarded(0) <= RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_0;
      RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_req_1;
      RPIPE_ACB_PCIE_MASTER_REQUEST_279_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      pcie_req_280 <= data_out(109 downto 0);
      ACB_PCIE_MASTER_REQUEST_read_1_gI: SplitGuardInterface generic map(name => "ACB_PCIE_MASTER_REQUEST_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_PCIE_MASTER_REQUEST_read_1: InputPortRevised -- 
        generic map ( name => "ACB_PCIE_MASTER_REQUEST_read_1", data_width => 110,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_PCIE_MASTER_REQUEST_pipe_read_req(0),
          oack => ACB_PCIE_MASTER_REQUEST_pipe_read_ack(0),
          odata => ACB_PCIE_MASTER_REQUEST_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared outport operator group (0) : WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst 
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
      sample_req_unguarded(0) <= WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_0;
      WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_req_1;
      WPIPE_ACB_ETH_MASTER_RESPONSE_269_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= eth_resp_268;
      ACB_ETH_MASTER_RESPONSE_write_0_gI: SplitGuardInterface generic map(name => "ACB_ETH_MASTER_RESPONSE_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_ETH_MASTER_RESPONSE_write_0: OutputPortRevised -- 
        generic map ( name => "ACB_ETH_MASTER_RESPONSE", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_ETH_MASTER_RESPONSE_pipe_write_req(0),
          oack => ACB_ETH_MASTER_RESPONSE_pipe_write_ack(0),
          odata => ACB_ETH_MASTER_RESPONSE_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst 
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
      sample_req_unguarded(0) <= WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_0;
      WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_req_1;
      WPIPE_ACB_PCIE_MASTER_RESPONSE_284_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= pcie_resp_283;
      ACB_PCIE_MASTER_RESPONSE_write_1_gI: SplitGuardInterface generic map(name => "ACB_PCIE_MASTER_RESPONSE_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_PCIE_MASTER_RESPONSE_write_1: OutputPortRevised -- 
        generic map ( name => "ACB_PCIE_MASTER_RESPONSE", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_PCIE_MASTER_RESPONSE_pipe_write_req(0),
          oack => ACB_PCIE_MASTER_RESPONSE_pipe_write_ack(0),
          odata => ACB_PCIE_MASTER_RESPONSE_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared call operator group (0) : call_stmt_283_call call_stmt_268_call 
    do_upstream_access_call_group_0: Block -- 
      signal data_in: std_logic_vector(219 downto 0);
      signal data_out: std_logic_vector(129 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 3, 1 => 3);
      -- 
    begin -- 
      reqL_unguarded(1) <= call_stmt_283_call_req_0;
      reqL_unguarded(0) <= call_stmt_268_call_req_0;
      call_stmt_283_call_ack_0 <= ackL_unguarded(1);
      call_stmt_268_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= call_stmt_283_call_req_1;
      reqR_unguarded(0) <= call_stmt_268_call_req_1;
      call_stmt_283_call_ack_1 <= ackR_unguarded(1);
      call_stmt_268_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      do_upstream_access_call_group_0_accessRegulator_0: access_regulator_base generic map (name => "do_upstream_access_call_group_0_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      do_upstream_access_call_group_0_accessRegulator_1: access_regulator_base generic map (name => "do_upstream_access_call_group_0_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      do_upstream_access_call_group_0_gI: SplitGuardInterface generic map(name => "do_upstream_access_call_group_0_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
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
      data_in <= pcie_req_280 & eth_req_265;
      pcie_resp_283 <= data_out(129 downto 65);
      eth_resp_268 <= data_out(64 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 220,
        owidth => 110,
        buffering => inBUFs,
        full_rate =>  true,
        twidth => 2,
        nreqs => 2,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => do_upstream_access_call_reqs(0),
          ackR => do_upstream_access_call_acks(0),
          dataR => do_upstream_access_call_data(109 downto 0),
          tagR => do_upstream_access_call_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 65,
          owidth => 130,
          detailed_buffering_per_output => outBUFs, 
          full_rate => true, 
          twidth => 2,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 2) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => do_upstream_access_return_acks(0), -- cross-over
          ackL => do_upstream_access_return_reqs(0), -- cross-over
          dataL => do_upstream_access_return_data(64 downto 0),
          tagL => do_upstream_access_return_tag(1 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end distributor_mux_arch;
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
use switches_lib.distributor_1p1e_red_global_package.all;
entity distributor_tap is -- 
  generic (tag_length : integer); 
  port ( -- 
    ACB_ETH_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_DRAM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_DRAM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_DRAM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(109 downto 0);
    ETH_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
    ETH_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
    PCIE_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
    PCIE_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    ACB_DRAM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_DRAM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_DRAM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(64 downto 0);
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
end entity distributor_tap;
architecture distributor_tap_arch of distributor_tap is -- 
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
  signal distributor_tap_CP_0_start: Boolean;
  signal distributor_tap_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_85_branch_req_0 : boolean;
  signal RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_0 : boolean;
  signal RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_0 : boolean;
  signal RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_1 : boolean;
  signal RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_1 : boolean;
  signal WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_0 : boolean;
  signal WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_0 : boolean;
  signal WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_1 : boolean;
  signal WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_1 : boolean;
  signal W_to_eth_config_190_delayed_8_0_149_inst_req_0 : boolean;
  signal W_to_eth_config_190_delayed_8_0_149_inst_ack_0 : boolean;
  signal W_to_eth_config_190_delayed_8_0_149_inst_req_1 : boolean;
  signal W_to_eth_config_190_delayed_8_0_149_inst_ack_1 : boolean;
  signal RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_0 : boolean;
  signal RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_0 : boolean;
  signal RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_1 : boolean;
  signal RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_1 : boolean;
  signal RPIPE_ACB_DRAM_RESPONSE_198_inst_req_0 : boolean;
  signal RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_0 : boolean;
  signal RPIPE_ACB_DRAM_RESPONSE_198_inst_req_1 : boolean;
  signal WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_0 : boolean;
  signal WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_0 : boolean;
  signal WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_1 : boolean;
  signal WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_1 : boolean;
  signal W_to_eth_198_delayed_8_0_160_inst_req_0 : boolean;
  signal W_to_eth_198_delayed_8_0_160_inst_ack_0 : boolean;
  signal W_to_eth_198_delayed_8_0_160_inst_req_1 : boolean;
  signal W_to_eth_198_delayed_8_0_160_inst_ack_1 : boolean;
  signal RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_0 : boolean;
  signal RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_0 : boolean;
  signal RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_1 : boolean;
  signal RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_1 : boolean;
  signal WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_0 : boolean;
  signal WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_0 : boolean;
  signal WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_1 : boolean;
  signal WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_1 : boolean;
  signal W_to_pcie_config_206_delayed_8_0_171_inst_req_0 : boolean;
  signal W_to_pcie_config_206_delayed_8_0_171_inst_ack_0 : boolean;
  signal W_to_pcie_config_206_delayed_8_0_171_inst_req_1 : boolean;
  signal W_to_pcie_config_206_delayed_8_0_171_inst_ack_1 : boolean;
  signal RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_0 : boolean;
  signal RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_0 : boolean;
  signal RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_1 : boolean;
  signal RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_1 : boolean;
  signal WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_0 : boolean;
  signal WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_0 : boolean;
  signal WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_1 : boolean;
  signal WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_1 : boolean;
  signal W_to_pcie_214_delayed_8_0_182_inst_req_0 : boolean;
  signal W_to_pcie_214_delayed_8_0_182_inst_ack_0 : boolean;
  signal W_to_pcie_214_delayed_8_0_182_inst_req_1 : boolean;
  signal W_to_pcie_214_delayed_8_0_182_inst_ack_1 : boolean;
  signal RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_0 : boolean;
  signal RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_0 : boolean;
  signal RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_1 : boolean;
  signal RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_1 : boolean;
  signal WPIPE_ACB_DRAM_REQUEST_190_inst_req_0 : boolean;
  signal WPIPE_ACB_DRAM_REQUEST_190_inst_ack_0 : boolean;
  signal WPIPE_ACB_DRAM_REQUEST_190_inst_req_1 : boolean;
  signal WPIPE_ACB_DRAM_REQUEST_190_inst_ack_1 : boolean;
  signal W_to_dram_222_delayed_8_0_193_inst_req_0 : boolean;
  signal W_to_dram_222_delayed_8_0_193_inst_ack_0 : boolean;
  signal W_to_dram_222_delayed_8_0_193_inst_req_1 : boolean;
  signal W_to_dram_222_delayed_8_0_193_inst_ack_1 : boolean;
  signal RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_1 : boolean;
  signal W_to_eth_config_227_delayed_9_0_200_inst_req_0 : boolean;
  signal W_to_eth_config_227_delayed_9_0_200_inst_ack_0 : boolean;
  signal W_to_eth_config_227_delayed_9_0_200_inst_req_1 : boolean;
  signal W_to_eth_config_227_delayed_9_0_200_inst_ack_1 : boolean;
  signal W_to_eth_231_delayed_9_0_203_inst_req_0 : boolean;
  signal W_to_eth_231_delayed_9_0_203_inst_ack_0 : boolean;
  signal W_to_eth_231_delayed_9_0_203_inst_req_1 : boolean;
  signal W_to_eth_231_delayed_9_0_203_inst_ack_1 : boolean;
  signal W_to_pcie_config_236_delayed_9_0_206_inst_req_0 : boolean;
  signal W_to_pcie_config_236_delayed_9_0_206_inst_ack_0 : boolean;
  signal W_to_pcie_config_236_delayed_9_0_206_inst_req_1 : boolean;
  signal W_to_pcie_config_236_delayed_9_0_206_inst_ack_1 : boolean;
  signal W_to_pcie_241_delayed_9_0_209_inst_req_0 : boolean;
  signal W_to_pcie_241_delayed_9_0_209_inst_ack_0 : boolean;
  signal W_to_pcie_241_delayed_9_0_209_inst_req_1 : boolean;
  signal W_to_pcie_241_delayed_9_0_209_inst_ack_1 : boolean;
  signal W_to_dram_245_delayed_9_0_212_inst_req_0 : boolean;
  signal W_to_dram_245_delayed_9_0_212_inst_ack_0 : boolean;
  signal W_to_dram_245_delayed_9_0_212_inst_req_1 : boolean;
  signal W_to_dram_245_delayed_9_0_212_inst_ack_1 : boolean;
  signal WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_0 : boolean;
  signal WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_0 : boolean;
  signal WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_1 : boolean;
  signal WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_1 : boolean;
  signal do_while_stmt_85_branch_ack_0 : boolean;
  signal do_while_stmt_85_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "distributor_tap_input_buffer", -- 
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
  distributor_tap_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "distributor_tap_out_buffer", -- 
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
    preds <= distributor_tap_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
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
    preds <= distributor_tap_CP_0_start & tag_ilock_write_ack_symbol;
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
    preds <= distributor_tap_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  distributor_tap_CP_0: Block -- control-path 
    signal distributor_tap_CP_0_elements: BooleanArray(86 downto 0);
    -- 
  begin -- 
    distributor_tap_CP_0_elements(0) <= distributor_tap_CP_0_start;
    distributor_tap_CP_0_symbol <= distributor_tap_CP_0_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_84/$entry
      -- CP-element group 0: 	 branch_block_stmt_84/branch_block_stmt_84__entry__
      -- CP-element group 0: 	 branch_block_stmt_84/do_while_stmt_85__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	86 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_84/$exit
      -- CP-element group 1: 	 branch_block_stmt_84/branch_block_stmt_84__exit__
      -- CP-element group 1: 	 branch_block_stmt_84/do_while_stmt_85__exit__
      -- 
    distributor_tap_CP_0_elements(1) <= distributor_tap_CP_0_elements(86);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_84/do_while_stmt_85/$entry
      -- CP-element group 2: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85__entry__
      -- 
    distributor_tap_CP_0_elements(2) <= distributor_tap_CP_0_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	86 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85__exit__
      -- 
    -- Element group distributor_tap_CP_0_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_84/do_while_stmt_85/loop_back
      -- 
    -- Element group distributor_tap_CP_0_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	82 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	84 
    -- CP-element group 5: 	85 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_84/do_while_stmt_85/condition_done
      -- CP-element group 5: 	 branch_block_stmt_84/do_while_stmt_85/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_84/do_while_stmt_85/loop_taken/$entry
      -- 
    distributor_tap_CP_0_elements(5) <= distributor_tap_CP_0_elements(82);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	83 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_84/do_while_stmt_85/loop_body_done
      -- 
    distributor_tap_CP_0_elements(6) <= distributor_tap_CP_0_elements(83);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/back_edge_to_loop_body
      -- 
    distributor_tap_CP_0_elements(7) <= distributor_tap_CP_0_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/first_time_through_loop_body
      -- 
    distributor_tap_CP_0_elements(8) <= distributor_tap_CP_0_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	10 
    -- CP-element group 9: 	82 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/loop_body_start
      -- 
    -- Element group distributor_tap_CP_0_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	9 
    -- CP-element group 10: marked-predecessors 
    -- CP-element group 10: 	13 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	12 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_sample_start_
      -- CP-element group 10: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Sample/rr
      -- 
    rr_33_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_33_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(10), ack => RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_0); -- 
    distributor_tap_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(9) & distributor_tap_CP_0_elements(13);
      gj_distributor_tap_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	45 
    -- CP-element group 11: 	28 
    -- CP-element group 11: 	25 
    -- CP-element group 11: 	15 
    -- CP-element group 11: 	48 
    -- CP-element group 11: 	38 
    -- CP-element group 11: 	35 
    -- CP-element group 11: 	58 
    -- CP-element group 11: 	68 
    -- CP-element group 11: 	71 
    -- CP-element group 11: 	74 
    -- CP-element group 11: 	77 
    -- CP-element group 11: 	65 
    -- CP-element group 11: 	55 
    -- CP-element group 11: 	18 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	13 
    -- CP-element group 11:  members (3) 
      -- CP-element group 11: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_update_start_
      -- CP-element group 11: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Update/$entry
      -- CP-element group 11: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Update/cr
      -- 
    cr_38_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_38_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(11), ack => RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_1); -- 
    distributor_tap_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 15) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1,13 => 1,14 => 1,15 => 1);
      constant place_markings: IntegerArray(0 to 15)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1,11 => 1,12 => 1,13 => 1,14 => 1,15 => 1);
      constant place_delays: IntegerArray(0 to 15) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0,11 => 0,12 => 0,13 => 0,14 => 0,15 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 16); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(12) & distributor_tap_CP_0_elements(45) & distributor_tap_CP_0_elements(28) & distributor_tap_CP_0_elements(25) & distributor_tap_CP_0_elements(15) & distributor_tap_CP_0_elements(48) & distributor_tap_CP_0_elements(38) & distributor_tap_CP_0_elements(35) & distributor_tap_CP_0_elements(58) & distributor_tap_CP_0_elements(68) & distributor_tap_CP_0_elements(71) & distributor_tap_CP_0_elements(74) & distributor_tap_CP_0_elements(77) & distributor_tap_CP_0_elements(65) & distributor_tap_CP_0_elements(55) & distributor_tap_CP_0_elements(18);
      gj_distributor_tap_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 16, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  transition  input  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	10 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Sample/$exit
      -- CP-element group 12: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Sample/ra
      -- 
    ra_34_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_0, ack => distributor_tap_CP_0_elements(12)); -- 
    -- CP-element group 13:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	11 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	28 
    -- CP-element group 13: 	24 
    -- CP-element group 13: 	14 
    -- CP-element group 13: 	34 
    -- CP-element group 13: 	54 
    -- CP-element group 13: 	48 
    -- CP-element group 13: 	38 
    -- CP-element group 13: 	58 
    -- CP-element group 13: 	68 
    -- CP-element group 13: 	71 
    -- CP-element group 13: 	74 
    -- CP-element group 13: 	77 
    -- CP-element group 13: 	44 
    -- CP-element group 13: 	65 
    -- CP-element group 13: 	18 
    -- CP-element group 13: marked-successors 
    -- CP-element group 13: 	10 
    -- CP-element group 13:  members (33) 
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_update_completed_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Update/$exit
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_Update/ca
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Sample/req
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_sample_start_
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Sample/$entry
      -- CP-element group 13: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Sample/req
      -- 
    ca_39_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_1, ack => distributor_tap_CP_0_elements(13)); -- 
    req_187_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_187_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_pcie_214_delayed_8_0_182_inst_req_0); -- 
    req_61_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_61_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_eth_config_190_delayed_8_0_149_inst_req_0); -- 
    req_145_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_145_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_pcie_config_206_delayed_8_0_171_inst_req_0); -- 
    req_103_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_103_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_eth_198_delayed_8_0_160_inst_req_0); -- 
    req_285_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_285_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_pcie_config_236_delayed_9_0_206_inst_req_0); -- 
    req_299_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_299_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_pcie_241_delayed_9_0_209_inst_req_0); -- 
    req_313_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_313_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_dram_245_delayed_9_0_212_inst_req_0); -- 
    req_257_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_257_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_eth_config_227_delayed_9_0_200_inst_req_0); -- 
    req_271_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_271_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_eth_231_delayed_9_0_203_inst_req_0); -- 
    req_229_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_229_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(13), ack => W_to_dram_222_delayed_8_0_193_inst_req_0); -- 
    -- CP-element group 14:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	13 
    -- CP-element group 14: marked-predecessors 
    -- CP-element group 14: 	16 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_sample_start_
      -- CP-element group 14: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Sample/$entry
      -- CP-element group 14: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Sample/req
      -- 
    req_47_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_47_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(14), ack => WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_0); -- 
    distributor_tap_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(13) & distributor_tap_CP_0_elements(16);
      gj_distributor_tap_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (6) 
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_update_start_
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Sample/ack
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Update/$entry
      -- CP-element group 15: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Update/req
      -- 
    ack_48_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_0, ack => distributor_tap_CP_0_elements(15)); -- 
    req_52_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_52_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(15), ack => WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_1); -- 
    -- CP-element group 16:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	83 
    -- CP-element group 16: marked-successors 
    -- CP-element group 16: 	14 
    -- CP-element group 16:  members (3) 
      -- CP-element group 16: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Update/$exit
      -- CP-element group 16: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_CONFIG_REQUEST_146_Update/ack
      -- 
    ack_53_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_1, ack => distributor_tap_CP_0_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: marked-predecessors 
    -- CP-element group 17: 	22 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	19 
    -- CP-element group 17:  members (3) 
      -- CP-element group 17: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_update_start_
      -- CP-element group 17: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Update/$entry
      -- CP-element group 17: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Update/req
      -- 
    req_66_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_66_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(17), ack => W_to_eth_config_190_delayed_8_0_149_inst_req_1); -- 
    distributor_tap_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(22);
      gj_distributor_tap_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	13 
    -- CP-element group 18: successors 
    -- CP-element group 18: marked-successors 
    -- CP-element group 18: 	11 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_sample_completed_
      -- CP-element group 18: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Sample/$exit
      -- CP-element group 18: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Sample/ack
      -- 
    ack_62_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_config_190_delayed_8_0_149_inst_ack_0, ack => distributor_tap_CP_0_elements(18)); -- 
    -- CP-element group 19:  transition  input  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	17 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19:  members (3) 
      -- CP-element group 19: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_update_completed_
      -- CP-element group 19: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Update/$exit
      -- CP-element group 19: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_151_Update/ack
      -- 
    ack_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_config_190_delayed_8_0_149_inst_ack_1, ack => distributor_tap_CP_0_elements(19)); -- 
    -- CP-element group 20:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	19 
    -- CP-element group 20: marked-predecessors 
    -- CP-element group 20: 	23 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	22 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_sample_start_
      -- CP-element group 20: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Sample/$entry
      -- CP-element group 20: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Sample/rr
      -- 
    rr_75_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_75_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(20), ack => RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_0); -- 
    distributor_tap_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(19) & distributor_tap_CP_0_elements(23);
      gj_distributor_tap_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	22 
    -- CP-element group 21: marked-predecessors 
    -- CP-element group 21: 	80 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	23 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_update_start_
      -- CP-element group 21: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Update/$entry
      -- CP-element group 21: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Update/cr
      -- 
    cr_80_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_80_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(21), ack => RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_1); -- 
    distributor_tap_cp_element_group_21: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_21"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(22) & distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_21 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(21), clk => clk, reset => reset); --
    end block;
    -- CP-element group 22:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	20 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	21 
    -- CP-element group 22: marked-successors 
    -- CP-element group 22: 	17 
    -- CP-element group 22:  members (3) 
      -- CP-element group 22: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_sample_completed_
      -- CP-element group 22: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Sample/$exit
      -- CP-element group 22: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Sample/ra
      -- 
    ra_76_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_0, ack => distributor_tap_CP_0_elements(22)); -- 
    -- CP-element group 23:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	21 
    -- CP-element group 23: successors 
    -- CP-element group 23: 	79 
    -- CP-element group 23: marked-successors 
    -- CP-element group 23: 	20 
    -- CP-element group 23:  members (3) 
      -- CP-element group 23: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_update_completed_
      -- CP-element group 23: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Update/$exit
      -- CP-element group 23: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_CONFIG_RESPONSE_154_Update/ca
      -- 
    ca_81_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_1, ack => distributor_tap_CP_0_elements(23)); -- 
    -- CP-element group 24:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	13 
    -- CP-element group 24: marked-predecessors 
    -- CP-element group 24: 	26 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	25 
    -- CP-element group 24:  members (3) 
      -- CP-element group 24: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Sample/$entry
      -- CP-element group 24: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Sample/req
      -- 
    req_89_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_89_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(24), ack => WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_0); -- 
    distributor_tap_cp_element_group_24: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_24"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(13) & distributor_tap_CP_0_elements(26);
      gj_distributor_tap_cp_element_group_24 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(24), clk => clk, reset => reset); --
    end block;
    -- CP-element group 25:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	24 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	26 
    -- CP-element group 25: marked-successors 
    -- CP-element group 25: 	11 
    -- CP-element group 25:  members (6) 
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_sample_completed_
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_update_start_
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Sample/$exit
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Sample/ack
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Update/$entry
      -- CP-element group 25: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Update/req
      -- 
    ack_90_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 25_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_0, ack => distributor_tap_CP_0_elements(25)); -- 
    req_94_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_94_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(25), ack => WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_1); -- 
    -- CP-element group 26:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	25 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	83 
    -- CP-element group 26: marked-successors 
    -- CP-element group 26: 	24 
    -- CP-element group 26:  members (3) 
      -- CP-element group 26: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_update_completed_
      -- CP-element group 26: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Update/$exit
      -- CP-element group 26: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_ETH_SLAVE_REQUEST_157_Update/ack
      -- 
    ack_95_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_1, ack => distributor_tap_CP_0_elements(26)); -- 
    -- CP-element group 27:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: marked-predecessors 
    -- CP-element group 27: 	32 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (3) 
      -- CP-element group 27: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_update_start_
      -- CP-element group 27: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Update/$entry
      -- CP-element group 27: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Update/req
      -- 
    req_108_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_108_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(27), ack => W_to_eth_198_delayed_8_0_160_inst_req_1); -- 
    distributor_tap_cp_element_group_27: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_27"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(32);
      gj_distributor_tap_cp_element_group_27 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(27), clk => clk, reset => reset); --
    end block;
    -- CP-element group 28:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	13 
    -- CP-element group 28: successors 
    -- CP-element group 28: marked-successors 
    -- CP-element group 28: 	11 
    -- CP-element group 28:  members (3) 
      -- CP-element group 28: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_sample_completed_
      -- CP-element group 28: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Sample/$exit
      -- CP-element group 28: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Sample/ack
      -- 
    ack_104_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_198_delayed_8_0_160_inst_ack_0, ack => distributor_tap_CP_0_elements(28)); -- 
    -- CP-element group 29:  transition  input  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	30 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_update_completed_
      -- CP-element group 29: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Update/$exit
      -- CP-element group 29: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_162_Update/ack
      -- 
    ack_109_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_198_delayed_8_0_160_inst_ack_1, ack => distributor_tap_CP_0_elements(29)); -- 
    -- CP-element group 30:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	29 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	33 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_sample_start_
      -- CP-element group 30: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Sample/$entry
      -- CP-element group 30: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Sample/rr
      -- 
    rr_117_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_117_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(30), ack => RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_0); -- 
    distributor_tap_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(29) & distributor_tap_CP_0_elements(33);
      gj_distributor_tap_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	32 
    -- CP-element group 31: marked-predecessors 
    -- CP-element group 31: 	80 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_update_start_
      -- CP-element group 31: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Update/$entry
      -- CP-element group 31: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Update/cr
      -- 
    cr_122_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_122_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(31), ack => RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_1); -- 
    distributor_tap_cp_element_group_31: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_31"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(32) & distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_31 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(31), clk => clk, reset => reset); --
    end block;
    -- CP-element group 32:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	31 
    -- CP-element group 32: marked-successors 
    -- CP-element group 32: 	27 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_sample_completed_
      -- CP-element group 32: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Sample/$exit
      -- CP-element group 32: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Sample/ra
      -- 
    ra_118_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_0, ack => distributor_tap_CP_0_elements(32)); -- 
    -- CP-element group 33:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	79 
    -- CP-element group 33: marked-successors 
    -- CP-element group 33: 	30 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_update_completed_
      -- CP-element group 33: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Update/$exit
      -- CP-element group 33: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_ETH_SLAVE_RESPONSE_165_Update/ca
      -- 
    ca_123_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 33_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_1, ack => distributor_tap_CP_0_elements(33)); -- 
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	13 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	36 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	35 
    -- CP-element group 34:  members (3) 
      -- CP-element group 34: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_sample_start_
      -- CP-element group 34: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Sample/$entry
      -- CP-element group 34: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Sample/req
      -- 
    req_131_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_131_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(34), ack => WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_0); -- 
    distributor_tap_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(13) & distributor_tap_CP_0_elements(36);
      gj_distributor_tap_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	34 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	36 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	11 
    -- CP-element group 35:  members (6) 
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_sample_completed_
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_update_start_
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Sample/$exit
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Sample/ack
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Update/$entry
      -- CP-element group 35: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Update/req
      -- 
    ack_132_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_0, ack => distributor_tap_CP_0_elements(35)); -- 
    req_136_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_136_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(35), ack => WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_1); -- 
    -- CP-element group 36:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	35 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	83 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	34 
    -- CP-element group 36:  members (3) 
      -- CP-element group 36: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Update/$exit
      -- CP-element group 36: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_CONFIG_REQUEST_168_Update/ack
      -- 
    ack_137_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_1, ack => distributor_tap_CP_0_elements(36)); -- 
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	42 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (3) 
      -- CP-element group 37: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_update_start_
      -- CP-element group 37: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Update/$entry
      -- CP-element group 37: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Update/req
      -- 
    req_150_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_150_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(37), ack => W_to_pcie_config_206_delayed_8_0_171_inst_req_1); -- 
    distributor_tap_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(42);
      gj_distributor_tap_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	13 
    -- CP-element group 38: successors 
    -- CP-element group 38: marked-successors 
    -- CP-element group 38: 	11 
    -- CP-element group 38:  members (3) 
      -- CP-element group 38: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_sample_completed_
      -- CP-element group 38: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Sample/$exit
      -- CP-element group 38: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Sample/ack
      -- 
    ack_146_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_config_206_delayed_8_0_171_inst_ack_0, ack => distributor_tap_CP_0_elements(38)); -- 
    -- CP-element group 39:  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	40 
    -- CP-element group 39:  members (3) 
      -- CP-element group 39: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_update_completed_
      -- CP-element group 39: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Update/$exit
      -- CP-element group 39: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_173_Update/ack
      -- 
    ack_151_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_config_206_delayed_8_0_171_inst_ack_1, ack => distributor_tap_CP_0_elements(39)); -- 
    -- CP-element group 40:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	39 
    -- CP-element group 40: marked-predecessors 
    -- CP-element group 40: 	43 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	42 
    -- CP-element group 40:  members (3) 
      -- CP-element group 40: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_sample_start_
      -- CP-element group 40: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Sample/$entry
      -- CP-element group 40: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Sample/rr
      -- 
    rr_159_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_159_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(40), ack => RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_0); -- 
    distributor_tap_cp_element_group_40: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_40"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(39) & distributor_tap_CP_0_elements(43);
      gj_distributor_tap_cp_element_group_40 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(40), clk => clk, reset => reset); --
    end block;
    -- CP-element group 41:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	42 
    -- CP-element group 41: marked-predecessors 
    -- CP-element group 41: 	80 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	43 
    -- CP-element group 41:  members (3) 
      -- CP-element group 41: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_update_start_
      -- CP-element group 41: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Update/cr
      -- 
    cr_164_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_164_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(41), ack => RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_1); -- 
    distributor_tap_cp_element_group_41: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_41"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(42) & distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_41 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(41), clk => clk, reset => reset); --
    end block;
    -- CP-element group 42:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	40 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	41 
    -- CP-element group 42: marked-successors 
    -- CP-element group 42: 	37 
    -- CP-element group 42:  members (3) 
      -- CP-element group 42: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_sample_completed_
      -- CP-element group 42: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Sample/$exit
      -- CP-element group 42: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Sample/ra
      -- 
    ra_160_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 42_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_0, ack => distributor_tap_CP_0_elements(42)); -- 
    -- CP-element group 43:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	41 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	79 
    -- CP-element group 43: marked-successors 
    -- CP-element group 43: 	40 
    -- CP-element group 43:  members (3) 
      -- CP-element group 43: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_update_completed_
      -- CP-element group 43: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Update/$exit
      -- CP-element group 43: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_Update/ca
      -- 
    ca_165_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_1, ack => distributor_tap_CP_0_elements(43)); -- 
    -- CP-element group 44:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	13 
    -- CP-element group 44: marked-predecessors 
    -- CP-element group 44: 	46 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	45 
    -- CP-element group 44:  members (3) 
      -- CP-element group 44: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_sample_start_
      -- CP-element group 44: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Sample/$entry
      -- CP-element group 44: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Sample/req
      -- 
    req_173_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_173_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(44), ack => WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_0); -- 
    distributor_tap_cp_element_group_44: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_44"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(13) & distributor_tap_CP_0_elements(46);
      gj_distributor_tap_cp_element_group_44 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(44), clk => clk, reset => reset); --
    end block;
    -- CP-element group 45:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	44 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	46 
    -- CP-element group 45: marked-successors 
    -- CP-element group 45: 	11 
    -- CP-element group 45:  members (6) 
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_sample_completed_
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_update_start_
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Sample/$exit
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Sample/ack
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Update/$entry
      -- CP-element group 45: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Update/req
      -- 
    ack_174_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_0, ack => distributor_tap_CP_0_elements(45)); -- 
    req_178_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_178_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(45), ack => WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_1); -- 
    -- CP-element group 46:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	45 
    -- CP-element group 46: successors 
    -- CP-element group 46: 	83 
    -- CP-element group 46: marked-successors 
    -- CP-element group 46: 	44 
    -- CP-element group 46:  members (3) 
      -- CP-element group 46: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_update_completed_
      -- CP-element group 46: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Update/$exit
      -- CP-element group 46: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_PCIE_SLAVE_REQUEST_179_Update/ack
      -- 
    ack_179_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_1, ack => distributor_tap_CP_0_elements(46)); -- 
    -- CP-element group 47:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: marked-predecessors 
    -- CP-element group 47: 	52 
    -- CP-element group 47: successors 
    -- CP-element group 47: 	49 
    -- CP-element group 47:  members (3) 
      -- CP-element group 47: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_update_start_
      -- CP-element group 47: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Update/$entry
      -- CP-element group 47: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Update/req
      -- 
    req_192_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_192_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(47), ack => W_to_pcie_214_delayed_8_0_182_inst_req_1); -- 
    distributor_tap_cp_element_group_47: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_47"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(52);
      gj_distributor_tap_cp_element_group_47 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(47), clk => clk, reset => reset); --
    end block;
    -- CP-element group 48:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: 	13 
    -- CP-element group 48: successors 
    -- CP-element group 48: marked-successors 
    -- CP-element group 48: 	11 
    -- CP-element group 48:  members (3) 
      -- CP-element group 48: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_sample_completed_
      -- CP-element group 48: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Sample/$exit
      -- CP-element group 48: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Sample/ack
      -- 
    ack_188_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 48_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_214_delayed_8_0_182_inst_ack_0, ack => distributor_tap_CP_0_elements(48)); -- 
    -- CP-element group 49:  transition  input  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	47 
    -- CP-element group 49: successors 
    -- CP-element group 49: 	50 
    -- CP-element group 49:  members (3) 
      -- CP-element group 49: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_update_completed_
      -- CP-element group 49: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Update/$exit
      -- CP-element group 49: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_184_Update/ack
      -- 
    ack_193_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 49_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_214_delayed_8_0_182_inst_ack_1, ack => distributor_tap_CP_0_elements(49)); -- 
    -- CP-element group 50:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	49 
    -- CP-element group 50: marked-predecessors 
    -- CP-element group 50: 	53 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	52 
    -- CP-element group 50:  members (3) 
      -- CP-element group 50: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_sample_start_
      -- CP-element group 50: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Sample/$entry
      -- CP-element group 50: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Sample/rr
      -- 
    rr_201_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_201_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(50), ack => RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_0); -- 
    distributor_tap_cp_element_group_50: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_50"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(49) & distributor_tap_CP_0_elements(53);
      gj_distributor_tap_cp_element_group_50 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(50), clk => clk, reset => reset); --
    end block;
    -- CP-element group 51:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	52 
    -- CP-element group 51: marked-predecessors 
    -- CP-element group 51: 	80 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	53 
    -- CP-element group 51:  members (3) 
      -- CP-element group 51: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_update_start_
      -- CP-element group 51: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Update/$entry
      -- CP-element group 51: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Update/cr
      -- 
    cr_206_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_206_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(51), ack => RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_1); -- 
    distributor_tap_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(52) & distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	50 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	51 
    -- CP-element group 52: marked-successors 
    -- CP-element group 52: 	47 
    -- CP-element group 52:  members (3) 
      -- CP-element group 52: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_sample_completed_
      -- CP-element group 52: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Sample/$exit
      -- CP-element group 52: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Sample/ra
      -- 
    ra_202_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 52_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_0, ack => distributor_tap_CP_0_elements(52)); -- 
    -- CP-element group 53:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	51 
    -- CP-element group 53: successors 
    -- CP-element group 53: 	79 
    -- CP-element group 53: marked-successors 
    -- CP-element group 53: 	50 
    -- CP-element group 53:  members (3) 
      -- CP-element group 53: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_update_completed_
      -- CP-element group 53: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Update/$exit
      -- CP-element group 53: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_Update/ca
      -- 
    ca_207_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 53_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_1, ack => distributor_tap_CP_0_elements(53)); -- 
    -- CP-element group 54:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: 	13 
    -- CP-element group 54: marked-predecessors 
    -- CP-element group 54: 	56 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	55 
    -- CP-element group 54:  members (3) 
      -- CP-element group 54: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_sample_start_
      -- CP-element group 54: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Sample/$entry
      -- CP-element group 54: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Sample/req
      -- 
    req_215_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_215_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(54), ack => WPIPE_ACB_DRAM_REQUEST_190_inst_req_0); -- 
    distributor_tap_cp_element_group_54: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_54"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(13) & distributor_tap_CP_0_elements(56);
      gj_distributor_tap_cp_element_group_54 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(54), clk => clk, reset => reset); --
    end block;
    -- CP-element group 55:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	54 
    -- CP-element group 55: successors 
    -- CP-element group 55: 	56 
    -- CP-element group 55: marked-successors 
    -- CP-element group 55: 	11 
    -- CP-element group 55:  members (6) 
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_sample_completed_
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_update_start_
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Sample/$exit
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Sample/ack
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Update/$entry
      -- CP-element group 55: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Update/req
      -- 
    ack_216_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 55_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_DRAM_REQUEST_190_inst_ack_0, ack => distributor_tap_CP_0_elements(55)); -- 
    req_220_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_220_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(55), ack => WPIPE_ACB_DRAM_REQUEST_190_inst_req_1); -- 
    -- CP-element group 56:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: 	55 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	83 
    -- CP-element group 56: marked-successors 
    -- CP-element group 56: 	54 
    -- CP-element group 56:  members (3) 
      -- CP-element group 56: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_update_completed_
      -- CP-element group 56: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Update/$exit
      -- CP-element group 56: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_DRAM_REQUEST_190_Update/ack
      -- 
    ack_221_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 56_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_DRAM_REQUEST_190_inst_ack_1, ack => distributor_tap_CP_0_elements(56)); -- 
    -- CP-element group 57:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: marked-predecessors 
    -- CP-element group 57: 	62 
    -- CP-element group 57: successors 
    -- CP-element group 57: 	59 
    -- CP-element group 57:  members (3) 
      -- CP-element group 57: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_update_start_
      -- CP-element group 57: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Update/$entry
      -- CP-element group 57: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Update/req
      -- 
    req_234_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_234_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(57), ack => W_to_dram_222_delayed_8_0_193_inst_req_1); -- 
    distributor_tap_cp_element_group_57: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_57"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(62);
      gj_distributor_tap_cp_element_group_57 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(57), clk => clk, reset => reset); --
    end block;
    -- CP-element group 58:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: 	13 
    -- CP-element group 58: successors 
    -- CP-element group 58: marked-successors 
    -- CP-element group 58: 	11 
    -- CP-element group 58:  members (3) 
      -- CP-element group 58: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_sample_completed_
      -- CP-element group 58: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Sample/$exit
      -- CP-element group 58: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Sample/ack
      -- 
    ack_230_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 58_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_dram_222_delayed_8_0_193_inst_ack_0, ack => distributor_tap_CP_0_elements(58)); -- 
    -- CP-element group 59:  transition  input  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	57 
    -- CP-element group 59: successors 
    -- CP-element group 59: 	60 
    -- CP-element group 59:  members (3) 
      -- CP-element group 59: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_update_completed_
      -- CP-element group 59: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Update/$exit
      -- CP-element group 59: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_195_Update/ack
      -- 
    ack_235_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 59_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_dram_222_delayed_8_0_193_inst_ack_1, ack => distributor_tap_CP_0_elements(59)); -- 
    -- CP-element group 60:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: 	59 
    -- CP-element group 60: marked-predecessors 
    -- CP-element group 60: 	63 
    -- CP-element group 60: successors 
    -- CP-element group 60: 	62 
    -- CP-element group 60:  members (3) 
      -- CP-element group 60: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_sample_start_
      -- CP-element group 60: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Sample/$entry
      -- CP-element group 60: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Sample/rr
      -- 
    rr_243_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_243_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(60), ack => RPIPE_ACB_DRAM_RESPONSE_198_inst_req_0); -- 
    distributor_tap_cp_element_group_60: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_60"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(59) & distributor_tap_CP_0_elements(63);
      gj_distributor_tap_cp_element_group_60 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(60), clk => clk, reset => reset); --
    end block;
    -- CP-element group 61:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: 	62 
    -- CP-element group 61: marked-predecessors 
    -- CP-element group 61: 	80 
    -- CP-element group 61: successors 
    -- CP-element group 61: 	63 
    -- CP-element group 61:  members (3) 
      -- CP-element group 61: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_update_start_
      -- CP-element group 61: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Update/$entry
      -- CP-element group 61: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Update/cr
      -- 
    cr_248_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_248_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(61), ack => RPIPE_ACB_DRAM_RESPONSE_198_inst_req_1); -- 
    distributor_tap_cp_element_group_61: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_61"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(62) & distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_61 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(61), clk => clk, reset => reset); --
    end block;
    -- CP-element group 62:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: 	60 
    -- CP-element group 62: successors 
    -- CP-element group 62: 	61 
    -- CP-element group 62: marked-successors 
    -- CP-element group 62: 	57 
    -- CP-element group 62:  members (3) 
      -- CP-element group 62: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_sample_completed_
      -- CP-element group 62: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Sample/$exit
      -- CP-element group 62: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Sample/ra
      -- 
    ra_244_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 62_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_0, ack => distributor_tap_CP_0_elements(62)); -- 
    -- CP-element group 63:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: 	61 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	79 
    -- CP-element group 63: marked-successors 
    -- CP-element group 63: 	60 
    -- CP-element group 63:  members (3) 
      -- CP-element group 63: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_update_completed_
      -- CP-element group 63: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Update/$exit
      -- CP-element group 63: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/RPIPE_ACB_DRAM_RESPONSE_198_Update/ca
      -- 
    ca_249_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 63_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_1, ack => distributor_tap_CP_0_elements(63)); -- 
    -- CP-element group 64:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: marked-predecessors 
    -- CP-element group 64: 	80 
    -- CP-element group 64: successors 
    -- CP-element group 64: 	66 
    -- CP-element group 64:  members (3) 
      -- CP-element group 64: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_update_start_
      -- CP-element group 64: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Update/$entry
      -- CP-element group 64: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Update/req
      -- 
    req_262_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_262_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(64), ack => W_to_eth_config_227_delayed_9_0_200_inst_req_1); -- 
    distributor_tap_cp_element_group_64: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_64"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_64 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(64), clk => clk, reset => reset); --
    end block;
    -- CP-element group 65:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	13 
    -- CP-element group 65: successors 
    -- CP-element group 65: marked-successors 
    -- CP-element group 65: 	11 
    -- CP-element group 65:  members (3) 
      -- CP-element group 65: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_sample_completed_
      -- CP-element group 65: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Sample/$exit
      -- CP-element group 65: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Sample/ack
      -- 
    ack_258_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 65_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_config_227_delayed_9_0_200_inst_ack_0, ack => distributor_tap_CP_0_elements(65)); -- 
    -- CP-element group 66:  transition  input  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: 	64 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	79 
    -- CP-element group 66:  members (3) 
      -- CP-element group 66: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_update_completed_
      -- CP-element group 66: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Update/$exit
      -- CP-element group 66: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_202_Update/ack
      -- 
    ack_263_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 66_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_config_227_delayed_9_0_200_inst_ack_1, ack => distributor_tap_CP_0_elements(66)); -- 
    -- CP-element group 67:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: marked-predecessors 
    -- CP-element group 67: 	80 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	69 
    -- CP-element group 67:  members (3) 
      -- CP-element group 67: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_update_start_
      -- CP-element group 67: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Update/$entry
      -- CP-element group 67: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Update/req
      -- 
    req_276_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_276_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(67), ack => W_to_eth_231_delayed_9_0_203_inst_req_1); -- 
    distributor_tap_cp_element_group_67: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_67"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_67 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(67), clk => clk, reset => reset); --
    end block;
    -- CP-element group 68:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	13 
    -- CP-element group 68: successors 
    -- CP-element group 68: marked-successors 
    -- CP-element group 68: 	11 
    -- CP-element group 68:  members (3) 
      -- CP-element group 68: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_sample_completed_
      -- CP-element group 68: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Sample/$exit
      -- CP-element group 68: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Sample/ack
      -- 
    ack_272_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_231_delayed_9_0_203_inst_ack_0, ack => distributor_tap_CP_0_elements(68)); -- 
    -- CP-element group 69:  transition  input  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	67 
    -- CP-element group 69: successors 
    -- CP-element group 69: 	79 
    -- CP-element group 69:  members (3) 
      -- CP-element group 69: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_update_completed_
      -- CP-element group 69: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Update/$exit
      -- CP-element group 69: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_205_Update/ack
      -- 
    ack_277_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 69_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_eth_231_delayed_9_0_203_inst_ack_1, ack => distributor_tap_CP_0_elements(69)); -- 
    -- CP-element group 70:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: marked-predecessors 
    -- CP-element group 70: 	80 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	72 
    -- CP-element group 70:  members (3) 
      -- CP-element group 70: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_update_start_
      -- CP-element group 70: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Update/$entry
      -- CP-element group 70: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Update/req
      -- 
    req_290_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_290_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(70), ack => W_to_pcie_config_236_delayed_9_0_206_inst_req_1); -- 
    distributor_tap_cp_element_group_70: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_70"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_70 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(70), clk => clk, reset => reset); --
    end block;
    -- CP-element group 71:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	13 
    -- CP-element group 71: successors 
    -- CP-element group 71: marked-successors 
    -- CP-element group 71: 	11 
    -- CP-element group 71:  members (3) 
      -- CP-element group 71: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_sample_completed_
      -- CP-element group 71: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Sample/$exit
      -- CP-element group 71: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Sample/ack
      -- 
    ack_286_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 71_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_config_236_delayed_9_0_206_inst_ack_0, ack => distributor_tap_CP_0_elements(71)); -- 
    -- CP-element group 72:  transition  input  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	70 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	79 
    -- CP-element group 72:  members (3) 
      -- CP-element group 72: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_update_completed_
      -- CP-element group 72: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Update/$exit
      -- CP-element group 72: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_208_Update/ack
      -- 
    ack_291_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 72_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_config_236_delayed_9_0_206_inst_ack_1, ack => distributor_tap_CP_0_elements(72)); -- 
    -- CP-element group 73:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: marked-predecessors 
    -- CP-element group 73: 	80 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (3) 
      -- CP-element group 73: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_update_start_
      -- CP-element group 73: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Update/$entry
      -- CP-element group 73: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Update/req
      -- 
    req_304_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_304_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(73), ack => W_to_pcie_241_delayed_9_0_209_inst_req_1); -- 
    distributor_tap_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	13 
    -- CP-element group 74: successors 
    -- CP-element group 74: marked-successors 
    -- CP-element group 74: 	11 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_sample_completed_
      -- CP-element group 74: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Sample/$exit
      -- CP-element group 74: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Sample/ack
      -- 
    ack_300_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 74_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_241_delayed_9_0_209_inst_ack_0, ack => distributor_tap_CP_0_elements(74)); -- 
    -- CP-element group 75:  transition  input  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	79 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_update_completed_
      -- CP-element group 75: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Update/$exit
      -- CP-element group 75: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_211_Update/ack
      -- 
    ack_305_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_pcie_241_delayed_9_0_209_inst_ack_1, ack => distributor_tap_CP_0_elements(75)); -- 
    -- CP-element group 76:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: marked-predecessors 
    -- CP-element group 76: 	80 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	78 
    -- CP-element group 76:  members (3) 
      -- CP-element group 76: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_update_start_
      -- CP-element group 76: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Update/$entry
      -- CP-element group 76: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Update/req
      -- 
    req_318_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_318_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(76), ack => W_to_dram_245_delayed_9_0_212_inst_req_1); -- 
    distributor_tap_cp_element_group_76: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_76"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= distributor_tap_CP_0_elements(80);
      gj_distributor_tap_cp_element_group_76 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(76), clk => clk, reset => reset); --
    end block;
    -- CP-element group 77:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	13 
    -- CP-element group 77: successors 
    -- CP-element group 77: marked-successors 
    -- CP-element group 77: 	11 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_sample_completed_
      -- CP-element group 77: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Sample/$exit
      -- CP-element group 77: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Sample/ack
      -- 
    ack_314_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 77_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_dram_245_delayed_9_0_212_inst_ack_0, ack => distributor_tap_CP_0_elements(77)); -- 
    -- CP-element group 78:  transition  input  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	76 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	79 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_update_completed_
      -- CP-element group 78: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Update/$exit
      -- CP-element group 78: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/assign_stmt_214_Update/ack
      -- 
    ack_319_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 78_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_to_dram_245_delayed_9_0_212_inst_ack_1, ack => distributor_tap_CP_0_elements(78)); -- 
    -- CP-element group 79:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	23 
    -- CP-element group 79: 	43 
    -- CP-element group 79: 	53 
    -- CP-element group 79: 	33 
    -- CP-element group 79: 	69 
    -- CP-element group 79: 	72 
    -- CP-element group 79: 	75 
    -- CP-element group 79: 	78 
    -- CP-element group 79: 	63 
    -- CP-element group 79: 	66 
    -- CP-element group 79: marked-predecessors 
    -- CP-element group 79: 	81 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	80 
    -- CP-element group 79:  members (3) 
      -- CP-element group 79: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_sample_start_
      -- CP-element group 79: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Sample/$entry
      -- CP-element group 79: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Sample/req
      -- 
    req_327_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_327_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(79), ack => WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_0); -- 
    distributor_tap_cp_element_group_79: block -- 
      constant place_capacities: IntegerArray(0 to 10) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1,7 => 1,8 => 1,9 => 1,10 => 1);
      constant place_markings: IntegerArray(0 to 10)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 1);
      constant place_delays: IntegerArray(0 to 10) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0,10 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_79"; 
      signal preds: BooleanArray(1 to 11); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(23) & distributor_tap_CP_0_elements(43) & distributor_tap_CP_0_elements(53) & distributor_tap_CP_0_elements(33) & distributor_tap_CP_0_elements(69) & distributor_tap_CP_0_elements(72) & distributor_tap_CP_0_elements(75) & distributor_tap_CP_0_elements(78) & distributor_tap_CP_0_elements(63) & distributor_tap_CP_0_elements(66) & distributor_tap_CP_0_elements(81);
      gj_distributor_tap_cp_element_group_79 : generic_join generic map(name => joinName, number_of_predecessors => 11, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(79), clk => clk, reset => reset); --
    end block;
    -- CP-element group 80:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	79 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	81 
    -- CP-element group 80: marked-successors 
    -- CP-element group 80: 	21 
    -- CP-element group 80: 	31 
    -- CP-element group 80: 	41 
    -- CP-element group 80: 	51 
    -- CP-element group 80: 	70 
    -- CP-element group 80: 	73 
    -- CP-element group 80: 	76 
    -- CP-element group 80: 	61 
    -- CP-element group 80: 	64 
    -- CP-element group 80: 	67 
    -- CP-element group 80:  members (6) 
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_sample_completed_
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_update_start_
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Sample/$exit
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Sample/ack
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Update/$entry
      -- CP-element group 80: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Update/req
      -- 
    ack_328_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_0, ack => distributor_tap_CP_0_elements(80)); -- 
    req_332_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_332_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(80), ack => WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_1); -- 
    -- CP-element group 81:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	80 
    -- CP-element group 81: successors 
    -- CP-element group 81: 	83 
    -- CP-element group 81: marked-successors 
    -- CP-element group 81: 	79 
    -- CP-element group 81:  members (3) 
      -- CP-element group 81: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_update_completed_
      -- CP-element group 81: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Update/$exit
      -- CP-element group 81: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_Update/ack
      -- 
    ack_333_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 81_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_1, ack => distributor_tap_CP_0_elements(81)); -- 
    -- CP-element group 82:  transition  output  delay-element  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	9 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	5 
    -- CP-element group 82:  members (2) 
      -- CP-element group 82: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/condition_evaluated
      -- CP-element group 82: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/loop_body_delay_to_condition_start
      -- 
    condition_evaluated_24_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_24_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => distributor_tap_CP_0_elements(82), ack => do_while_stmt_85_branch_req_0); -- 
    -- Element group distributor_tap_CP_0_elements(82) is a control-delay.
    cp_element_82_delay: control_delay_element  generic map(name => " 82_delay", delay_value => 1)  port map(req => distributor_tap_CP_0_elements(9), ack => distributor_tap_CP_0_elements(82), clk => clk, reset =>reset);
    -- CP-element group 83:  join  transition  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	16 
    -- CP-element group 83: 	36 
    -- CP-element group 83: 	26 
    -- CP-element group 83: 	81 
    -- CP-element group 83: 	46 
    -- CP-element group 83: 	56 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	6 
    -- CP-element group 83:  members (1) 
      -- CP-element group 83: 	 branch_block_stmt_84/do_while_stmt_85/do_while_stmt_85_loop_body/$exit
      -- 
    distributor_tap_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15,5 => 15);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0);
      constant joinName: string(1 to 35) := "distributor_tap_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= distributor_tap_CP_0_elements(16) & distributor_tap_CP_0_elements(36) & distributor_tap_CP_0_elements(26) & distributor_tap_CP_0_elements(81) & distributor_tap_CP_0_elements(46) & distributor_tap_CP_0_elements(56);
      gj_distributor_tap_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => distributor_tap_CP_0_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  transition  input  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	5 
    -- CP-element group 84: successors 
    -- CP-element group 84:  members (2) 
      -- CP-element group 84: 	 branch_block_stmt_84/do_while_stmt_85/loop_exit/$exit
      -- CP-element group 84: 	 branch_block_stmt_84/do_while_stmt_85/loop_exit/ack
      -- 
    ack_338_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 84_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_85_branch_ack_0, ack => distributor_tap_CP_0_elements(84)); -- 
    -- CP-element group 85:  transition  input  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	5 
    -- CP-element group 85: successors 
    -- CP-element group 85:  members (2) 
      -- CP-element group 85: 	 branch_block_stmt_84/do_while_stmt_85/loop_taken/$exit
      -- CP-element group 85: 	 branch_block_stmt_84/do_while_stmt_85/loop_taken/ack
      -- 
    ack_342_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 85_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_85_branch_ack_1, ack => distributor_tap_CP_0_elements(85)); -- 
    -- CP-element group 86:  transition  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	3 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	1 
    -- CP-element group 86:  members (1) 
      -- CP-element group 86: 	 branch_block_stmt_84/do_while_stmt_85/$exit
      -- 
    distributor_tap_CP_0_elements(86) <= distributor_tap_CP_0_elements(3);
    distributor_tap_do_while_stmt_85_terminator_343: loop_terminator -- 
      generic map (name => " distributor_tap_do_while_stmt_85_terminator_343", max_iterations_in_flight =>15) 
      port map(loop_body_exit => distributor_tap_CP_0_elements(6),loop_continue => distributor_tap_CP_0_elements(85),loop_terminate => distributor_tap_CP_0_elements(84),loop_back => distributor_tap_CP_0_elements(4),loop_exit => distributor_tap_CP_0_elements(3),clk => clk, reset => reset); -- 
    entry_tmerge_25_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= distributor_tap_CP_0_elements(7);
        preds(1)  <= distributor_tap_CP_0_elements(8);
        entry_tmerge_25 : transition_merge -- 
          generic map(name => " entry_tmerge_25")
          port map (preds => preds, symbol_out => distributor_tap_CP_0_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal AND_u1_u1_140_wire : std_logic_vector(0 downto 0);
    signal MUX_219_wire : std_logic_vector(64 downto 0);
    signal MUX_223_wire : std_logic_vector(64 downto 0);
    signal MUX_228_wire : std_logic_vector(64 downto 0);
    signal MUX_233_wire : std_logic_vector(64 downto 0);
    signal MUX_237_wire : std_logic_vector(64 downto 0);
    signal NOT_u1_u1_137_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_139_wire : std_logic_vector(0 downto 0);
    signal NOT_u1_u1_142_wire : std_logic_vector(0 downto 0);
    signal OR_u65_u65_224_wire : std_logic_vector(64 downto 0);
    signal OR_u65_u65_229_wire : std_logic_vector(64 downto 0);
    signal OR_u65_u65_238_wire : std_logic_vector(64 downto 0);
    signal RPIPE_ETH_CONFIG_ADDR_HIGH_99_wire : std_logic_vector(35 downto 0);
    signal RPIPE_ETH_CONFIG_ADDR_LOW_96_wire : std_logic_vector(35 downto 0);
    signal RPIPE_ETH_MEM_ADDR_HIGH_108_wire : std_logic_vector(35 downto 0);
    signal RPIPE_ETH_MEM_ADDR_LOW_105_wire : std_logic_vector(35 downto 0);
    signal RPIPE_PCIE_CONFIG_ADDR_HIGH_117_wire : std_logic_vector(35 downto 0);
    signal RPIPE_PCIE_CONFIG_ADDR_LOW_114_wire : std_logic_vector(35 downto 0);
    signal RPIPE_PCIE_MEM_ADDR_HIGH_126_wire : std_logic_vector(35 downto 0);
    signal RPIPE_PCIE_MEM_ADDR_LOW_123_wire : std_logic_vector(35 downto 0);
    signal UGE_u36_u1_106_wire : std_logic_vector(0 downto 0);
    signal UGE_u36_u1_115_wire : std_logic_vector(0 downto 0);
    signal UGE_u36_u1_124_wire : std_logic_vector(0 downto 0);
    signal UGE_u36_u1_97_wire : std_logic_vector(0 downto 0);
    signal ULE_u36_u1_100_wire : std_logic_vector(0 downto 0);
    signal ULE_u36_u1_109_wire : std_logic_vector(0 downto 0);
    signal ULE_u36_u1_118_wire : std_logic_vector(0 downto 0);
    signal ULE_u36_u1_127_wire : std_logic_vector(0 downto 0);
    signal a36_93 : std_logic_vector(35 downto 0);
    signal dram_resp_199 : std_logic_vector(64 downto 0);
    signal eth_config_resp_155 : std_logic_vector(64 downto 0);
    signal eth_resp_166 : std_logic_vector(64 downto 0);
    signal konst_218_wire_constant : std_logic_vector(64 downto 0);
    signal konst_222_wire_constant : std_logic_vector(64 downto 0);
    signal konst_227_wire_constant : std_logic_vector(64 downto 0);
    signal konst_232_wire_constant : std_logic_vector(64 downto 0);
    signal konst_236_wire_constant : std_logic_vector(64 downto 0);
    signal konst_245_wire_constant : std_logic_vector(0 downto 0);
    signal pcie_config_resp_177 : std_logic_vector(64 downto 0);
    signal pcie_resp_188 : std_logic_vector(64 downto 0);
    signal req_89 : std_logic_vector(109 downto 0);
    signal resp_240 : std_logic_vector(64 downto 0);
    signal to_config_134 : std_logic_vector(0 downto 0);
    signal to_dram_144 : std_logic_vector(0 downto 0);
    signal to_dram_222_delayed_8_0_195 : std_logic_vector(0 downto 0);
    signal to_dram_245_delayed_9_0_214 : std_logic_vector(0 downto 0);
    signal to_eth_111 : std_logic_vector(0 downto 0);
    signal to_eth_198_delayed_8_0_162 : std_logic_vector(0 downto 0);
    signal to_eth_231_delayed_9_0_205 : std_logic_vector(0 downto 0);
    signal to_eth_config_102 : std_logic_vector(0 downto 0);
    signal to_eth_config_190_delayed_8_0_151 : std_logic_vector(0 downto 0);
    signal to_eth_config_227_delayed_9_0_202 : std_logic_vector(0 downto 0);
    signal to_pcie_129 : std_logic_vector(0 downto 0);
    signal to_pcie_214_delayed_8_0_184 : std_logic_vector(0 downto 0);
    signal to_pcie_241_delayed_9_0_211 : std_logic_vector(0 downto 0);
    signal to_pcie_config_120 : std_logic_vector(0 downto 0);
    signal to_pcie_config_206_delayed_8_0_173 : std_logic_vector(0 downto 0);
    signal to_pcie_config_236_delayed_9_0_208 : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    konst_218_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000";
    konst_222_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000";
    konst_227_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000";
    konst_232_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000";
    konst_236_wire_constant <= "00000000000000000000000000000000000000000000000000000000000000000";
    konst_245_wire_constant <= "1";
    -- flow-through select operator MUX_219_inst
    MUX_219_wire <= eth_config_resp_155 when (to_eth_config_227_delayed_9_0_202(0) /=  '0') else konst_218_wire_constant;
    -- flow-through select operator MUX_223_inst
    MUX_223_wire <= eth_resp_166 when (to_eth_231_delayed_9_0_205(0) /=  '0') else konst_222_wire_constant;
    -- flow-through select operator MUX_228_inst
    MUX_228_wire <= pcie_config_resp_177 when (to_pcie_config_236_delayed_9_0_208(0) /=  '0') else konst_227_wire_constant;
    -- flow-through select operator MUX_233_inst
    MUX_233_wire <= pcie_resp_188 when (to_pcie_241_delayed_9_0_211(0) /=  '0') else konst_232_wire_constant;
    -- flow-through select operator MUX_237_inst
    MUX_237_wire <= dram_resp_199 when (to_dram_245_delayed_9_0_214(0) /=  '0') else konst_236_wire_constant;
    -- flow-through slice operator slice_92_inst
    a36_93 <= req_89(99 downto 64);
    W_to_dram_222_delayed_8_0_193_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_dram_222_delayed_8_0_193_inst_req_0;
      W_to_dram_222_delayed_8_0_193_inst_ack_0<= wack(0);
      rreq(0) <= W_to_dram_222_delayed_8_0_193_inst_req_1;
      W_to_dram_222_delayed_8_0_193_inst_ack_1<= rack(0);
      W_to_dram_222_delayed_8_0_193_inst : InterlockBuffer generic map ( -- 
        name => "W_to_dram_222_delayed_8_0_193_inst",
        buffer_size => 8,
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
        write_data => to_dram_144,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_dram_222_delayed_8_0_195,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_dram_245_delayed_9_0_212_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_dram_245_delayed_9_0_212_inst_req_0;
      W_to_dram_245_delayed_9_0_212_inst_ack_0<= wack(0);
      rreq(0) <= W_to_dram_245_delayed_9_0_212_inst_req_1;
      W_to_dram_245_delayed_9_0_212_inst_ack_1<= rack(0);
      W_to_dram_245_delayed_9_0_212_inst : InterlockBuffer generic map ( -- 
        name => "W_to_dram_245_delayed_9_0_212_inst",
        buffer_size => 9,
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
        write_data => to_dram_144,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_dram_245_delayed_9_0_214,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_eth_198_delayed_8_0_160_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_eth_198_delayed_8_0_160_inst_req_0;
      W_to_eth_198_delayed_8_0_160_inst_ack_0<= wack(0);
      rreq(0) <= W_to_eth_198_delayed_8_0_160_inst_req_1;
      W_to_eth_198_delayed_8_0_160_inst_ack_1<= rack(0);
      W_to_eth_198_delayed_8_0_160_inst : InterlockBuffer generic map ( -- 
        name => "W_to_eth_198_delayed_8_0_160_inst",
        buffer_size => 8,
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
        write_data => to_eth_111,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_eth_198_delayed_8_0_162,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_eth_231_delayed_9_0_203_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_eth_231_delayed_9_0_203_inst_req_0;
      W_to_eth_231_delayed_9_0_203_inst_ack_0<= wack(0);
      rreq(0) <= W_to_eth_231_delayed_9_0_203_inst_req_1;
      W_to_eth_231_delayed_9_0_203_inst_ack_1<= rack(0);
      W_to_eth_231_delayed_9_0_203_inst : InterlockBuffer generic map ( -- 
        name => "W_to_eth_231_delayed_9_0_203_inst",
        buffer_size => 9,
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
        write_data => to_eth_111,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_eth_231_delayed_9_0_205,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_eth_config_190_delayed_8_0_149_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_eth_config_190_delayed_8_0_149_inst_req_0;
      W_to_eth_config_190_delayed_8_0_149_inst_ack_0<= wack(0);
      rreq(0) <= W_to_eth_config_190_delayed_8_0_149_inst_req_1;
      W_to_eth_config_190_delayed_8_0_149_inst_ack_1<= rack(0);
      W_to_eth_config_190_delayed_8_0_149_inst : InterlockBuffer generic map ( -- 
        name => "W_to_eth_config_190_delayed_8_0_149_inst",
        buffer_size => 8,
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
        write_data => to_eth_config_102,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_eth_config_190_delayed_8_0_151,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_eth_config_227_delayed_9_0_200_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_eth_config_227_delayed_9_0_200_inst_req_0;
      W_to_eth_config_227_delayed_9_0_200_inst_ack_0<= wack(0);
      rreq(0) <= W_to_eth_config_227_delayed_9_0_200_inst_req_1;
      W_to_eth_config_227_delayed_9_0_200_inst_ack_1<= rack(0);
      W_to_eth_config_227_delayed_9_0_200_inst : InterlockBuffer generic map ( -- 
        name => "W_to_eth_config_227_delayed_9_0_200_inst",
        buffer_size => 9,
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
        write_data => to_eth_config_102,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_eth_config_227_delayed_9_0_202,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_pcie_214_delayed_8_0_182_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_pcie_214_delayed_8_0_182_inst_req_0;
      W_to_pcie_214_delayed_8_0_182_inst_ack_0<= wack(0);
      rreq(0) <= W_to_pcie_214_delayed_8_0_182_inst_req_1;
      W_to_pcie_214_delayed_8_0_182_inst_ack_1<= rack(0);
      W_to_pcie_214_delayed_8_0_182_inst : InterlockBuffer generic map ( -- 
        name => "W_to_pcie_214_delayed_8_0_182_inst",
        buffer_size => 8,
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
        write_data => to_pcie_129,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_pcie_214_delayed_8_0_184,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_pcie_241_delayed_9_0_209_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_pcie_241_delayed_9_0_209_inst_req_0;
      W_to_pcie_241_delayed_9_0_209_inst_ack_0<= wack(0);
      rreq(0) <= W_to_pcie_241_delayed_9_0_209_inst_req_1;
      W_to_pcie_241_delayed_9_0_209_inst_ack_1<= rack(0);
      W_to_pcie_241_delayed_9_0_209_inst : InterlockBuffer generic map ( -- 
        name => "W_to_pcie_241_delayed_9_0_209_inst",
        buffer_size => 9,
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
        write_data => to_pcie_129,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_pcie_241_delayed_9_0_211,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_pcie_config_206_delayed_8_0_171_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_pcie_config_206_delayed_8_0_171_inst_req_0;
      W_to_pcie_config_206_delayed_8_0_171_inst_ack_0<= wack(0);
      rreq(0) <= W_to_pcie_config_206_delayed_8_0_171_inst_req_1;
      W_to_pcie_config_206_delayed_8_0_171_inst_ack_1<= rack(0);
      W_to_pcie_config_206_delayed_8_0_171_inst : InterlockBuffer generic map ( -- 
        name => "W_to_pcie_config_206_delayed_8_0_171_inst",
        buffer_size => 8,
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
        write_data => to_pcie_config_120,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_pcie_config_206_delayed_8_0_173,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_to_pcie_config_236_delayed_9_0_206_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_to_pcie_config_236_delayed_9_0_206_inst_req_0;
      W_to_pcie_config_236_delayed_9_0_206_inst_ack_0<= wack(0);
      rreq(0) <= W_to_pcie_config_236_delayed_9_0_206_inst_req_1;
      W_to_pcie_config_236_delayed_9_0_206_inst_ack_1<= rack(0);
      W_to_pcie_config_236_delayed_9_0_206_inst : InterlockBuffer generic map ( -- 
        name => "W_to_pcie_config_236_delayed_9_0_206_inst",
        buffer_size => 9,
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
        write_data => to_pcie_config_120,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => to_pcie_config_236_delayed_9_0_208,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    do_while_stmt_85_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= konst_245_wire_constant;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_85_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_85_branch_req_0,
          ack0 => do_while_stmt_85_branch_ack_0,
          ack1 => do_while_stmt_85_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- flow through binary operator AND_u1_u1_101_inst
    to_eth_config_102 <= (UGE_u36_u1_97_wire and ULE_u36_u1_100_wire);
    -- flow through binary operator AND_u1_u1_110_inst
    to_eth_111 <= (UGE_u36_u1_106_wire and ULE_u36_u1_109_wire);
    -- flow through binary operator AND_u1_u1_119_inst
    to_pcie_config_120 <= (UGE_u36_u1_115_wire and ULE_u36_u1_118_wire);
    -- flow through binary operator AND_u1_u1_128_inst
    to_pcie_129 <= (UGE_u36_u1_124_wire and ULE_u36_u1_127_wire);
    -- flow through binary operator AND_u1_u1_140_inst
    AND_u1_u1_140_wire <= (NOT_u1_u1_137_wire and NOT_u1_u1_139_wire);
    -- flow through binary operator AND_u1_u1_143_inst
    to_dram_144 <= (AND_u1_u1_140_wire and NOT_u1_u1_142_wire);
    -- unary operator NOT_u1_u1_137_inst
    process(to_eth_111) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", to_eth_111, tmp_var);
      NOT_u1_u1_137_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_139_inst
    process(to_pcie_129) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", to_pcie_129, tmp_var);
      NOT_u1_u1_139_wire <= tmp_var; -- 
    end process;
    -- unary operator NOT_u1_u1_142_inst
    process(to_config_134) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      SingleInputOperation("ApIntNot", to_config_134, tmp_var);
      NOT_u1_u1_142_wire <= tmp_var; -- 
    end process;
    -- flow through binary operator OR_u1_u1_133_inst
    to_config_134 <= (to_eth_config_102 or to_pcie_config_120);
    -- flow through binary operator OR_u65_u65_224_inst
    OR_u65_u65_224_wire <= (MUX_219_wire or MUX_223_wire);
    -- flow through binary operator OR_u65_u65_229_inst
    OR_u65_u65_229_wire <= (OR_u65_u65_224_wire or MUX_228_wire);
    -- flow through binary operator OR_u65_u65_238_inst
    OR_u65_u65_238_wire <= (MUX_233_wire or MUX_237_wire);
    -- flow through binary operator OR_u65_u65_239_inst
    resp_240 <= (OR_u65_u65_229_wire or OR_u65_u65_238_wire);
    -- flow through binary operator UGE_u36_u1_106_inst
    process(a36_93, RPIPE_ETH_MEM_ADDR_LOW_105_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(a36_93, RPIPE_ETH_MEM_ADDR_LOW_105_wire, tmp_var);
      UGE_u36_u1_106_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u36_u1_115_inst
    process(a36_93, RPIPE_PCIE_CONFIG_ADDR_LOW_114_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(a36_93, RPIPE_PCIE_CONFIG_ADDR_LOW_114_wire, tmp_var);
      UGE_u36_u1_115_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u36_u1_124_inst
    process(a36_93, RPIPE_PCIE_MEM_ADDR_LOW_123_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(a36_93, RPIPE_PCIE_MEM_ADDR_LOW_123_wire, tmp_var);
      UGE_u36_u1_124_wire <= tmp_var; --
    end process;
    -- flow through binary operator UGE_u36_u1_97_inst
    process(a36_93, RPIPE_ETH_CONFIG_ADDR_LOW_96_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUge_proc(a36_93, RPIPE_ETH_CONFIG_ADDR_LOW_96_wire, tmp_var);
      UGE_u36_u1_97_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u36_u1_100_inst
    process(a36_93, RPIPE_ETH_CONFIG_ADDR_HIGH_99_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(a36_93, RPIPE_ETH_CONFIG_ADDR_HIGH_99_wire, tmp_var);
      ULE_u36_u1_100_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u36_u1_109_inst
    process(a36_93, RPIPE_ETH_MEM_ADDR_HIGH_108_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(a36_93, RPIPE_ETH_MEM_ADDR_HIGH_108_wire, tmp_var);
      ULE_u36_u1_109_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u36_u1_118_inst
    process(a36_93, RPIPE_PCIE_CONFIG_ADDR_HIGH_117_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(a36_93, RPIPE_PCIE_CONFIG_ADDR_HIGH_117_wire, tmp_var);
      ULE_u36_u1_118_wire <= tmp_var; --
    end process;
    -- flow through binary operator ULE_u36_u1_127_inst
    process(a36_93, RPIPE_PCIE_MEM_ADDR_HIGH_126_wire) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUle_proc(a36_93, RPIPE_PCIE_MEM_ADDR_HIGH_126_wire, tmp_var);
      ULE_u36_u1_127_wire <= tmp_var; --
    end process;
    -- shared inport operator group (0) : RPIPE_ACB_DRAM_RESPONSE_198_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_DRAM_RESPONSE_198_inst_req_0;
      RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_DRAM_RESPONSE_198_inst_req_1;
      RPIPE_ACB_DRAM_RESPONSE_198_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_dram_222_delayed_8_0_195(0);
      dram_resp_199 <= data_out(64 downto 0);
      ACB_DRAM_RESPONSE_read_0_gI: SplitGuardInterface generic map(name => "ACB_DRAM_RESPONSE_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_DRAM_RESPONSE_read_0: InputPortRevised -- 
        generic map ( name => "ACB_DRAM_RESPONSE_read_0", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_DRAM_RESPONSE_pipe_read_req(0),
          oack => ACB_DRAM_RESPONSE_pipe_read_ack(0),
          odata => ACB_DRAM_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared inport operator group (1) : RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst 
    InportGroup_1: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_0;
      RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_req_1;
      RPIPE_ACB_ETH_CONFIG_RESPONSE_154_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_eth_config_190_delayed_8_0_151(0);
      eth_config_resp_155 <= data_out(64 downto 0);
      ACB_ETH_CONFIG_RESPONSE_read_1_gI: SplitGuardInterface generic map(name => "ACB_ETH_CONFIG_RESPONSE_read_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_ETH_CONFIG_RESPONSE_read_1: InputPortRevised -- 
        generic map ( name => "ACB_ETH_CONFIG_RESPONSE_read_1", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_ETH_CONFIG_RESPONSE_pipe_read_req(0),
          oack => ACB_ETH_CONFIG_RESPONSE_pipe_read_ack(0),
          odata => ACB_ETH_CONFIG_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 1
    -- shared inport operator group (2) : RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst 
    InportGroup_2: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_0;
      RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_req_1;
      RPIPE_ACB_ETH_SLAVE_RESPONSE_165_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_eth_198_delayed_8_0_162(0);
      eth_resp_166 <= data_out(64 downto 0);
      ACB_ETH_SLAVE_RESPONSE_read_2_gI: SplitGuardInterface generic map(name => "ACB_ETH_SLAVE_RESPONSE_read_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_ETH_SLAVE_RESPONSE_read_2: InputPortRevised -- 
        generic map ( name => "ACB_ETH_SLAVE_RESPONSE_read_2", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_ETH_SLAVE_RESPONSE_pipe_read_req(0),
          oack => ACB_ETH_SLAVE_RESPONSE_pipe_read_ack(0),
          odata => ACB_ETH_SLAVE_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 2
    -- shared inport operator group (3) : RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst 
    InportGroup_3: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_0;
      RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_req_1;
      RPIPE_ACB_PCIE_CONFIG_RESPONSE_176_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_pcie_config_206_delayed_8_0_173(0);
      pcie_config_resp_177 <= data_out(64 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_read_3_gI: SplitGuardInterface generic map(name => "ACB_PCIE_CONFIG_RESPONSE_read_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_PCIE_CONFIG_RESPONSE_read_3: InputPortRevised -- 
        generic map ( name => "ACB_PCIE_CONFIG_RESPONSE_read_3", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_PCIE_CONFIG_RESPONSE_pipe_read_req(0),
          oack => ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack(0),
          odata => ACB_PCIE_CONFIG_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 3
    -- shared inport operator group (4) : RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst 
    InportGroup_4: Block -- 
      signal data_out: std_logic_vector(64 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_0;
      RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_req_1;
      RPIPE_ACB_PCIE_SLAVE_RESPONSE_187_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= to_pcie_214_delayed_8_0_184(0);
      pcie_resp_188 <= data_out(64 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_read_4_gI: SplitGuardInterface generic map(name => "ACB_PCIE_SLAVE_RESPONSE_read_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_PCIE_SLAVE_RESPONSE_read_4: InputPortRevised -- 
        generic map ( name => "ACB_PCIE_SLAVE_RESPONSE_read_4", data_width => 65,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_PCIE_SLAVE_RESPONSE_pipe_read_req(0),
          oack => ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack(0),
          odata => ACB_PCIE_SLAVE_RESPONSE_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 4
    -- shared inport operator group (5) : RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst 
    InportGroup_5: Block -- 
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
      reqL_unguarded(0) <= RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_0;
      RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_req_1;
      RPIPE_ACB_REQUEST_TO_DOWNSTREAM_88_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      req_89 <= data_out(109 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_read_5_gI: SplitGuardInterface generic map(name => "ACB_REQUEST_TO_DOWNSTREAM_read_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_REQUEST_TO_DOWNSTREAM_read_5: InputPortRevised -- 
        generic map ( name => "ACB_REQUEST_TO_DOWNSTREAM_read_5", data_width => 110,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req(0),
          oack => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack(0),
          odata => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data(109 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 5
    -- read from input-signal ETH_CONFIG_ADDR_HIGH
    RPIPE_ETH_CONFIG_ADDR_HIGH_99_wire <= ETH_CONFIG_ADDR_HIGH;
    -- read from input-signal ETH_CONFIG_ADDR_LOW
    RPIPE_ETH_CONFIG_ADDR_LOW_96_wire <= ETH_CONFIG_ADDR_LOW;
    -- read from input-signal ETH_MEM_ADDR_HIGH
    RPIPE_ETH_MEM_ADDR_HIGH_108_wire <= ETH_MEM_ADDR_HIGH;
    -- read from input-signal ETH_MEM_ADDR_LOW
    RPIPE_ETH_MEM_ADDR_LOW_105_wire <= ETH_MEM_ADDR_LOW;
    -- read from input-signal PCIE_CONFIG_ADDR_HIGH
    RPIPE_PCIE_CONFIG_ADDR_HIGH_117_wire <= PCIE_CONFIG_ADDR_HIGH;
    -- read from input-signal PCIE_CONFIG_ADDR_LOW
    RPIPE_PCIE_CONFIG_ADDR_LOW_114_wire <= PCIE_CONFIG_ADDR_LOW;
    -- read from input-signal PCIE_MEM_ADDR_HIGH
    RPIPE_PCIE_MEM_ADDR_HIGH_126_wire <= PCIE_MEM_ADDR_HIGH;
    -- read from input-signal PCIE_MEM_ADDR_LOW
    RPIPE_PCIE_MEM_ADDR_LOW_123_wire <= PCIE_MEM_ADDR_LOW;
    -- shared outport operator group (0) : WPIPE_ACB_DRAM_REQUEST_190_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_DRAM_REQUEST_190_inst_req_0;
      WPIPE_ACB_DRAM_REQUEST_190_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_DRAM_REQUEST_190_inst_req_1;
      WPIPE_ACB_DRAM_REQUEST_190_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= to_dram_144(0);
      data_in <= req_89;
      ACB_DRAM_REQUEST_write_0_gI: SplitGuardInterface generic map(name => "ACB_DRAM_REQUEST_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_DRAM_REQUEST_write_0: OutputPortRevised -- 
        generic map ( name => "ACB_DRAM_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_DRAM_REQUEST_pipe_write_req(0),
          oack => ACB_DRAM_REQUEST_pipe_write_ack(0),
          odata => ACB_DRAM_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- shared outport operator group (1) : WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst 
    OutportGroup_1: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_0;
      WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_req_1;
      WPIPE_ACB_ETH_CONFIG_REQUEST_146_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= to_eth_config_102(0);
      data_in <= req_89;
      ACB_ETH_CONFIG_REQUEST_write_1_gI: SplitGuardInterface generic map(name => "ACB_ETH_CONFIG_REQUEST_write_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_ETH_CONFIG_REQUEST_write_1: OutputPortRevised -- 
        generic map ( name => "ACB_ETH_CONFIG_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_ETH_CONFIG_REQUEST_pipe_write_req(0),
          oack => ACB_ETH_CONFIG_REQUEST_pipe_write_ack(0),
          odata => ACB_ETH_CONFIG_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 1
    -- shared outport operator group (2) : WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst 
    OutportGroup_2: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_0;
      WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_req_1;
      WPIPE_ACB_ETH_SLAVE_REQUEST_157_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= to_eth_111(0);
      data_in <= req_89;
      ACB_ETH_SLAVE_REQUEST_write_2_gI: SplitGuardInterface generic map(name => "ACB_ETH_SLAVE_REQUEST_write_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_ETH_SLAVE_REQUEST_write_2: OutputPortRevised -- 
        generic map ( name => "ACB_ETH_SLAVE_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_ETH_SLAVE_REQUEST_pipe_write_req(0),
          oack => ACB_ETH_SLAVE_REQUEST_pipe_write_ack(0),
          odata => ACB_ETH_SLAVE_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 2
    -- shared outport operator group (3) : WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst 
    OutportGroup_3: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_0;
      WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_req_1;
      WPIPE_ACB_PCIE_CONFIG_REQUEST_168_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= to_pcie_config_120(0);
      data_in <= req_89;
      ACB_PCIE_CONFIG_REQUEST_write_3_gI: SplitGuardInterface generic map(name => "ACB_PCIE_CONFIG_REQUEST_write_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_PCIE_CONFIG_REQUEST_write_3: OutputPortRevised -- 
        generic map ( name => "ACB_PCIE_CONFIG_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_PCIE_CONFIG_REQUEST_pipe_write_req(0),
          oack => ACB_PCIE_CONFIG_REQUEST_pipe_write_ack(0),
          odata => ACB_PCIE_CONFIG_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 3
    -- shared outport operator group (4) : WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst 
    OutportGroup_4: Block -- 
      signal data_in: std_logic_vector(109 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_0;
      WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_req_1;
      WPIPE_ACB_PCIE_SLAVE_REQUEST_179_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <= to_pcie_129(0);
      data_in <= req_89;
      ACB_PCIE_SLAVE_REQUEST_write_4_gI: SplitGuardInterface generic map(name => "ACB_PCIE_SLAVE_REQUEST_write_4_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_PCIE_SLAVE_REQUEST_write_4: OutputPortRevised -- 
        generic map ( name => "ACB_PCIE_SLAVE_REQUEST", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_PCIE_SLAVE_REQUEST_pipe_write_req(0),
          oack => ACB_PCIE_SLAVE_REQUEST_pipe_write_ack(0),
          odata => ACB_PCIE_SLAVE_REQUEST_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 4
    -- shared outport operator group (5) : WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst 
    OutportGroup_5: Block -- 
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
      sample_req_unguarded(0) <= WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_0;
      WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_req_1;
      WPIPE_ACB_RESPONSE_FROM_DOWNSTREAM_241_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= resp_240;
      ACB_RESPONSE_FROM_DOWNSTREAM_write_5_gI: SplitGuardInterface generic map(name => "ACB_RESPONSE_FROM_DOWNSTREAM_write_5_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_RESPONSE_FROM_DOWNSTREAM_write_5: OutputPortRevised -- 
        generic map ( name => "ACB_RESPONSE_FROM_DOWNSTREAM", data_width => 65, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req(0),
          oack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack(0),
          odata => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data(64 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 5
    -- 
  end Block; -- data_path
  -- 
end distributor_tap_arch;
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
use switches_lib.distributor_1p1e_red_global_package.all;
entity do_upstream_access is -- 
  generic (tag_length : integer); 
  port ( -- 
    req : in  std_logic_vector(109 downto 0);
    resp : out  std_logic_vector(64 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(64 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(109 downto 0);
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
end entity do_upstream_access;
architecture do_upstream_access_arch of do_upstream_access is -- 
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
  signal req_buffer :  std_logic_vector(109 downto 0);
  signal req_update_enable: Boolean;
  -- output port buffer signals
  signal resp_buffer :  std_logic_vector(64 downto 0);
  signal resp_update_enable: Boolean;
  signal do_upstream_access_CP_344_start: Boolean;
  signal do_upstream_access_CP_344_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_0 : boolean;
  signal WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_0 : boolean;
  signal WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_1 : boolean;
  signal WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_1 : boolean;
  signal RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_0 : boolean;
  signal RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_0 : boolean;
  signal RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_1 : boolean;
  signal RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "do_upstream_access_input_buffer", -- 
      buffer_size => 2,
      bypass_flag => false,
      data_width => tag_length + 110) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(109 downto 0) <= req;
  req_buffer <= in_buffer_data_out(109 downto 0);
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
    preds <= req_update_enable & in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  do_upstream_access_CP_344_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "do_upstream_access_out_buffer", -- 
      buffer_size => 2,
      full_rate => false,
      data_width => tag_length + 65) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(64 downto 0) <= resp_buffer;
  resp <= out_buffer_data_out(64 downto 0);
  out_buffer_data_in(tag_length + 64 downto 65) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 64 downto 65);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 15);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= do_upstream_access_CP_344_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  resp_update_enable_join: block -- 
    constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
    constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
    constant place_delays: IntegerArray(0 to 0) := (0 => 0);
    constant joinName: string(1 to 23) := "resp_update_enable_join"; 
    signal preds: BooleanArray(1 to 1); -- 
  begin -- 
    preds(1) <= out_buffer_write_ack_symbol;
    gj_resp_update_enable_join : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => resp_update_enable, clk => clk, reset => reset); --
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
    preds <= do_upstream_access_CP_344_start & tag_ilock_write_ack_symbol;
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
    preds <= do_upstream_access_CP_344_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  do_upstream_access_CP_344: Block -- control-path 
    signal do_upstream_access_CP_344_elements: BooleanArray(14 downto 0);
    -- 
  begin -- 
    do_upstream_access_CP_344_elements(0) <= do_upstream_access_CP_344_start;
    do_upstream_access_CP_344_symbol <= do_upstream_access_CP_344_elements(14);
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
    -- CP-element group 1: 	7 
    -- CP-element group 1: 	4 
    -- CP-element group 1:  members (1) 
      -- CP-element group 1: 	 assign_stmt_253_to_assign_stmt_256/$entry
      -- 
    do_upstream_access_CP_344_elements(1) <= do_upstream_access_CP_344_elements(0);
    -- CP-element group 2:  join  transition  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: marked-predecessors 
    -- CP-element group 2: 	5 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	12 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 assign_stmt_253_to_assign_stmt_256/req_update_enable
      -- CP-element group 2: 	 assign_stmt_253_to_assign_stmt_256/req_update_enable_out
      -- 
    do_upstream_access_cp_element_group_2: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 37) := "do_upstream_access_cp_element_group_2"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= do_upstream_access_CP_344_elements(5);
      gj_do_upstream_access_cp_element_group_2 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => do_upstream_access_CP_344_elements(2), clk => clk, reset => reset); --
    end block;
    -- CP-element group 3:  transition  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	13 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	8 
    -- CP-element group 3:  members (2) 
      -- CP-element group 3: 	 assign_stmt_253_to_assign_stmt_256/resp_update_enable
      -- CP-element group 3: 	 assign_stmt_253_to_assign_stmt_256/resp_update_enable_in
      -- 
    do_upstream_access_CP_344_elements(3) <= do_upstream_access_CP_344_elements(13);
    -- CP-element group 4:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	1 
    -- CP-element group 4: marked-predecessors 
    -- CP-element group 4: 	6 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	5 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_sample_start_
      -- CP-element group 4: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Sample/$entry
      -- CP-element group 4: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Sample/req
      -- 
    req_361_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_361_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_upstream_access_CP_344_elements(4), ack => WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_0); -- 
    do_upstream_access_cp_element_group_4: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "do_upstream_access_cp_element_group_4"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= do_upstream_access_CP_344_elements(1) & do_upstream_access_CP_344_elements(6);
      gj_do_upstream_access_cp_element_group_4 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => do_upstream_access_CP_344_elements(4), clk => clk, reset => reset); --
    end block;
    -- CP-element group 5:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	4 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	6 
    -- CP-element group 5: marked-successors 
    -- CP-element group 5: 	2 
    -- CP-element group 5:  members (6) 
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_sample_completed_
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_update_start_
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Sample/$exit
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Sample/ack
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Update/$entry
      -- CP-element group 5: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Update/req
      -- 
    ack_362_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_0, ack => do_upstream_access_CP_344_elements(5)); -- 
    req_366_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_366_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_upstream_access_CP_344_elements(5), ack => WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_1); -- 
    -- CP-element group 6:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	5 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	11 
    -- CP-element group 6: marked-successors 
    -- CP-element group 6: 	4 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_update_completed_
      -- CP-element group 6: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Update/$exit
      -- CP-element group 6: 	 assign_stmt_253_to_assign_stmt_256/WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_Update/ack
      -- 
    ack_367_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_1, ack => do_upstream_access_CP_344_elements(6)); -- 
    -- CP-element group 7:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	1 
    -- CP-element group 7: marked-predecessors 
    -- CP-element group 7: 	10 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	9 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_sample_start_
      -- CP-element group 7: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Sample/$entry
      -- CP-element group 7: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Sample/rr
      -- 
    rr_375_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_375_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_upstream_access_CP_344_elements(7), ack => RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_0); -- 
    do_upstream_access_cp_element_group_7: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "do_upstream_access_cp_element_group_7"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= do_upstream_access_CP_344_elements(1) & do_upstream_access_CP_344_elements(10);
      gj_do_upstream_access_cp_element_group_7 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => do_upstream_access_CP_344_elements(7), clk => clk, reset => reset); --
    end block;
    -- CP-element group 8:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	9 
    -- CP-element group 8: 	3 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	10 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_update_start_
      -- CP-element group 8: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Update/$entry
      -- CP-element group 8: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Update/cr
      -- 
    cr_380_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_380_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_upstream_access_CP_344_elements(8), ack => RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_1); -- 
    do_upstream_access_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 37) := "do_upstream_access_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= do_upstream_access_CP_344_elements(9) & do_upstream_access_CP_344_elements(3);
      gj_do_upstream_access_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => do_upstream_access_CP_344_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  transition  input  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	7 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	8 
    -- CP-element group 9:  members (3) 
      -- CP-element group 9: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_sample_completed_
      -- CP-element group 9: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Sample/$exit
      -- CP-element group 9: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Sample/ra
      -- 
    ra_376_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_0, ack => do_upstream_access_CP_344_elements(9)); -- 
    -- CP-element group 10:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	8 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	11 
    -- CP-element group 10: marked-successors 
    -- CP-element group 10: 	7 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_update_completed_
      -- CP-element group 10: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Update/$exit
      -- CP-element group 10: 	 assign_stmt_253_to_assign_stmt_256/RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_Update/ca
      -- 
    ca_381_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_1, ack => do_upstream_access_CP_344_elements(10)); -- 
    -- CP-element group 11:  join  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	6 
    -- CP-element group 11: 	10 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	14 
    -- CP-element group 11:  members (1) 
      -- CP-element group 11: 	 assign_stmt_253_to_assign_stmt_256/$exit
      -- 
    do_upstream_access_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 38) := "do_upstream_access_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= do_upstream_access_CP_344_elements(6) & do_upstream_access_CP_344_elements(10);
      gj_do_upstream_access_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => do_upstream_access_CP_344_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  place  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	2 
    -- CP-element group 12: successors 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 req_update_enable
      -- 
    do_upstream_access_CP_344_elements(12) <= do_upstream_access_CP_344_elements(2);
    -- CP-element group 13:  place  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	3 
    -- CP-element group 13:  members (1) 
      -- CP-element group 13: 	 resp_update_enable
      -- 
    -- CP-element group 14:  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	11 
    -- CP-element group 14: successors 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 $exit
      -- 
    do_upstream_access_CP_344_elements(14) <= do_upstream_access_CP_344_elements(11);
    --  hookup: inputs to control-path 
    do_upstream_access_CP_344_elements(13) <= resp_update_enable;
    -- hookup: output from control-path 
    req_update_enable <= do_upstream_access_CP_344_elements(12);
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared inport operator group (0) : RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst 
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
      reqL_unguarded(0) <= RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_0;
      RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_req_1;
      RPIPE_ACB_MASTER_RESPONSE_TO_DOWNSTREAM_255_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      resp_buffer <= data_out(64 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_read_0_gI: SplitGuardInterface generic map(name => "ACB_MASTER_RESPONSE_TO_DOWNSTREAM_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
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
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_read_0: InputPort_P2P -- 
        generic map ( name => "ACB_MASTER_RESPONSE_TO_DOWNSTREAM_read_0", data_width => 65,    bypass_flag => false,   	nonblocking_read_flag => false,  barrier_flag => false,   queue_depth =>  2)
        port map (-- 
          sample_req => reqL(0) , 
          sample_ack => ackL(0), 
          update_req => reqR(0), 
          update_ack => ackR(0), 
          data => data_out, 
          oreq => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req(0),
          oack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack(0),
          odata => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data(64 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst 
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
      sample_req_unguarded(0) <= WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_0;
      WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_req_1;
      WPIPE_ACB_MASTER_REQUEST_FROM_DOWNSTREAM_251_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= req_buffer;
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_write_0_gI: SplitGuardInterface generic map(name => "ACB_MASTER_REQUEST_FROM_DOWNSTREAM_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
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
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_write_0: OutputPortRevised -- 
        generic map ( name => "ACB_MASTER_REQUEST_FROM_DOWNSTREAM", data_width => 110, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req(0),
          oack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack(0),
          odata => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data(109 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end do_upstream_access_arch;
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
use switches_lib.distributor_1p1e_red_global_package.all;
entity distributor_1p1e_red is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    ACB_DRAM_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_DRAM_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_DRAM_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_DRAM_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_DRAM_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_DRAM_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_ETH_CONFIG_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_ETH_CONFIG_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_data: in std_logic_vector(109 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_data: out std_logic_vector(64 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_data: in std_logic_vector(109 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_data: out std_logic_vector(64 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_data: out std_logic_vector(109 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_ack : out std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_data: in std_logic_vector(64 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data: in std_logic_vector(109 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req : in std_logic_vector(0 downto 0);
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack : out std_logic_vector(0 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data: out std_logic_vector(64 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req : in std_logic_vector(0 downto 0);
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack : out std_logic_vector(0 downto 0);
    ETH_CONFIG_ADDR_HIGH: in std_logic_vector(35 downto 0);
    ETH_CONFIG_ADDR_LOW: in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_HIGH: in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_LOW: in std_logic_vector(35 downto 0);
    PCIE_CONFIG_ADDR_HIGH: in std_logic_vector(35 downto 0);
    PCIE_CONFIG_ADDR_LOW: in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_HIGH: in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_LOW: in std_logic_vector(35 downto 0)); -- 
  -- 
end entity; 
architecture distributor_1p1e_red_arch  of distributor_1p1e_red is -- system-architecture 
  -- interface signals to connect to memory space memory_space_1
  -- declarations related to module distributorDaemon
  component distributorDaemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      distributor_tap_call_reqs : out  std_logic_vector(0 downto 0);
      distributor_tap_call_acks : in   std_logic_vector(0 downto 0);
      distributor_tap_call_tag  :  out  std_logic_vector(0 downto 0);
      distributor_tap_return_reqs : out  std_logic_vector(0 downto 0);
      distributor_tap_return_acks : in   std_logic_vector(0 downto 0);
      distributor_tap_return_tag :  in   std_logic_vector(0 downto 0);
      distributor_mux_call_reqs : out  std_logic_vector(0 downto 0);
      distributor_mux_call_acks : in   std_logic_vector(0 downto 0);
      distributor_mux_call_tag  :  out  std_logic_vector(0 downto 0);
      distributor_mux_return_reqs : out  std_logic_vector(0 downto 0);
      distributor_mux_return_acks : in   std_logic_vector(0 downto 0);
      distributor_mux_return_tag :  in   std_logic_vector(0 downto 0);
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
  -- argument signals for module distributorDaemon
  signal distributorDaemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal distributorDaemon_tag_out   : std_logic_vector(1 downto 0);
  signal distributorDaemon_start_req : std_logic;
  signal distributorDaemon_start_ack : std_logic;
  signal distributorDaemon_fin_req   : std_logic;
  signal distributorDaemon_fin_ack : std_logic;
  -- declarations related to module distributor_mux
  component distributor_mux is -- 
    generic (tag_length : integer); 
    port ( -- 
      ACB_ETH_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_read_data : in   std_logic_vector(109 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_write_data : out  std_logic_vector(64 downto 0);
      do_upstream_access_call_reqs : out  std_logic_vector(0 downto 0);
      do_upstream_access_call_acks : in   std_logic_vector(0 downto 0);
      do_upstream_access_call_data : out  std_logic_vector(109 downto 0);
      do_upstream_access_call_tag  :  out  std_logic_vector(1 downto 0);
      do_upstream_access_return_reqs : out  std_logic_vector(0 downto 0);
      do_upstream_access_return_acks : in   std_logic_vector(0 downto 0);
      do_upstream_access_return_data : in   std_logic_vector(64 downto 0);
      do_upstream_access_return_tag :  in   std_logic_vector(1 downto 0);
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
  -- argument signals for module distributor_mux
  signal distributor_mux_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal distributor_mux_tag_out   : std_logic_vector(1 downto 0);
  signal distributor_mux_start_req : std_logic;
  signal distributor_mux_start_ack : std_logic;
  signal distributor_mux_fin_req   : std_logic;
  signal distributor_mux_fin_ack : std_logic;
  -- caller side aggregated signals for module distributor_mux
  signal distributor_mux_call_reqs: std_logic_vector(0 downto 0);
  signal distributor_mux_call_acks: std_logic_vector(0 downto 0);
  signal distributor_mux_return_reqs: std_logic_vector(0 downto 0);
  signal distributor_mux_return_acks: std_logic_vector(0 downto 0);
  signal distributor_mux_call_tag: std_logic_vector(0 downto 0);
  signal distributor_mux_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module distributor_tap
  component distributor_tap is -- 
    generic (tag_length : integer); 
    port ( -- 
      ACB_ETH_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_DRAM_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(109 downto 0);
      ETH_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_DRAM_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_DRAM_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_DRAM_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_write_data : out  std_logic_vector(109 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(64 downto 0);
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
  -- argument signals for module distributor_tap
  signal distributor_tap_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal distributor_tap_tag_out   : std_logic_vector(1 downto 0);
  signal distributor_tap_start_req : std_logic;
  signal distributor_tap_start_ack : std_logic;
  signal distributor_tap_fin_req   : std_logic;
  signal distributor_tap_fin_ack : std_logic;
  -- caller side aggregated signals for module distributor_tap
  signal distributor_tap_call_reqs: std_logic_vector(0 downto 0);
  signal distributor_tap_call_acks: std_logic_vector(0 downto 0);
  signal distributor_tap_return_reqs: std_logic_vector(0 downto 0);
  signal distributor_tap_return_acks: std_logic_vector(0 downto 0);
  signal distributor_tap_call_tag: std_logic_vector(0 downto 0);
  signal distributor_tap_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module do_upstream_access
  component do_upstream_access is -- 
    generic (tag_length : integer); 
    port ( -- 
      req : in  std_logic_vector(109 downto 0);
      resp : out  std_logic_vector(64 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req : out  std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack : in   std_logic_vector(0 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data : in   std_logic_vector(64 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req : out  std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack : in   std_logic_vector(0 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data : out  std_logic_vector(109 downto 0);
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
  -- argument signals for module do_upstream_access
  signal do_upstream_access_req :  std_logic_vector(109 downto 0);
  signal do_upstream_access_resp :  std_logic_vector(64 downto 0);
  signal do_upstream_access_in_args    : std_logic_vector(109 downto 0);
  signal do_upstream_access_out_args   : std_logic_vector(64 downto 0);
  signal do_upstream_access_tag_in    : std_logic_vector(2 downto 0) := (others => '0');
  signal do_upstream_access_tag_out   : std_logic_vector(2 downto 0);
  signal do_upstream_access_start_req : std_logic;
  signal do_upstream_access_start_ack : std_logic;
  signal do_upstream_access_fin_req   : std_logic;
  signal do_upstream_access_fin_ack : std_logic;
  -- caller side aggregated signals for module do_upstream_access
  signal do_upstream_access_call_reqs: std_logic_vector(0 downto 0);
  signal do_upstream_access_call_acks: std_logic_vector(0 downto 0);
  signal do_upstream_access_return_reqs: std_logic_vector(0 downto 0);
  signal do_upstream_access_return_acks: std_logic_vector(0 downto 0);
  signal do_upstream_access_call_data: std_logic_vector(109 downto 0);
  signal do_upstream_access_call_tag: std_logic_vector(1 downto 0);
  signal do_upstream_access_return_data: std_logic_vector(64 downto 0);
  signal do_upstream_access_return_tag: std_logic_vector(1 downto 0);
  -- aggregate signals for write to pipe ACB_DRAM_REQUEST
  signal ACB_DRAM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_DRAM_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_DRAM_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_DRAM_RESPONSE
  signal ACB_DRAM_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_DRAM_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_DRAM_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_ETH_CONFIG_REQUEST
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_ETH_CONFIG_RESPONSE
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_ETH_MASTER_REQUEST
  signal ACB_ETH_MASTER_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_ETH_MASTER_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_MASTER_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_ETH_MASTER_RESPONSE
  signal ACB_ETH_MASTER_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_ETH_MASTER_RESPONSE_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_MASTER_RESPONSE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_ETH_SLAVE_REQUEST
  signal ACB_ETH_SLAVE_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_ETH_SLAVE_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_SLAVE_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_ETH_SLAVE_RESPONSE
  signal ACB_ETH_SLAVE_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_ETH_SLAVE_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_ETH_SLAVE_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_MASTER_REQUEST_FROM_DOWNSTREAM
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_MASTER_RESPONSE_TO_DOWNSTREAM
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_PCIE_CONFIG_REQUEST
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_PCIE_CONFIG_RESPONSE
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_PCIE_MASTER_REQUEST
  signal ACB_PCIE_MASTER_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_PCIE_MASTER_REQUEST_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_MASTER_REQUEST_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_PCIE_MASTER_RESPONSE
  signal ACB_PCIE_MASTER_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_PCIE_MASTER_RESPONSE_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_MASTER_RESPONSE_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_PCIE_SLAVE_REQUEST
  signal ACB_PCIE_SLAVE_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_PCIE_SLAVE_REQUEST_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_SLAVE_REQUEST_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_PCIE_SLAVE_RESPONSE
  signal ACB_PCIE_SLAVE_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_PCIE_SLAVE_RESPONSE_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe ACB_REQUEST_TO_DOWNSTREAM
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req: std_logic_vector(0 downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe ACB_RESPONSE_FROM_DOWNSTREAM
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req: std_logic_vector(0 downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack: std_logic_vector(0 downto 0);
  -- gated clock signal declarations.
  -- 
begin -- 
  -- module distributorDaemon
  distributorDaemon_instance:distributorDaemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => distributorDaemon_start_req,
      start_ack => distributorDaemon_start_ack,
      fin_req => distributorDaemon_fin_req,
      fin_ack => distributorDaemon_fin_ack,
      clk => clk,
      reset => reset,
      distributor_tap_call_reqs => distributor_tap_call_reqs(0 downto 0),
      distributor_tap_call_acks => distributor_tap_call_acks(0 downto 0),
      distributor_tap_call_tag => distributor_tap_call_tag(0 downto 0),
      distributor_tap_return_reqs => distributor_tap_return_reqs(0 downto 0),
      distributor_tap_return_acks => distributor_tap_return_acks(0 downto 0),
      distributor_tap_return_tag => distributor_tap_return_tag(0 downto 0),
      distributor_mux_call_reqs => distributor_mux_call_reqs(0 downto 0),
      distributor_mux_call_acks => distributor_mux_call_acks(0 downto 0),
      distributor_mux_call_tag => distributor_mux_call_tag(0 downto 0),
      distributor_mux_return_reqs => distributor_mux_return_reqs(0 downto 0),
      distributor_mux_return_acks => distributor_mux_return_acks(0 downto 0),
      distributor_mux_return_tag => distributor_mux_return_tag(0 downto 0),
      tag_in => distributorDaemon_tag_in,
      tag_out => distributorDaemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  distributorDaemon_tag_in <= (others => '0');
  distributorDaemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => distributorDaemon_start_req, start_ack => distributorDaemon_start_ack,  fin_req => distributorDaemon_fin_req,  fin_ack => distributorDaemon_fin_ack);
  -- module distributor_mux
  -- call arbiter for module distributor_mux
  distributor_mux_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => distributor_mux_call_reqs,
      call_acks => distributor_mux_call_acks,
      return_reqs => distributor_mux_return_reqs,
      return_acks => distributor_mux_return_acks,
      call_tag  => distributor_mux_call_tag,
      return_tag  => distributor_mux_return_tag,
      call_mtag => distributor_mux_tag_in,
      return_mtag => distributor_mux_tag_out,
      call_mreq => distributor_mux_start_req,
      call_mack => distributor_mux_start_ack,
      return_mreq => distributor_mux_fin_req,
      return_mack => distributor_mux_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  distributor_mux_instance:distributor_mux-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => distributor_mux_start_req,
      start_ack => distributor_mux_start_ack,
      fin_req => distributor_mux_fin_req,
      fin_ack => distributor_mux_fin_ack,
      clk => clk,
      reset => reset,
      ACB_ETH_MASTER_REQUEST_pipe_read_req => ACB_ETH_MASTER_REQUEST_pipe_read_req(0 downto 0),
      ACB_ETH_MASTER_REQUEST_pipe_read_ack => ACB_ETH_MASTER_REQUEST_pipe_read_ack(0 downto 0),
      ACB_ETH_MASTER_REQUEST_pipe_read_data => ACB_ETH_MASTER_REQUEST_pipe_read_data(109 downto 0),
      ACB_PCIE_MASTER_REQUEST_pipe_read_req => ACB_PCIE_MASTER_REQUEST_pipe_read_req(0 downto 0),
      ACB_PCIE_MASTER_REQUEST_pipe_read_ack => ACB_PCIE_MASTER_REQUEST_pipe_read_ack(0 downto 0),
      ACB_PCIE_MASTER_REQUEST_pipe_read_data => ACB_PCIE_MASTER_REQUEST_pipe_read_data(109 downto 0),
      ACB_ETH_MASTER_RESPONSE_pipe_write_req => ACB_ETH_MASTER_RESPONSE_pipe_write_req(0 downto 0),
      ACB_ETH_MASTER_RESPONSE_pipe_write_ack => ACB_ETH_MASTER_RESPONSE_pipe_write_ack(0 downto 0),
      ACB_ETH_MASTER_RESPONSE_pipe_write_data => ACB_ETH_MASTER_RESPONSE_pipe_write_data(64 downto 0),
      ACB_PCIE_MASTER_RESPONSE_pipe_write_req => ACB_PCIE_MASTER_RESPONSE_pipe_write_req(0 downto 0),
      ACB_PCIE_MASTER_RESPONSE_pipe_write_ack => ACB_PCIE_MASTER_RESPONSE_pipe_write_ack(0 downto 0),
      ACB_PCIE_MASTER_RESPONSE_pipe_write_data => ACB_PCIE_MASTER_RESPONSE_pipe_write_data(64 downto 0),
      do_upstream_access_call_reqs => do_upstream_access_call_reqs(0 downto 0),
      do_upstream_access_call_acks => do_upstream_access_call_acks(0 downto 0),
      do_upstream_access_call_data => do_upstream_access_call_data(109 downto 0),
      do_upstream_access_call_tag => do_upstream_access_call_tag(1 downto 0),
      do_upstream_access_return_reqs => do_upstream_access_return_reqs(0 downto 0),
      do_upstream_access_return_acks => do_upstream_access_return_acks(0 downto 0),
      do_upstream_access_return_data => do_upstream_access_return_data(64 downto 0),
      do_upstream_access_return_tag => do_upstream_access_return_tag(1 downto 0),
      tag_in => distributor_mux_tag_in,
      tag_out => distributor_mux_tag_out-- 
    ); -- 
  -- module distributor_tap
  -- call arbiter for module distributor_tap
  distributor_tap_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => distributor_tap_call_reqs,
      call_acks => distributor_tap_call_acks,
      return_reqs => distributor_tap_return_reqs,
      return_acks => distributor_tap_return_acks,
      call_tag  => distributor_tap_call_tag,
      return_tag  => distributor_tap_return_tag,
      call_mtag => distributor_tap_tag_in,
      return_mtag => distributor_tap_tag_out,
      call_mreq => distributor_tap_start_req,
      call_mack => distributor_tap_start_ack,
      return_mreq => distributor_tap_fin_req,
      return_mack => distributor_tap_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  distributor_tap_instance:distributor_tap-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => distributor_tap_start_req,
      start_ack => distributor_tap_start_ack,
      fin_req => distributor_tap_fin_req,
      fin_ack => distributor_tap_fin_ack,
      clk => clk,
      reset => reset,
      ACB_ETH_CONFIG_RESPONSE_pipe_read_req => ACB_ETH_CONFIG_RESPONSE_pipe_read_req(0 downto 0),
      ACB_ETH_CONFIG_RESPONSE_pipe_read_ack => ACB_ETH_CONFIG_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_ETH_CONFIG_RESPONSE_pipe_read_data => ACB_ETH_CONFIG_RESPONSE_pipe_read_data(64 downto 0),
      ACB_DRAM_RESPONSE_pipe_read_req => ACB_DRAM_RESPONSE_pipe_read_req(0 downto 0),
      ACB_DRAM_RESPONSE_pipe_read_ack => ACB_DRAM_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_DRAM_RESPONSE_pipe_read_data => ACB_DRAM_RESPONSE_pipe_read_data(64 downto 0),
      ACB_ETH_SLAVE_RESPONSE_pipe_read_req => ACB_ETH_SLAVE_RESPONSE_pipe_read_req(0 downto 0),
      ACB_ETH_SLAVE_RESPONSE_pipe_read_ack => ACB_ETH_SLAVE_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_ETH_SLAVE_RESPONSE_pipe_read_data => ACB_ETH_SLAVE_RESPONSE_pipe_read_data(64 downto 0),
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_req => ACB_PCIE_SLAVE_RESPONSE_pipe_read_req(0 downto 0),
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack => ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_PCIE_SLAVE_RESPONSE_pipe_read_data => ACB_PCIE_SLAVE_RESPONSE_pipe_read_data(64 downto 0),
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_req => ACB_PCIE_CONFIG_RESPONSE_pipe_read_req(0 downto 0),
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack(0 downto 0),
      ACB_PCIE_CONFIG_RESPONSE_pipe_read_data => ACB_PCIE_CONFIG_RESPONSE_pipe_read_data(64 downto 0),
      ETH_CONFIG_ADDR_HIGH => ETH_CONFIG_ADDR_HIGH,
      ETH_CONFIG_ADDR_LOW => ETH_CONFIG_ADDR_LOW,
      ETH_MEM_ADDR_HIGH => ETH_MEM_ADDR_HIGH,
      ETH_MEM_ADDR_LOW => ETH_MEM_ADDR_LOW,
      PCIE_CONFIG_ADDR_HIGH => PCIE_CONFIG_ADDR_HIGH,
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req(0 downto 0),
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack(0 downto 0),
      ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data(109 downto 0),
      PCIE_CONFIG_ADDR_LOW => PCIE_CONFIG_ADDR_LOW,
      PCIE_MEM_ADDR_HIGH => PCIE_MEM_ADDR_HIGH,
      PCIE_MEM_ADDR_LOW => PCIE_MEM_ADDR_LOW,
      ACB_ETH_CONFIG_REQUEST_pipe_write_req => ACB_ETH_CONFIG_REQUEST_pipe_write_req(0 downto 0),
      ACB_ETH_CONFIG_REQUEST_pipe_write_ack => ACB_ETH_CONFIG_REQUEST_pipe_write_ack(0 downto 0),
      ACB_ETH_CONFIG_REQUEST_pipe_write_data => ACB_ETH_CONFIG_REQUEST_pipe_write_data(109 downto 0),
      ACB_DRAM_REQUEST_pipe_write_req => ACB_DRAM_REQUEST_pipe_write_req(0 downto 0),
      ACB_DRAM_REQUEST_pipe_write_ack => ACB_DRAM_REQUEST_pipe_write_ack(0 downto 0),
      ACB_DRAM_REQUEST_pipe_write_data => ACB_DRAM_REQUEST_pipe_write_data(109 downto 0),
      ACB_ETH_SLAVE_REQUEST_pipe_write_req => ACB_ETH_SLAVE_REQUEST_pipe_write_req(0 downto 0),
      ACB_ETH_SLAVE_REQUEST_pipe_write_ack => ACB_ETH_SLAVE_REQUEST_pipe_write_ack(0 downto 0),
      ACB_ETH_SLAVE_REQUEST_pipe_write_data => ACB_ETH_SLAVE_REQUEST_pipe_write_data(109 downto 0),
      ACB_PCIE_SLAVE_REQUEST_pipe_write_req => ACB_PCIE_SLAVE_REQUEST_pipe_write_req(0 downto 0),
      ACB_PCIE_SLAVE_REQUEST_pipe_write_ack => ACB_PCIE_SLAVE_REQUEST_pipe_write_ack(0 downto 0),
      ACB_PCIE_SLAVE_REQUEST_pipe_write_data => ACB_PCIE_SLAVE_REQUEST_pipe_write_data(109 downto 0),
      ACB_PCIE_CONFIG_REQUEST_pipe_write_req => ACB_PCIE_CONFIG_REQUEST_pipe_write_req(0 downto 0),
      ACB_PCIE_CONFIG_REQUEST_pipe_write_ack => ACB_PCIE_CONFIG_REQUEST_pipe_write_ack(0 downto 0),
      ACB_PCIE_CONFIG_REQUEST_pipe_write_data => ACB_PCIE_CONFIG_REQUEST_pipe_write_data(109 downto 0),
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req(0 downto 0),
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack(0 downto 0),
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data(64 downto 0),
      tag_in => distributor_tap_tag_in,
      tag_out => distributor_tap_tag_out-- 
    ); -- 
  -- module do_upstream_access
  do_upstream_access_req <= do_upstream_access_in_args(109 downto 0);
  do_upstream_access_out_args <= do_upstream_access_resp ;
  -- call arbiter for module do_upstream_access
  do_upstream_access_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 110,
      return_data_width => 65,
      callee_tag_length => 1,
      caller_tag_length => 2--
    )
    port map(-- 
      call_reqs => do_upstream_access_call_reqs,
      call_acks => do_upstream_access_call_acks,
      return_reqs => do_upstream_access_return_reqs,
      return_acks => do_upstream_access_return_acks,
      call_data  => do_upstream_access_call_data,
      call_tag  => do_upstream_access_call_tag,
      return_tag  => do_upstream_access_return_tag,
      call_mtag => do_upstream_access_tag_in,
      return_mtag => do_upstream_access_tag_out,
      return_data =>do_upstream_access_return_data,
      call_mreq => do_upstream_access_start_req,
      call_mack => do_upstream_access_start_ack,
      return_mreq => do_upstream_access_fin_req,
      return_mack => do_upstream_access_fin_ack,
      call_mdata => do_upstream_access_in_args,
      return_mdata => do_upstream_access_out_args,
      clk => clk, 
      reset => reset --
    ); --
  do_upstream_access_instance:do_upstream_access-- 
    generic map(tag_length => 3)
    port map(-- 
      req => do_upstream_access_req,
      resp => do_upstream_access_resp,
      start_req => do_upstream_access_start_req,
      start_ack => do_upstream_access_start_ack,
      fin_req => do_upstream_access_fin_req,
      fin_ack => do_upstream_access_fin_ack,
      clk => clk,
      reset => reset,
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req(0 downto 0),
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack(0 downto 0),
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data(64 downto 0),
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req(0 downto 0),
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack(0 downto 0),
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data(109 downto 0),
      tag_in => do_upstream_access_tag_in,
      tag_out => do_upstream_access_tag_out-- 
    ); -- 
  ACB_DRAM_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_DRAM_REQUEST",
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
      read_req => ACB_DRAM_REQUEST_pipe_read_req,
      read_ack => ACB_DRAM_REQUEST_pipe_read_ack,
      read_data => ACB_DRAM_REQUEST_pipe_read_data,
      write_req => ACB_DRAM_REQUEST_pipe_write_req,
      write_ack => ACB_DRAM_REQUEST_pipe_write_ack,
      write_data => ACB_DRAM_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_DRAM_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_DRAM_RESPONSE",
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
      read_req => ACB_DRAM_RESPONSE_pipe_read_req,
      read_ack => ACB_DRAM_RESPONSE_pipe_read_ack,
      read_data => ACB_DRAM_RESPONSE_pipe_read_data,
      write_req => ACB_DRAM_RESPONSE_pipe_write_req,
      write_ack => ACB_DRAM_RESPONSE_pipe_write_ack,
      write_data => ACB_DRAM_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_CONFIG_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_CONFIG_REQUEST",
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
      read_req => ACB_ETH_CONFIG_REQUEST_pipe_read_req,
      read_ack => ACB_ETH_CONFIG_REQUEST_pipe_read_ack,
      read_data => ACB_ETH_CONFIG_REQUEST_pipe_read_data,
      write_req => ACB_ETH_CONFIG_REQUEST_pipe_write_req,
      write_ack => ACB_ETH_CONFIG_REQUEST_pipe_write_ack,
      write_data => ACB_ETH_CONFIG_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_CONFIG_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_CONFIG_RESPONSE",
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
      read_req => ACB_ETH_CONFIG_RESPONSE_pipe_read_req,
      read_ack => ACB_ETH_CONFIG_RESPONSE_pipe_read_ack,
      read_data => ACB_ETH_CONFIG_RESPONSE_pipe_read_data,
      write_req => ACB_ETH_CONFIG_RESPONSE_pipe_write_req,
      write_ack => ACB_ETH_CONFIG_RESPONSE_pipe_write_ack,
      write_data => ACB_ETH_CONFIG_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_MASTER_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_MASTER_REQUEST",
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
      read_req => ACB_ETH_MASTER_REQUEST_pipe_read_req,
      read_ack => ACB_ETH_MASTER_REQUEST_pipe_read_ack,
      read_data => ACB_ETH_MASTER_REQUEST_pipe_read_data,
      write_req => ACB_ETH_MASTER_REQUEST_pipe_write_req,
      write_ack => ACB_ETH_MASTER_REQUEST_pipe_write_ack,
      write_data => ACB_ETH_MASTER_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_MASTER_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_MASTER_RESPONSE",
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
      read_req => ACB_ETH_MASTER_RESPONSE_pipe_read_req,
      read_ack => ACB_ETH_MASTER_RESPONSE_pipe_read_ack,
      read_data => ACB_ETH_MASTER_RESPONSE_pipe_read_data,
      write_req => ACB_ETH_MASTER_RESPONSE_pipe_write_req,
      write_ack => ACB_ETH_MASTER_RESPONSE_pipe_write_ack,
      write_data => ACB_ETH_MASTER_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_SLAVE_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_SLAVE_REQUEST",
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
      read_req => ACB_ETH_SLAVE_REQUEST_pipe_read_req,
      read_ack => ACB_ETH_SLAVE_REQUEST_pipe_read_ack,
      read_data => ACB_ETH_SLAVE_REQUEST_pipe_read_data,
      write_req => ACB_ETH_SLAVE_REQUEST_pipe_write_req,
      write_ack => ACB_ETH_SLAVE_REQUEST_pipe_write_ack,
      write_data => ACB_ETH_SLAVE_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_ETH_SLAVE_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_SLAVE_RESPONSE",
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
      read_req => ACB_ETH_SLAVE_RESPONSE_pipe_read_req,
      read_ack => ACB_ETH_SLAVE_RESPONSE_pipe_read_ack,
      read_data => ACB_ETH_SLAVE_RESPONSE_pipe_read_data,
      write_req => ACB_ETH_SLAVE_RESPONSE_pipe_write_req,
      write_ack => ACB_ETH_SLAVE_RESPONSE_pipe_write_ack,
      write_data => ACB_ETH_SLAVE_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_MASTER_REQUEST_FROM_DOWNSTREAM_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_MASTER_REQUEST_FROM_DOWNSTREAM",
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
      read_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data,
      write_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_MASTER_RESPONSE_TO_DOWNSTREAM_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_MASTER_RESPONSE_TO_DOWNSTREAM",
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
      read_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data,
      write_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_CONFIG_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_CONFIG_REQUEST",
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
      read_req => ACB_PCIE_CONFIG_REQUEST_pipe_read_req,
      read_ack => ACB_PCIE_CONFIG_REQUEST_pipe_read_ack,
      read_data => ACB_PCIE_CONFIG_REQUEST_pipe_read_data,
      write_req => ACB_PCIE_CONFIG_REQUEST_pipe_write_req,
      write_ack => ACB_PCIE_CONFIG_REQUEST_pipe_write_ack,
      write_data => ACB_PCIE_CONFIG_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_CONFIG_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_CONFIG_RESPONSE",
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
      read_req => ACB_PCIE_CONFIG_RESPONSE_pipe_read_req,
      read_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack,
      read_data => ACB_PCIE_CONFIG_RESPONSE_pipe_read_data,
      write_req => ACB_PCIE_CONFIG_RESPONSE_pipe_write_req,
      write_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack,
      write_data => ACB_PCIE_CONFIG_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_MASTER_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_MASTER_REQUEST",
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
      read_req => ACB_PCIE_MASTER_REQUEST_pipe_read_req,
      read_ack => ACB_PCIE_MASTER_REQUEST_pipe_read_ack,
      read_data => ACB_PCIE_MASTER_REQUEST_pipe_read_data,
      write_req => ACB_PCIE_MASTER_REQUEST_pipe_write_req,
      write_ack => ACB_PCIE_MASTER_REQUEST_pipe_write_ack,
      write_data => ACB_PCIE_MASTER_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_MASTER_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_MASTER_RESPONSE",
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
      read_req => ACB_PCIE_MASTER_RESPONSE_pipe_read_req,
      read_ack => ACB_PCIE_MASTER_RESPONSE_pipe_read_ack,
      read_data => ACB_PCIE_MASTER_RESPONSE_pipe_read_data,
      write_req => ACB_PCIE_MASTER_RESPONSE_pipe_write_req,
      write_ack => ACB_PCIE_MASTER_RESPONSE_pipe_write_ack,
      write_data => ACB_PCIE_MASTER_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_SLAVE_REQUEST_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_SLAVE_REQUEST",
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
      read_req => ACB_PCIE_SLAVE_REQUEST_pipe_read_req,
      read_ack => ACB_PCIE_SLAVE_REQUEST_pipe_read_ack,
      read_data => ACB_PCIE_SLAVE_REQUEST_pipe_read_data,
      write_req => ACB_PCIE_SLAVE_REQUEST_pipe_write_req,
      write_ack => ACB_PCIE_SLAVE_REQUEST_pipe_write_ack,
      write_data => ACB_PCIE_SLAVE_REQUEST_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_PCIE_SLAVE_RESPONSE_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_SLAVE_RESPONSE",
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
      read_req => ACB_PCIE_SLAVE_RESPONSE_pipe_read_req,
      read_ack => ACB_PCIE_SLAVE_RESPONSE_pipe_read_ack,
      read_data => ACB_PCIE_SLAVE_RESPONSE_pipe_read_data,
      write_req => ACB_PCIE_SLAVE_RESPONSE_pipe_write_req,
      write_ack => ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack,
      write_data => ACB_PCIE_SLAVE_RESPONSE_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_REQUEST_TO_DOWNSTREAM_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_REQUEST_TO_DOWNSTREAM",
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
      read_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data,
      write_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  ACB_RESPONSE_FROM_DOWNSTREAM_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe ACB_RESPONSE_FROM_DOWNSTREAM",
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
      read_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data,
      write_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- input signal-pipe ETH_CONFIG_ADDR_HIGH accessed directly. 
  -- input signal-pipe ETH_CONFIG_ADDR_LOW accessed directly. 
  -- input signal-pipe ETH_MEM_ADDR_HIGH accessed directly. 
  -- input signal-pipe ETH_MEM_ADDR_LOW accessed directly. 
  -- input signal-pipe PCIE_CONFIG_ADDR_HIGH accessed directly. 
  -- input signal-pipe PCIE_CONFIG_ADDR_LOW accessed directly. 
  -- input signal-pipe PCIE_MEM_ADDR_HIGH accessed directly. 
  -- input signal-pipe PCIE_MEM_ADDR_LOW accessed directly. 
  -- gated clock generators 
  -- 
end distributor_1p1e_red_arch;
