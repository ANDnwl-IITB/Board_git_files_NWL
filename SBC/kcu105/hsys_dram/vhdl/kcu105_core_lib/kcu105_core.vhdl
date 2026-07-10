library ieee;
use ieee.std_logic_1164.all;
package kcu105_core_Type_Package is -- 
  -- 
end package;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-->>>>>
library kcu105_core_lib;
use kcu105_core_lib.kcu105_core_Type_Package.all;
--<<<<<
-->>>>>
library DualClockedQueue_lib;
library DualClockedQueue_lib;
library acb_dram_controller_bridge_lib;
library ajit_processor_lib;
--<<<<<
entity kcu105_core is -- 
  port( -- 
    CLOCK_80 : in std_logic_vector(0 downto 0);
    CLOCK_TO_DRAMCTRL_BRIDGE : in std_logic_vector(0 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    DRAM_CONTROLLER_TO_ACB_BRIDGE : in std_logic_vector(521 downto 0);
    EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
    MEM_INVALIDATE_pipe_write_data : in std_logic_vector(31 downto 0);
    MEM_INVALIDATE_pipe_write_req  : in std_logic_vector(0  downto 0);
    MEM_INVALIDATE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    RESET_TO_DRAMCTRL_BRIDGE : in std_logic_vector(0 downto 0);
    RESET_TO_PROCESSOR : in std_logic_vector(0 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
    THREAD_RESET : in std_logic_vector(3 downto 0);
    ACB_BRIDGE_TO_DRAM_CONTROLLER : out std_logic_vector(612 downto 0);
    MEM_INVALIDATE_ACK_pipe_read_data : out std_logic_vector(0 downto 0);
    MEM_INVALIDATE_ACK_pipe_read_req  : in std_logic_vector(0  downto 0);
    MEM_INVALIDATE_ACK_pipe_read_ack  : out std_logic_vector(0  downto 0);
    PROCESSOR_MODE : out std_logic_vector(15 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
    SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
    SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
    UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
    UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
    UART_SOFT_RESET : out std_logic_vector(0 downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity kcu105_core;
architecture struct of kcu105_core is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_data: std_logic_vector(64 downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_req : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_data: std_logic_vector(64 downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_req : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_ack : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_data: std_logic_vector(64 downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_req : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_ack : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_data: std_logic_vector(64 downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_req : std_logic_vector(0  downto 0);
  signal DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_ack : std_logic_vector(0  downto 0);
  component DualClockedQueue_ACB_req_wrap is -- 
    port( -- 
      fifo_reset : in std_logic_vector(0 downto 0);
      read_clk : in std_logic_vector(0 downto 0);
      write_clk : in std_logic_vector(0 downto 0);
      write_data_pipe_write_data : in std_logic_vector(109 downto 0);
      write_data_pipe_write_req  : in std_logic_vector(0  downto 0);
      write_data_pipe_write_ack  : out std_logic_vector(0  downto 0);
      read_data_pipe_read_data : out std_logic_vector(109 downto 0);
      read_data_pipe_read_req  : in std_logic_vector(0  downto 0);
      read_data_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for DualClockedQueue_ACB_Proc_req_inst :  DualClockedQueue_ACB_req_wrap -- 
    use entity DualClockedQueue_lib.DualClockedQueue_ACB_req_wrap; -- 
  --<<<<<
  component DualClockedQueue_ACB_resp_wrap is -- 
    port( -- 
      fifo_reset : in std_logic_vector(0 downto 0);
      read_clk : in std_logic_vector(0 downto 0);
      write_clk : in std_logic_vector(0 downto 0);
      write_data_pipe_write_data : in std_logic_vector(64 downto 0);
      write_data_pipe_write_req  : in std_logic_vector(0  downto 0);
      write_data_pipe_write_ack  : out std_logic_vector(0  downto 0);
      read_data_pipe_read_data : out std_logic_vector(64 downto 0);
      read_data_pipe_read_req  : in std_logic_vector(0  downto 0);
      read_data_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for DualClockedQueue_ACB_Proc_resp_inst :  DualClockedQueue_ACB_resp_wrap -- 
    use entity DualClockedQueue_lib.DualClockedQueue_ACB_resp_wrap; -- 
  --<<<<<
  component acb_dram_controller_bridge is -- 
    port( -- 
      CORE_BUS_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DRAM_CONTROLLER_TO_ACB_BRIDGE : in std_logic_vector(521 downto 0);
      ACB_BRIDGE_TO_DRAM_CONTROLLER : out std_logic_vector(612 downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for acb_dram_controller_bridge_inst :  acb_dram_controller_bridge -- 
    use entity acb_dram_controller_bridge_lib.acb_dram_controller_bridge; -- 
  --<<<<<
  component processor_1x1x32 is -- 
    port( -- 
      CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
      EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
      MAIN_MEM_INVALIDATE_pipe_write_data : in std_logic_vector(31 downto 0);
      MAIN_MEM_INVALIDATE_pipe_write_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_INVALIDATE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      MAIN_MEM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      MAIN_MEM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
      SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
      THREAD_RESET : in std_logic_vector(3 downto 0);
      MAIN_MEM_INVALIDATE_ACK_pipe_read_data : out std_logic_vector(0 downto 0);
      MAIN_MEM_INVALIDATE_ACK_pipe_read_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_INVALIDATE_ACK_pipe_read_ack  : out std_logic_vector(0  downto 0);
      MAIN_MEM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      MAIN_MEM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      MAIN_MEM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      PROCESSOR_MODE : out std_logic_vector(15 downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_data : out std_logic_vector(7 downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_req  : in std_logic_vector(0  downto 0);
      SERIAL_TX_to_CONSOLE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_data : out std_logic_vector(7 downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_req  : in std_logic_vector(0  downto 0);
      SOC_DEBUG_to_MONITOR_pipe_read_ack  : out std_logic_vector(0  downto 0);
      UART_BAUD_FREQ : out std_logic_vector(31 downto 0);
      UART_BAUD_LIMIT : out std_logic_vector(31 downto 0);
      UART_SOFT_RESET : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for processor_inst :  processor_1x1x32 -- 
    use entity ajit_processor_lib.processor_1x1x32; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  DualClockedQueue_ACB_Proc_req_inst: DualClockedQueue_ACB_req_wrap
  port map ( --
    fifo_reset => RESET_TO_PROCESSOR,
    read_clk => CLOCK_TO_DRAMCTRL_BRIDGE,
    read_data_pipe_read_data => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_data,
    read_data_pipe_read_req => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_ack,
    read_data_pipe_read_ack => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_req,
    write_clk => CLOCK_80,
    write_data_pipe_write_data => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_data,
    write_data_pipe_write_req => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_ack,
    write_data_pipe_write_ack => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_req,
    clk => hsys_tie_low,  reset => hsys_tie_low
    ); -- 
  DualClockedQueue_ACB_Proc_resp_inst: DualClockedQueue_ACB_resp_wrap
  port map ( --
    fifo_reset => RESET_TO_DRAMCTRL_BRIDGE,
    read_clk => CLOCK_80,
    read_data_pipe_read_data => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_data,
    read_data_pipe_read_req => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_ack,
    read_data_pipe_read_ack => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_req,
    write_clk => CLOCK_TO_DRAMCTRL_BRIDGE,
    write_data_pipe_write_data => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_data,
    write_data_pipe_write_req => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_ack,
    write_data_pipe_write_ack => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_req,
    clk => hsys_tie_low,  reset => hsys_tie_low
    ); -- 
  acb_dram_controller_bridge_inst: acb_dram_controller_bridge
  port map ( --
    ACB_BRIDGE_TO_DRAM_CONTROLLER => ACB_BRIDGE_TO_DRAM_CONTROLLER,
    CORE_BUS_REQUEST_pipe_write_data => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_req,
    CORE_BUS_RESPONSE_pipe_read_data => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_req,
    DRAM_CONTROLLER_TO_ACB_BRIDGE => DRAM_CONTROLLER_TO_ACB_BRIDGE,
    clk => CLOCK_TO_DRAMCTRL_BRIDGE(0),  reset => RESET_TO_DRAMCTRL_BRIDGE(0)
    ); -- 
  processor_inst: processor_1x1x32
  port map ( --
    CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
    CONSOLE_to_SERIAL_RX_pipe_write_req => CONSOLE_to_SERIAL_RX_pipe_write_req,
    CONSOLE_to_SERIAL_RX_pipe_write_ack => CONSOLE_to_SERIAL_RX_pipe_write_ack,
    EXTERNAL_INTERRUPT => EXTERNAL_INTERRUPT,
    MAIN_MEM_INVALIDATE_pipe_write_data => MEM_INVALIDATE_pipe_write_data,
    MAIN_MEM_INVALIDATE_pipe_write_req => MEM_INVALIDATE_pipe_write_req,
    MAIN_MEM_INVALIDATE_pipe_write_ack => MEM_INVALIDATE_pipe_write_ack,
    MAIN_MEM_INVALIDATE_ACK_pipe_read_data => MEM_INVALIDATE_ACK_pipe_read_data,
    MAIN_MEM_INVALIDATE_ACK_pipe_read_req => MEM_INVALIDATE_ACK_pipe_read_req,
    MAIN_MEM_INVALIDATE_ACK_pipe_read_ack => MEM_INVALIDATE_ACK_pipe_read_ack,
    MAIN_MEM_REQUEST_pipe_read_data => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_data,
    MAIN_MEM_REQUEST_pipe_read_req => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_ack,
    MAIN_MEM_REQUEST_pipe_read_ack => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_req,
    MAIN_MEM_RESPONSE_pipe_write_data => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_data,
    MAIN_MEM_RESPONSE_pipe_write_req => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_ack,
    MAIN_MEM_RESPONSE_pipe_write_ack => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_req,
    PROCESSOR_MODE => PROCESSOR_MODE,
    SERIAL_TX_to_CONSOLE_pipe_read_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
    SERIAL_TX_to_CONSOLE_pipe_read_req => SERIAL_TX_to_CONSOLE_pipe_read_req,
    SERIAL_TX_to_CONSOLE_pipe_read_ack => SERIAL_TX_to_CONSOLE_pipe_read_ack,
    SOC_DEBUG_to_MONITOR_pipe_read_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    SOC_DEBUG_to_MONITOR_pipe_read_req => SOC_DEBUG_to_MONITOR_pipe_read_req,
    SOC_DEBUG_to_MONITOR_pipe_read_ack => SOC_DEBUG_to_MONITOR_pipe_read_ack,
    SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    SOC_MONITOR_to_DEBUG_pipe_write_req => SOC_MONITOR_to_DEBUG_pipe_write_req,
    SOC_MONITOR_to_DEBUG_pipe_write_ack => SOC_MONITOR_to_DEBUG_pipe_write_ack,
    THREAD_RESET => THREAD_RESET,
    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_SOFT_RESET => UART_SOFT_RESET,
    clk => CLOCK_80(0),  reset => RESET_TO_PROCESSOR(0)
    ); -- 
  -- pipe DRAM_PROCESSOR_RESPONSE_FIFO_IN depth set to 0 since it is a P2P pipe.
  DRAM_PROCESSOR_RESPONSE_FIFO_IN_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DRAM_PROCESSOR_RESPONSE_FIFO_IN",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_req,
      read_ack => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_ack,
      read_data => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_read_data,
      write_req => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_req,
      write_ack => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_ack,
      write_data => DRAM_PROCESSOR_RESPONSE_FIFO_IN_pipe_write_data,
      clk => CLOCK_TO_DRAMCTRL_BRIDGE(0), reset => RESET_TO_DRAMCTRL_BRIDGE(0) -- 
    ); -- 
  -- pipe DRAM_PROCESSOR_RESPONSE_FIFO_OUT depth set to 0 since it is a P2P pipe.
  DRAM_PROCESSOR_RESPONSE_FIFO_OUT_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe DRAM_PROCESSOR_RESPONSE_FIFO_OUT",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_req,
      read_ack => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_ack,
      read_data => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_read_data,
      write_req => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_req,
      write_ack => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_ack,
      write_data => DRAM_PROCESSOR_RESPONSE_FIFO_OUT_pipe_write_data,
      clk => CLOCK_80(0), reset => RESET_TO_PROCESSOR(0) -- 
    ); -- 
  -- pipe PROCESSOR_DRAM_REQUEST_FIFO_IN depth set to 0 since it is a P2P pipe.
  PROCESSOR_DRAM_REQUEST_FIFO_IN_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PROCESSOR_DRAM_REQUEST_FIFO_IN",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_req,
      read_ack => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_ack,
      read_data => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_read_data,
      write_req => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_req,
      write_ack => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_ack,
      write_data => PROCESSOR_DRAM_REQUEST_FIFO_IN_pipe_write_data,
      clk => CLOCK_80(0), reset => RESET_TO_PROCESSOR(0) -- 
    ); -- 
  -- pipe PROCESSOR_DRAM_REQUEST_FIFO_OUT depth set to 0 since it is a P2P pipe.
  PROCESSOR_DRAM_REQUEST_FIFO_OUT_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PROCESSOR_DRAM_REQUEST_FIFO_OUT",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_req,
      read_ack => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_ack,
      read_data => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_read_data,
      write_req => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_req,
      write_ack => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_ack,
      write_data => PROCESSOR_DRAM_REQUEST_FIFO_OUT_pipe_write_data,
      clk => CLOCK_TO_DRAMCTRL_BRIDGE(0), reset => RESET_TO_DRAMCTRL_BRIDGE(0) -- 
    ); -- 
  -- 
end struct;
