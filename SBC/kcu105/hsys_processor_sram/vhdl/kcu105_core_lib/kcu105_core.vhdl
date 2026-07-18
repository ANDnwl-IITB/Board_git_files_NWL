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
library acb_sram_lib;
library ajit_processor_lib;
--<<<<<
entity kcu105_core is -- 
  port( -- 
    CLOCK_80 : in std_logic_vector(0 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    EXTERNAL_INTERRUPT : in std_logic_vector(0 downto 0);
    MEM_INVALIDATE_pipe_write_data : in std_logic_vector(31 downto 0);
    MEM_INVALIDATE_pipe_write_req  : in std_logic_vector(0  downto 0);
    MEM_INVALIDATE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    RESET_TO_PROCESSOR : in std_logic_vector(0 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
    THREAD_RESET : in std_logic_vector(3 downto 0);
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
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal PROCESSOR_TO_SRAM_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal SRAM_TO_PROCESSOR_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  component acb_sram is -- 
    port( -- 
      ACB_SRAM_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      ACB_SRAM_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_SRAM_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_SRAM_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      ACB_SRAM_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_SRAM_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for acb_sram_inst :  acb_sram -- 
    use entity acb_sram_lib.acb_sram; -- 
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
  acb_sram_inst: acb_sram
  port map ( --
    ACB_SRAM_REQUEST_pipe_write_data => PROCESSOR_TO_SRAM_REQUEST_pipe_read_data,
    ACB_SRAM_REQUEST_pipe_write_req => PROCESSOR_TO_SRAM_REQUEST_pipe_read_ack,
    ACB_SRAM_REQUEST_pipe_write_ack => PROCESSOR_TO_SRAM_REQUEST_pipe_read_req,
    ACB_SRAM_RESPONSE_pipe_read_data => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_data,
    ACB_SRAM_RESPONSE_pipe_read_req => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_ack,
    ACB_SRAM_RESPONSE_pipe_read_ack => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_req,
    clk => CLOCK_80(0),  reset => RESET_TO_PROCESSOR(0)
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
    MAIN_MEM_REQUEST_pipe_read_data => PROCESSOR_TO_SRAM_REQUEST_pipe_write_data,
    MAIN_MEM_REQUEST_pipe_read_req => PROCESSOR_TO_SRAM_REQUEST_pipe_write_ack,
    MAIN_MEM_REQUEST_pipe_read_ack => PROCESSOR_TO_SRAM_REQUEST_pipe_write_req,
    MAIN_MEM_RESPONSE_pipe_write_data => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_data,
    MAIN_MEM_RESPONSE_pipe_write_req => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_ack,
    MAIN_MEM_RESPONSE_pipe_write_ack => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_req,
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
  -- pipe PROCESSOR_TO_SRAM_REQUEST depth set to 0 since it is a P2P pipe.
  PROCESSOR_TO_SRAM_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe PROCESSOR_TO_SRAM_REQUEST",
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
      read_req => PROCESSOR_TO_SRAM_REQUEST_pipe_read_req,
      read_ack => PROCESSOR_TO_SRAM_REQUEST_pipe_read_ack,
      read_data => PROCESSOR_TO_SRAM_REQUEST_pipe_read_data,
      write_req => PROCESSOR_TO_SRAM_REQUEST_pipe_write_req,
      write_ack => PROCESSOR_TO_SRAM_REQUEST_pipe_write_ack,
      write_data => PROCESSOR_TO_SRAM_REQUEST_pipe_write_data,
      clk => CLOCK_80(0), reset => RESET_TO_PROCESSOR(0) -- 
    ); -- 
  -- pipe SRAM_TO_PROCESSOR_RESPONSE depth set to 0 since it is a P2P pipe.
  SRAM_TO_PROCESSOR_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe SRAM_TO_PROCESSOR_RESPONSE",
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
      read_req => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_req,
      read_ack => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_ack,
      read_data => SRAM_TO_PROCESSOR_RESPONSE_pipe_read_data,
      write_req => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_req,
      write_ack => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_ack,
      write_data => SRAM_TO_PROCESSOR_RESPONSE_pipe_write_data,
      clk => CLOCK_80(0), reset => RESET_TO_PROCESSOR(0) -- 
    ); -- 
  -- 
end struct;
