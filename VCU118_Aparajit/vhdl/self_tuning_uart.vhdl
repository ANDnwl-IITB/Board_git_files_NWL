library ieee;
use ieee.std_logic_1164.all;

library ahir;
use ahir.BaseComponents.all;

library simpleUartLib;
use simpleUartLib.uartPackage.all;
 
library myUartLib;
use myUartLib.myUartPackage.all;

--library ajit_sac_processor_lib;
--use ajit_sac_processor_lib.ajit_sac_processor_config.all;

entity self_tuning_uart is
	port (clk, reset: in std_logic;
		UART_RX: in std_logic_vector(0 downto 0);	
		UART_TX: out std_logic_vector(0 downto 0);	

		TX_to_CONSOLE_pipe_write_data: in std_logic_vector(7 downto 0);
		TX_to_CONSOLE_pipe_write_req:  in std_logic_vector(0 downto 0);
		TX_to_CONSOLE_pipe_write_ack:  out std_logic_vector(0 downto 0);

		CONSOLE_to_RX_pipe_read_data : out std_logic_vector(7 downto 0);
		CONSOLE_to_RX_pipe_read_req :  in std_logic_vector(0 downto 0);
		CONSOLE_to_RX_pipe_read_ack :  out std_logic_vector(0 downto 0)
	);
end entity self_tuning_uart;

architecture Struct of self_tuning_uart is
	-- bridging signals
	signal int_TX_to_CONSOLE_pipe_write_data: std_logic_vector(7 downto 0);
	signal int_TX_to_CONSOLE_pipe_write_req:  std_logic_vector(0 downto 0);
	signal int_TX_to_CONSOLE_pipe_write_ack:  std_logic_vector(0 downto 0);

	signal int_CONSOLE_to_RX_pipe_read_data : std_logic_vector(7 downto 0);
	signal int_CONSOLE_to_RX_pipe_read_req :  std_logic_vector(0 downto 0);
	signal int_CONSOLE_to_RX_pipe_read_ack :  std_logic_vector(0 downto 0);

	signal EXT_SYS_RESET: std_logic_vector(0 downto 0);

begin
	-- Receive queue.. depth set by  DEBUG_UART_RX_BUFFER_SIZE.
	rx_pipe_inst:  PipeBase
		generic map (
			name => "debug_uart_rx_pipe_inst",
			num_reads => 1,
			num_writes => 1,
			lifo_mode => false,
           		data_width => 8,
			depth => 16,
			signal_mode => false,
			shift_register_mode => false,
			save_slot => false,
			bypass => false,
			full_rate => false
		)
		port map (
			-- outer world connections
      			read_req        => CONSOLE_to_RX_pipe_read_req,	     -- in from outside, into pipe
      			read_ack        => CONSOLE_to_RX_pipe_read_ack,	     -- out to outside, out from pipe
      			read_data       => CONSOLE_to_RX_pipe_read_data,     -- out to outside, out from pipe 
			-- uart connections
      			write_req       => int_CONSOLE_to_RX_pipe_read_ack,  -- comes out of the uart, into the pipe
      			write_ack       => int_CONSOLE_to_RX_pipe_read_req,  -- out of the pipe, into the uart
      			write_data      => int_CONSOLE_to_RX_pipe_read_data, -- out of the uart, into the pipe
      			clk => clk, 
			reset => reset
		 );

	-- Transmit queue.. depth set by  DEBUG_UART_TX_BUFFER_SIZE.
	tx_pipe_inst:  PipeBase
		generic map (
			name => "debug_uart_tx_pipe_inst",
			num_reads => 1,
			num_writes => 1,
			lifo_mode => false,
           		data_width => 8,
			depth => 16,
			signal_mode => false,
			shift_register_mode => false,
			save_slot => false,
			bypass => false,
			full_rate => false
		)
		port map (
      			read_req        => int_TX_to_CONSOLE_pipe_write_ack,    -- out from uart, into pipe
      			read_ack        => int_TX_to_CONSOLE_pipe_write_req,    -- out from pipe, in to uart
      			read_data       => int_TX_to_CONSOLE_pipe_write_data,   -- out from pipe, in to uart.

      			write_req       => TX_to_CONSOLE_pipe_write_req,	-- in from outdside, in to pipe
      			write_ack       => TX_to_CONSOLE_pipe_write_ack,	-- out to outside, out from pipe
      			write_data      => TX_to_CONSOLE_pipe_write_data,       -- in from outside, in to pipe.
      			clk => clk, 
			reset => reset
		 );

	uart_inst: mySelfTuningUartWithExtResetGen
		port map (
				reset => reset,
				clk => clk,
				ext_system_reset => EXT_SYS_RESET,
				UART_RX(0)      => UART_RX(0),	
				UART_TX(0)     => UART_TX(0),	
	 			CONSOLE_to_RX_pipe_read_data  => int_CONSOLE_to_RX_pipe_read_data,
	 			CONSOLE_to_RX_pipe_read_req   => int_CONSOLE_to_RX_pipe_read_req,
	 			CONSOLE_to_RX_pipe_read_ack   => int_CONSOLE_to_RX_pipe_read_ack,
	 			TX_to_CONSOLE_pipe_write_data => int_TX_to_CONSOLE_pipe_write_data,
	 			TX_to_CONSOLE_pipe_write_req  => int_TX_to_CONSOLE_pipe_write_req,
	 			TX_to_CONSOLE_pipe_write_ack  => int_TX_to_CONSOLE_pipe_write_ack
		);

end Struct;
	
