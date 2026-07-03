library ieee;
use ieee.std_logic_1164.all;
package AjitHpcAccelConfigurationPackage is
  constant   SNOOP_CACHE_LOG_MEMORY_SIZE : integer :=  3 ; -- snoop cache size.
end package;
library ieee;
use ieee.std_logic_1164.all;

package AjitHpcAccelComponents is
  -- this one has an enable (to avoid a guard).
  component single_port_256X64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 256 dwords..= 2KB
    byte_addr : in  std_logic_vector(10 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_256X64_memory_Operator;

  component single_port_512X64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 512 dwords..= 4KB
    byte_addr : in  std_logic_vector(11 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_512X64_memory_Operator;

  component single_port_1kX64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 512 dwords..= 4KB
    byte_addr : in  std_logic_vector(12 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_1kX64_memory_Operator;

  component single_port_2kX64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    -- 2K dwords..= 16KB
    byte_mask: in std_logic_vector(7 downto 0);
    byte_addr : in  std_logic_vector(13 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_2kX64_memory_Operator;
  component single_port_4kX64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    -- 4K dwords..= 32KB
    byte_mask: in std_logic_vector(7 downto 0);
    byte_addr : in  std_logic_vector(14 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_4kX64_memory_Operator;
 component single_port_8kX64_memory_Operator is -- 
   port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    -- 4K dwords..= 32KB
    byte_mask: in std_logic_vector(7 downto 0);
    byte_addr : in  std_logic_vector(15 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
   );
  -- 
 end component single_port_8kX64_memory_Operator;

 component dual_port_64x32_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(7 downto 0);
    read_data : out  std_logic_vector(31 downto 0);
    write_addr : in  std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(31 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component dual_port_64x32_memory_Operator;

 component dual_port_2kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(13 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    write_addr : in  std_logic_vector(13 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component dual_port_2kX64_memory_Operator;

 component dual_port_1kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(12 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    write_addr : in  std_logic_vector(12 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component dual_port_1kX64_memory_Operator;

 component generic_single_port_memory is
   generic ( name: string; 
		g_addr_width: natural := 10; 
		g_data_width : natural := 16);
   port (
	   datain : in std_logic_vector(g_data_width-1 downto 0);
           dataout: out std_logic_vector(g_data_width-1 downto 0);
           addrin: in std_logic_vector(g_addr_width-1 downto 0);
           enable: in std_logic;
           writebar : in std_logic;
           clk: in std_logic;
           reset : in std_logic);
 end component generic_single_port_memory;
 component generic_single_port_memory_with_byte_mask is
   generic ( name: string; 
		g_addr_width: natural := 10; 
		g_data_width : natural := 16);
   port (
	   datain : in std_logic_vector(g_data_width-1 downto 0);
           dataout: out std_logic_vector(g_data_width-1 downto 0);
           addrin: in std_logic_vector(g_addr_width-1 downto 0);
	   byte_mask: in std_logic_vector((g_data_width/8)-1 downto 0);
           enable: in std_logic;
           writebar : in std_logic;
           clk: in std_logic;
           reset : in std_logic);
 end component generic_single_port_memory_with_byte_mask;

 component generic_read_buffer is -- 

  generic (log_number_of_entries: integer := 6);
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    -----------------------------------------------------------
    -- Clear the cache.
    -----------------------------------------------------------
    read_buffer_init : in  std_logic_vector(0 downto 0);
    -----------------------------------------------------------
    -- Add an entry to the cache...
    -- 33 bit dword physical address 
    -----------------------------------------------------------
    add_entry   : in  std_logic_vector(0 downto 0);
    add_addr    : in  std_logic_vector(32 downto 0);
    add_dword   : in  std_logic_vector(63 downto 0);
    -----------------------------------------------------------
    -- lookup addr..
    -----------------------------------------------------------
    lookup_addr   : in  std_logic_vector(32 downto 0);
    lookup_hit    : out std_logic_vector(0 downto 0);
    lookup_result : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component generic_read_buffer;

 component read_buffer_64_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    -----------------------------------------------------------
    -- Clear the cache.
    -----------------------------------------------------------
    read_buffer_init : in  std_logic_vector(0 downto 0);
    -----------------------------------------------------------
    -- Add an entry to the cache...
    -- 33 bit dword physical address 
    -----------------------------------------------------------
    add_entry   : in  std_logic_vector(0 downto 0);
    add_addr    : in  std_logic_vector(32 downto 0);
    add_dword   : in  std_logic_vector(63 downto 0);
    -----------------------------------------------------------
    -- lookup addr..
    -----------------------------------------------------------
    lookup_addr   : in  std_logic_vector(32 downto 0);
    lookup_hit    : out std_logic_vector(0 downto 0);
    lookup_result : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component read_buffer_64_Operator;

 component atomic_sample_update_Operator is -- 
  generic (data_width: integer := 33);
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    init : in  std_logic_vector(0 downto 0);
    u : in  std_logic_vector(data_width-1 downto 0);
    data_valid : out  std_logic_vector(0 downto 0);
    data : out  std_logic_vector(data_width-1 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component atomic_sample_update_Operator;

 component atomic_sample_update_33_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    init : in  std_logic_vector(0 downto 0);
    u : in  std_logic_vector(33-1 downto 0);
    data_valid : out  std_logic_vector(0 downto 0);
    data : out  std_logic_vector(33-1 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
 end component atomic_sample_update_33_Operator;


 component snoopFilterHpcAccelQcore_Operator is
  port ( -- 
    	sample_req: in boolean;
    	sample_ack: out boolean;
    	update_req: in boolean;
    	update_ack: out boolean;
	init: in std_logic_vector(0 downto 0);
	erase: in std_logic_vector(0 downto 0);
	write: in std_logic_vector(0 downto 0);
        read_pa_tag:  in std_logic_vector(29 downto 0);
        inv_pa_tag:  in std_logic_vector(29 downto 0);
	send_inval: out std_logic_vector(0 downto 0);
        clk, reset: in std_logic);
  end component;
  component genericFullyAssociativeMemoryNoDataWithErase is
	generic (tag_width: integer := 8; log_number_of_entries: integer := 6);
	port (  start_req: in std_logic;
		start_ack: out std_logic;
		fin_req: in std_logic;
		fin_ack: out std_logic;

		-- clear all valids.
		clear_flag: in std_logic_vector(0 downto 0);

		-- add entry
		erase_flag: in std_logic_vector(0 downto 0);
		write_flag: in std_logic_vector(0 downto 0);
		erase_tag : in std_logic_vector(tag_width-1 downto 0);
		write_tag : in std_logic_vector(tag_width-1 downto 0);

		-- lookup entry
		lookup_flag: in std_logic_vector(0 downto 0);
		lookup_tag : in std_logic_vector(tag_width-1 downto 0);
		lookup_valid: out std_logic_vector(0 downto 0);

		clk,reset: in std_logic);

  end component genericFullyAssociativeMemoryNoDataWithErase;
  component genericFullyAssociativeMemoryNoDataWithErase_Operator is
	generic (tag_width: integer := 8; log_number_of_entries: integer := 6);
	port (  sample_req: in boolean;
		sample_ack: out boolean;
		update_req: in boolean;
		update_ack: out boolean;

		-- clear all valids.
		clear_flag: in std_logic_vector(0 downto 0);

		-- add entry
		erase_flag: in std_logic_vector(0 downto 0);
		erase_tag : in std_logic_vector(tag_width-1 downto 0);
		write_flag: in std_logic_vector(0 downto 0);
		write_tag : in std_logic_vector(tag_width-1 downto 0);

		-- lookup entry
		lookup_flag: in std_logic_vector(0 downto 0);
		lookup_tag : in std_logic_vector(tag_width-1 downto 0);
		lookup_valid: out std_logic_vector(0 downto 0);

		clk,reset: in std_logic);

   end component genericFullyAssociativeMemoryNoDataWithErase_Operator;

   component reg_to_exec_mux_daemon is  -- system 
     generic (tag_length : integer := 1); 
     port (-- 
       clk : in std_logic;
       reset : in std_logic;
       start_req : in std_logic;
       start_ack : out std_logic;
       fin_req : in std_logic;
       fin_ack   : out std_logic;
       noblock_teu_register_file_to_exec_0_pipe_read_req : out  std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_0_pipe_read_ack : in   std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_0_pipe_read_data : in   std_logic_vector(2381 downto 0);
       noblock_teu_register_file_to_exec_1_pipe_read_req : out  std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_1_pipe_read_ack : in   std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_1_pipe_read_data : in   std_logic_vector(2381 downto 0);
       noblock_teu_register_file_to_exec_2_pipe_read_req : out  std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_2_pipe_read_ack : in   std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_2_pipe_read_data : in   std_logic_vector(2381 downto 0);
       noblock_teu_register_file_to_exec_3_pipe_read_req : out  std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_3_pipe_read_ack : in   std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_3_pipe_read_data : in   std_logic_vector(2381 downto 0);
       noblock_teu_register_file_to_exec_pipe_write_req : out  std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_pipe_write_ack : in   std_logic_vector(0 downto 0);
       noblock_teu_register_file_to_exec_pipe_write_data : out  std_logic_vector(2381 downto 0);
       tag_in: in std_logic_vector(tag_length-1 downto 0);
       tag_out: out std_logic_vector(tag_length-1 downto 0)) ;
   end component; 

   component exec_to_reg_demux_daemon is  -- system 
     generic (tag_length : integer := 1); 
    port (-- 
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic;
      noblock_teu_exec_to_write_back_pipe_read_req : out  std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_pipe_read_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_pipe_read_data : in   std_logic_vector(360 downto 0);
      noblock_teu_exec_to_write_back_thread_1_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_1_pipe_write_data : out  std_logic_vector(360 downto 0);
      noblock_teu_exec_to_write_back_thread_0_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_0_pipe_write_data : out  std_logic_vector(360 downto 0);
      noblock_teu_exec_to_write_back_thread_2_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_2_pipe_write_data : out  std_logic_vector(360 downto 0);
      noblock_teu_exec_to_write_back_thread_3_pipe_write_req : out  std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
      noblock_teu_exec_to_write_back_thread_3_pipe_write_data : out  std_logic_vector(360 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0));
   end component; 

   component register_dual_ported_memory_Operator is -- 
    port ( -- 
      sample_req: in boolean;
      sample_ack: out boolean;
      update_req: in boolean;
      update_ack: out boolean;
      read : in  std_logic_vector(0 downto 0);
      read_index : in  std_logic_vector(2 downto 0);
      write : in  std_logic_vector(0 downto 0);
      write_index : in  std_logic_vector(2 downto 0);
      write_mask : in  std_logic_vector(31 downto 0);
      write_data : in  std_logic_vector(2047 downto 0);
      read_regs : out  std_logic_vector(2047 downto 0);
      clk, reset: in std_logic
      -- 
    );
    -- 
   end component register_dual_ported_memory_Operator;


end package;
-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

library ahir;
use ahir.BaseComponents.all;


entity atomic_sample_update_Operator is -- 
  generic (data_width: integer := 33);
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    init : in  std_logic_vector(0 downto 0);
    u : in  std_logic_vector(data_width-1 downto 0);
    data_valid : out  std_logic_vector(0 downto 0);
    data : out  std_logic_vector(data_width-1 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity atomic_sample_update_Operator;
architecture atomic_sample_update_arch of atomic_sample_update_Operator is -- 
	signal joined_sig: boolean;

	signal last_valid: std_logic_vector(0 downto 0);
	signal last_data : std_logic_vector(data_width-1 downto 0);
begin --  
    trig_join: join2 generic map (name => "engine_read_buffer:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);

    sample_ack <= joined_sig;
    process(clk, reset)
    begin
	if(clk'event and clk = '1') then
		if(reset = '1') then
			update_ack <= false;
			data_valid(0) <= '0';
		else
			update_ack <= joined_sig;
			if(joined_sig) then 
				if(init(0) = '1') then
					last_valid(0) <= '0';
					data_valid(0) <= '0';
				else
					last_valid(0) <= '1';
					data_valid(0) <= last_valid(0);
				end if;
				last_data <=  u;
				data <= last_data;
			end if;
		end if;
	end if;
    end process;
end atomic_sample_update_arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

library ahir;
use ahir.BaseComponents.all;

entity atomic_sample_update_33_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    init : in  std_logic_vector(0 downto 0);
    u : in  std_logic_vector(33-1 downto 0);
    data_valid : out  std_logic_vector(0 downto 0);
    data : out  std_logic_vector(33-1 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity atomic_sample_update_33_Operator;
architecture atomic_sample_update_33_Operator_arch of atomic_sample_update_33_Operator is -- 
begin --  

	asu_inst:  atomic_sample_update_Operator
			generic map (data_width => 33)
			port map (
					sample_req => sample_req,
					update_req => update_req,
					sample_ack => sample_ack,
					update_ack => update_ack,
					init => init,
					u => u,
					data_valid => data_valid,
					data => data,
					clk => clk, reset => reset
				);

end atomic_sample_update_33_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;


entity dual_port_1kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(12 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    write_addr : in  std_logic_vector(12 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity dual_port_1kX64_memory_Operator;

architecture dual_port_1kX64_memory_Operator_arch of dual_port_1kX64_memory_Operator is -- 
	signal joined_sig: boolean;	

	-- port 0 for write, port 1 for read.
 	signal enable_0: std_logic;
 	signal enable_1: std_logic;
begin --  

    trig_join: join2 generic map (name => "dual_port_1kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_0 <= '1' when (joined_sig and (write(0) = '1'))  else '0';
    enable_1 <= '1' when (joined_sig and (read(0) = '1'))  else '0';

    -- the base-bank
    bb:  register_file_1w_1r_port 
		generic map (name => "dual_port_1kX64_memory_Operator:bb",
				g_addr_width => 10, g_data_width => 64)
		port map (
	   		datain_0  => write_data,
           		addrin_0  => write_addr(12 downto 3),
           		enable_0  => enable_0,
	   		dataout_1 => read_data,
           		addrin_1  => read_addr(12 downto 3),
           		enable_1  => enable_1,
           		clk => clk, 
           		reset => reset);
			

end dual_port_1kX64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;


entity dual_port_2kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(13 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    write_addr : in  std_logic_vector(13 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity dual_port_2kX64_memory_Operator;

architecture dual_port_2kX64_memory_Operator_arch of dual_port_2kX64_memory_Operator is -- 
	signal joined_sig: boolean;	

	-- port 0 for write, port 1 for read.
 	signal enable_0: std_logic;
 	signal enable_1: std_logic;
begin --  

    trig_join: join2 generic map (name => "dual_port_2kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_0 <= '1' when (joined_sig and (write(0) = '1'))  else '0';
    enable_1 <= '1' when (joined_sig and (read(0) = '1'))  else '0';

    -- the base-bank
    bb:  register_file_1w_1r_port 
		generic map (name => "dual_port_2kX64_memory_Operator:bb",
				g_addr_width => 11, g_data_width => 64)
		port map (
	   		datain_0  => write_data,
           		addrin_0  => write_addr(13 downto 3),
           		enable_0  => enable_0,
	   		dataout_1 => read_data,
           		addrin_1  => read_addr(13 downto 3),
           		enable_1  => enable_1,
           		clk => clk, 
           		reset => reset);
			

end dual_port_2kX64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;


entity dual_port_64x32_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    read : in  std_logic_vector(0 downto 0);
    write : in  std_logic_vector(0 downto 0);
    read_addr  : in  std_logic_vector(7 downto 0); -- 256 bytes.
    read_data : out  std_logic_vector(31 downto 0);
    write_addr : in  std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(31 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity dual_port_64x32_memory_Operator;

architecture dual_port_64x32_memory_Operator_arch of dual_port_64x32_memory_Operator is -- 
	signal joined_sig: boolean;	

	-- port 0 for write, port 1 for read.
 	signal enable_0: std_logic;
 	signal enable_1: std_logic;
begin --  

    trig_join: join2 generic map (name => "dual_port_64x32_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_0 <= '1' when (joined_sig and (write(0) = '1'))  else '0';
    enable_1 <= '1' when (joined_sig and (read(0) = '1'))  else '0';

    -- the base-bank
    bb:  register_file_1w_1r_port 
		generic map (name => "dual_port_64x32_memory_Operator:bb",
				g_addr_width => 6, g_data_width => 32)
		port map (
	   		datain_0  => write_data,
           		addrin_0  => write_addr(7 downto 2),
           		enable_0  => enable_0,
	   		dataout_1 => read_data,
           		addrin_1  => read_addr (7 downto 2),
           		enable_1  => enable_1,
           		clk => clk, 
           		reset => reset);
			

end dual_port_64x32_memory_Operator_arch;
-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;

-----------------------------------------------------------------
-- a simple direct mapped cache with 64 entries.
--    you can change this using the LOG_READ_BUFFER_SIZE 
--    constant in the architecture..
-----------------------------------------------------------------
entity generic_read_buffer is -- 

  generic (log_number_of_entries: integer := 6);
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    -----------------------------------------------------------
    -- Clear the cache.
    -----------------------------------------------------------
    read_buffer_init : in  std_logic_vector(0 downto 0);
    -----------------------------------------------------------
    -- Add an entry to the cache...
    -- 33 bit dword physical address 
    -----------------------------------------------------------
    add_entry   : in  std_logic_vector(0 downto 0);
    add_addr    : in  std_logic_vector(32 downto 0);
    add_dword   : in  std_logic_vector(63 downto 0);
    -----------------------------------------------------------
    -- lookup addr..
    -----------------------------------------------------------
    lookup_addr   : in  std_logic_vector(32 downto 0);
    lookup_hit    : out std_logic_vector(0 downto 0);
    lookup_result : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity generic_read_buffer;

architecture generic_read_buffer_arch of generic_read_buffer is -- 

    -----------------------------------------------------------
    -- 2**LOG_READ_BUFFER_SIZE entries.
    -----------------------------------------------------------
    constant LOG_READ_BUFFER_SIZE : integer := log_number_of_entries;
    constant READ_BUFFER_SIZE : integer := (2**LOG_READ_BUFFER_SIZE);

    -- tag width..
    constant READ_BUFFER_TAG_WIDTH: integer := 33 - LOG_READ_BUFFER_SIZE;

    constant data_width: integer := READ_BUFFER_TAG_WIDTH + 64;

    ---------------------------------------------------------------------------
    -- dual-ported memory interface. 
    ---------------------------------------------------------------------------
    signal mem_write_address: std_logic_vector(LOG_READ_BUFFER_SIZE-1 downto 0);
    signal mem_write_data, ignore_data_0: std_logic_vector(data_width-1 downto 0);
    signal mem_write_enable, mem_write_enable_bar: std_logic;

    signal mem_read_address: std_logic_vector(LOG_READ_BUFFER_SIZE-1 downto 0);
    signal mem_read_address_delayed: std_logic_vector(LOG_READ_BUFFER_SIZE-1 downto 0);
    signal mem_read_data, zero_data_1: std_logic_vector(data_width-1 downto 0);
    signal mem_read_enable: std_logic;
    signal mem_read_enable_reg: std_logic;

    ---------------------------------------------------------------------------
    -- valid entries.
    ---------------------------------------------------------------------------
    signal valids: std_logic_vector(READ_BUFFER_SIZE-1 downto 0);

    signal joined_sig: Boolean;
    signal trigger: std_logic;

    signal lookup_addr_tag: std_logic_vector(READ_BUFFER_TAG_WIDTH-1 downto 0);
    signal trigger_reg  : std_logic;

    signal do_write_to_read_bypass: boolean;
    signal add_entry_reg   : std_logic_vector(0 downto 0);
    signal add_addr_reg    : std_logic_vector(32 downto 0);
    signal add_dword_reg   : std_logic_vector(63 downto 0);
    signal lookup_addr_reg   : std_logic_vector(32 downto 0);
    signal read_buffer_init_reg : std_logic_vector(0 downto 0);

    signal const_one : std_logic;
  
    signal read_buffer_result_prereg, read_buffer_result_reg : std_logic_vector(63 downto 0);
    signal lookup_hit_prereg, lookup_hit_reg: std_logic_vector(0 downto 0);
    signal write_read_clash, write_read_clash_reg : boolean;

begin --  
    zero_data_1 <= (others => '0');
    const_one <= '1';

    trigger <= '1' when joined_sig else '0';

    trig_join: join2 generic map (name => "read_buffer:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
			trigger_reg <= '0';
			write_read_clash_reg <= false;
			add_entry_reg(0) <= '0';
			read_buffer_init_reg(0) <= '0';
		else

			mem_read_address_delayed <= mem_read_address;

			lookup_addr_tag <= lookup_addr(32 downto LOG_READ_BUFFER_SIZE);
			update_ack <= joined_sig;
	
			trigger_reg <= trigger;
			write_read_clash_reg <= write_read_clash;

			add_entry_reg <= add_entry;
			add_addr_reg  <= add_addr;
			add_dword_reg <= add_dword;
			lookup_addr_reg <= lookup_addr;
			read_buffer_init_reg <= read_buffer_init;
		end if;
	end if;
    end process;

    -- index into memory from the bottom bits of add_addr
    mem_write_address <= add_addr ((LOG_READ_BUFFER_SIZE -1) downto 0);

    -- tag & dword.
    mem_write_data    <= add_addr (32 downto LOG_READ_BUFFER_SIZE) & add_dword;
    mem_write_enable  <= (not read_buffer_init(0)) and trigger and add_entry(0);
    mem_write_enable_bar <= not mem_write_enable;

    -- index into memory..
    mem_read_address  <= lookup_addr ((LOG_READ_BUFFER_SIZE -1) downto 0);
    mem_read_enable   <= (not read_buffer_init(0)) and trigger;

    write_read_clash <= joined_sig and (mem_write_address = mem_read_address);

    process(clk, reset)
    begin
        if(clk'event and (clk='1')) then
		if((reset = '1') or ((trigger = '1') and (read_buffer_init(0) = '1'))) then
			valids <= (others => '0');
		else
			if ((trigger = '1') and (add_entry(0) = '1')) then
				valids(to_integer(unsigned(mem_write_address))) <= '1';
			end if;
		end if;
	end if;
    end process;
     
    dpram: base_bank_dual_port
		generic map (name =>  "read_buffer:dpram",
				g_addr_width => LOG_READ_BUFFER_SIZE,
					g_data_width => data_width)
		port map (
			datain_0 => mem_write_data,
			dataout_0 => ignore_data_0,
			addrin_0 => mem_write_address,
			enable_0 => mem_write_enable,
			writebar_0 => mem_write_enable_bar,
			datain_1 => zero_data_1,
			dataout_1 => mem_read_data,
			addrin_1 => mem_read_address,
			enable_1   => mem_read_enable,
			writebar_1 => const_one,
			clk => clk , reset => reset);
			
	-- resolved mem read data 
	do_write_to_read_bypass <= 
		(read_buffer_init_reg(0) = '0') and
				(add_entry_reg(0) = '1') and (add_addr_reg = lookup_addr_reg);

		

	process(valids, trigger_reg, 
				mem_read_address_delayed, 
					add_dword_reg, 
						mem_read_enable_reg,
							mem_read_data, lookup_addr_tag)
		variable result_var: std_logic_vector(63 downto 0);
		variable hit_var: std_logic;
	begin
		result_var := (others => '0');
		hit_var := '0';
		if(do_write_to_read_bypass) then
			result_var := add_dword_reg;
			hit_var := trigger_reg;
		elsif ((mem_read_enable_reg = '1') and
			(valids(to_integer(unsigned(mem_read_address_delayed))) = '1') and
			(mem_read_data((READ_BUFFER_TAG_WIDTH + 63) downto 64) = lookup_addr_tag)) then
			result_var := mem_read_data(63 downto 0);
			hit_var := trigger_reg;
		end if;

		lookup_hit_prereg(0) <= hit_var;
		read_buffer_result_prereg <= result_var;
	end process;

	-- Important: need to maintain the read_buffer result until the next trigger..
	process(clk, reset)
	begin
		if(clk'event and clk = '1') then
			if(reset = '1') then
				read_buffer_result_reg <= (others => '0');
				lookup_hit_reg(0) <= '0';
				mem_read_enable_reg <= '0';
			elsif (trigger_reg = '1') then
				read_buffer_result_reg <= read_buffer_result_prereg;
				lookup_hit_reg <= lookup_hit_prereg;
				mem_read_enable_reg <= mem_read_enable;
			end if;
		end if;
	end process;
	lookup_result <= read_buffer_result_prereg 
				when (trigger_reg = '1') else read_buffer_result_reg;
	lookup_hit <= lookup_hit_prereg when (trigger_reg = '1') else lookup_hit_reg;

end generic_read_buffer_arch;
-- Generic memory for use in proto-board.
--  Uses base_bank.vhd in AHIR.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;


entity generic_single_port_memory is
   generic ( name: string; 
		g_addr_width: natural := 10; 
		g_data_width : natural := 16);
   port (
	   datain : in std_logic_vector(g_data_width-1 downto 0);
           dataout: out std_logic_vector(g_data_width-1 downto 0);
           addrin: in std_logic_vector(g_addr_width-1 downto 0);
           enable: in std_logic;
           writebar : in std_logic;
           clk: in std_logic;
           reset : in std_logic);
end entity generic_single_port_memory;


architecture Mixed of generic_single_port_memory is
begin  -- XilinxBramInfer

	bb: base_bank
			generic map (name => name & "BB",
					g_addr_width => g_addr_width,
					g_data_width => g_data_width)
			port map(
					datain => datain,
					dataout => dataout,
					addrin => addrin,
					enable => enable,
					writebar => writebar,
					clk => clk,
					reset => reset);


end Mixed;
-- Generic memory for use in proto-board.
--  Uses base_bank.vhd in AHIR.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;


entity generic_single_port_memory_with_byte_mask is
   generic ( name: string; 
		g_addr_width: natural := 10; 
		g_data_width : natural := 16);
   port (
	   datain : in std_logic_vector(g_data_width-1 downto 0);
           dataout: out std_logic_vector(g_data_width-1 downto 0);
           addrin: in std_logic_vector(g_addr_width-1 downto 0);
	   byte_mask: in std_logic_vector((g_data_width/8)-1 downto 0);
           enable: in std_logic;
           writebar : in std_logic;
           clk: in std_logic;
           reset : in std_logic);
end entity generic_single_port_memory_with_byte_mask;


architecture Mixed of generic_single_port_memory_with_byte_mask is
begin  -- XilinxBramInfer
    bankgen: for B in ((g_data_width/8)-1) downto 0 generate
      bgen_block: block 
        signal local_enable : std_logic;
      begin
        local_enable <= enable and (writebar or byte_mask(B));

	bb: base_bank
			generic map (name => name & "BB:" & Convert_To_String(B),
					g_addr_width => g_addr_width,
					g_data_width => 8)
			port map(
					datain  => datain((((B+1)*8)-1) downto (B*8)),
					dataout => dataout((((B+1)*8)-1) downto (B*8)),
					addrin  => addrin,
					enable  => local_enable,
					writebar => writebar,
					clk     => clk,
					reset   => reset);

      end block bgen_block;
   end generate bankgen;
end Mixed;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

-----------------------------------------------------------------
-- a simple direct mapped cache with 64 entries.
--    you can change this using the LOG_READ_BUFFER_SIZE 
--    constant in the architecture..
-----------------------------------------------------------------
entity read_buffer_64_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    -----------------------------------------------------------
    -- Clear the cache.
    -----------------------------------------------------------
    read_buffer_init : in  std_logic_vector(0 downto 0);
    -----------------------------------------------------------
    -- Add an entry to the cache...
    -- 33 bit dword physical address 
    -----------------------------------------------------------
    add_entry   : in  std_logic_vector(0 downto 0);
    add_addr    : in  std_logic_vector(32 downto 0);
    add_dword   : in  std_logic_vector(63 downto 0);
    -----------------------------------------------------------
    -- lookup addr..
    -----------------------------------------------------------
    lookup_addr   : in  std_logic_vector(32 downto 0);
    lookup_hit    : out std_logic_vector(0 downto 0);
    lookup_result : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity read_buffer_64_Operator;

architecture Pmap of read_buffer_64_Operator is
begin
	base_inst: generic_read_buffer
			generic map (log_number_of_entries => 8)
			port map (
    				sample_req,
    				sample_ack,
    				update_req,
    				update_ack,
    				-----------------------------------------------------------
    				-- Clear the cache.
    				-----------------------------------------------------------
    				read_buffer_init ,
    				-----------------------------------------------------------
    				-- Add an entry to the cache...
    				-- 33 bit dword physical address 
    				-----------------------------------------------------------
    				add_entry   ,
    				add_addr    ,
    				add_dword   ,
    				-----------------------------------------------------------
    				-- lookup addr..
    				-----------------------------------------------------------
    				lookup_addr   ,
    				lookup_hit    ,
    				lookup_result ,
    				clk, reset);
			
end Pmap;

library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

entity single_port_1kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 1k dwords..= 8KB
    byte_addr : in  std_logic_vector(12 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_1kX64_memory_Operator;

architecture single_port_1kX64_memory_Operator_arch of single_port_1kX64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable_sig: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_1kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_sig <= '1' when ((enable(0) = '1') and joined_sig) else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_1kX64_memory_Operator:bb",
				g_addr_width => 10, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(12 downto 3),
           		enable => enable_sig,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_1kX64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

entity single_port_256X64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 256 dwords..= 2KB
    byte_addr : in  std_logic_vector(10 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_256X64_memory_Operator;

architecture single_port_256X64_memory_Operator_arch of single_port_256X64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable_sig: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_2kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_sig <= '1' when ((enable(0) = '1') and joined_sig) else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_256X64_memory_Operator:bb",
				g_addr_width => 8, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(10 downto 3),
           		enable => enable_sig,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_256X64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

entity single_port_2kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 2K dwords..= 16KB
    byte_addr : in  std_logic_vector(13 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_2kX64_memory_Operator;

architecture single_port_2kX64_memory_Operator_arch of single_port_2kX64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_2kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable <= '1' when joined_sig else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_2kX64_memory_Operator:bb",
				g_addr_width => 11, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(13 downto 3),
           		enable => enable,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_2kX64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;


entity single_port_4kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    -- 4K dwords..= 32KB
    byte_addr : in  std_logic_vector(14 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_4kX64_memory_Operator;

architecture single_port_4kX64_memory_Operator_arch of single_port_4kX64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_4kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable <= '1' when joined_sig else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_4kX64_memory_Operator:bb",
				g_addr_width => 12, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(14 downto 3),
           		enable => enable,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_4kX64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

entity single_port_512X64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    enable : in  std_logic_vector(0 downto 0);
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 512 dwords..= 4KB
    byte_addr : in  std_logic_vector(11 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_512X64_memory_Operator;

architecture single_port_512X64_memory_Operator_arch of single_port_512X64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable_sig: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_2kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable_sig <= '1' when ((enable(0) = '1') and joined_sig) else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_512X64_memory_Operator:bb",
				g_addr_width => 9, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(11 downto 3),
           		enable => enable_sig,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_512X64_memory_Operator_arch;
library std;
use std.textio.all;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;
use ahir.mem_component_pack.all;
use ahir.Utilities.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

entity single_port_8kX64_memory_Operator is -- 
  port ( -- 
    sample_req: in boolean;
    sample_ack: out boolean;
    update_req: in boolean;
    update_ack: out boolean;
    rwbar : in  std_logic_vector(0 downto 0);
    byte_mask: in std_logic_vector(7 downto 0);
    -- 8K dwords..= 64KB
    byte_addr : in  std_logic_vector(15 downto 0);
    write_data : in  std_logic_vector(63 downto 0);
    read_data : out  std_logic_vector(63 downto 0);
    clk, reset: in std_logic
    -- 
  );
  -- 
end entity single_port_8kX64_memory_Operator;

architecture single_port_8kX64_memory_Operator_arch of single_port_8kX64_memory_Operator is -- 
	signal joined_sig: boolean;	
 	signal enable: std_logic;
begin --  

    trig_join: join2 generic map (name => "single_port_8kx64_memory_Operator:trig-join", bypass => true)
			port map (pred0 => sample_req, pred1 => update_req,
					symbol_out => joined_sig, clk => clk, reset => reset);
   
    sample_ack <= joined_sig;

    process(clk, reset)
    begin
	if(clk'event and clk='1') then
		if(reset = '1') then
			update_ack <= false;
		else
			update_ack <= joined_sig;
		end if;
	end if;
    end process;

    enable <= '1' when joined_sig else '0';

    -- the base-bank
    bb:  generic_single_port_memory_with_byte_mask
		generic map (name => "single_port_8kX64_memory_Operator:bb",
				g_addr_width => 13, g_data_width => 64)
		port map (
	   		datain => write_data,
           		dataout => read_data,
			-- dword address!
           		addrin => byte_addr(15 downto 3),
           		enable => enable,
           		writebar => rwbar(0),
			byte_mask => byte_mask,
           		clk => clk, 
           		reset => reset);
			

end single_port_8kX64_memory_Operator_arch;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.mem_component_pack.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;


entity genericFullyAssociativeMemoryNoDataWithErase is
	generic (tag_width: integer := 8; log_number_of_entries: integer := 6);
	port (  start_req: in std_logic;
		start_ack: out std_logic;
		fin_req: in std_logic;
		fin_ack: out std_logic;

		-- clear all valids.
		clear_flag: in std_logic_vector(0 downto 0);

		-- add entry
		erase_flag: in std_logic_vector(0 downto 0);
		write_flag: in std_logic_vector(0 downto 0);
		erase_tag : in std_logic_vector(tag_width-1 downto 0);
		write_tag : in std_logic_vector(tag_width-1 downto 0);

		-- lookup entry
		lookup_flag: in std_logic_vector(0 downto 0);
		lookup_tag : in std_logic_vector(tag_width-1 downto 0);
		lookup_valid: out std_logic_vector(0 downto 0);

		clk,reset: in std_logic);

end entity genericFullyAssociativeMemoryNoDataWithErase;


architecture genericFullyAssociativeMemoryNoDataWithEraseArch of genericFullyAssociativeMemoryNoDataWithErase is


	signal last_written_index: integer range 0 to (2**log_number_of_entries);

	signal valids_vector : std_logic_vector((2**log_number_of_entries)-1 downto 0);
	signal tags_vector   : std_logic_vector((2**log_number_of_entries)*tag_width-1 downto 0);

	subtype TagWord is std_logic_vector(tag_width-1 downto 0);
	type TagWordArray is array (natural range <> ) of TagWord;
	function tagArrayToVector (x: TagWordArray) 
		return std_logic_vector is
		alias twa : TagWordArray((2**log_number_of_entries)-1 downto 0) is x;
		variable ret_var : std_logic_vector((2**log_number_of_entries)*tag_width -1 downto 0);
	begin
		for I in 0 to (2**log_number_of_entries)-1 loop
			ret_var(((I+1)*tag_width)-1 downto (I*tag_width)) := twa(I);
		end loop;
		return(ret_var);
	end function;
	function tagVectorToArray (x: std_logic_vector) return TagWordArray is
		alias tx : std_logic_vector((2**log_number_of_entries)*tag_width - 1 downto 0) is x;
		variable ret_var: TagWordArray((2**log_number_of_entries-1) downto 0);
	begin
		for I in 0 to (2**log_number_of_entries)-1 loop
			 ret_var(I) := tx(((I+1)*tag_width)-1 downto (I*tag_width));
		end loop;
		return(ret_var);
	end function;
		

	type FsmState is (IDLE, DONE_WAIT);
	signal fsm_state: FsmState;

	signal lookup_match_index, erase_match_index, write_match_index: 
					integer range 0 to (2**log_number_of_entries);
	signal lookup_valid_reg: std_logic;

	function matchTag (tags: std_logic_vector; ltag: std_logic_vector; valids: std_logic_vector; W: integer) 
		return integer is
		variable ret_var: integer;

		alias ltags: std_logic_vector((W*tag_width)-1 downto 0) is tags;
		alias lltag: std_logic_vector(tag_width-1 downto 0) is ltag;
		alias lvalids: std_logic_vector(W-1 downto 0) is valids;
		variable lret_var, rret_var: integer;
	begin
		ret_var := -1;

		if(W = 1) then
			if((lvalids(0) = '1') and (ltags = lltag)) then
				ret_var := 0;
			end if;
		else 
			rret_var := matchTag(ltags((W*tag_width)-1 downto (W/2)*tag_width), ltag, 
								lvalids (W-1 downto W/2), W - (W/2));
			lret_var := matchTag(ltags(((W/2)*tag_width)-1 downto 0), ltag, 
								lvalids ((W/2)-1 downto 0), W/2);
			if(rret_var >= 0) then
				ret_var := rret_var + W - (W/2);
			elsif (lret_var >= 0) then
				ret_var := lret_var;
			end if;
		end if;
		return ret_var;
	end matchTag;

	function findMatchIndex (tags: std_logic_vector; valids: std_logic_vector; search_tag: std_logic_vector)
		return integer is
		variable ret_var: integer range 0 to (2**log_number_of_entries);
		variable T: integer;
		alias ltags: std_logic_vector((tag_width*(2**log_number_of_entries))-1 downto 0) is tags;
		alias lvalids: std_logic_vector((2**log_number_of_entries)-1 downto 0) is valids;
		alias llookup_tag: std_logic_vector(tag_width-1 downto 0) is search_tag;
	begin
		ret_var := (2**log_number_of_entries);
		for I in 0 to  (2**log_number_of_entries)-1 loop
			if(lvalids(I) = '1') then
				if(ltags(((I+1)*tag_width)-1 downto (I*tag_width)) = search_tag) then
					ret_var := I;
					exit;
				end if;
			end if;
		end loop;
		return ret_var;
	end function;

						
	function IncrementWriteIndex(last_windex: integer) 
		return integer is
		variable ret_var: integer range 0 to (2**log_number_of_entries);
	begin

		if(last_windex >= ((2**log_number_of_entries) - 1)) then
			ret_var := 0;
		else
			ret_var := last_windex + 1;
		end if;	
		return (ret_var);

	end function;

begin

   erase_match_index   <= findMatchIndex (tags_vector, valids_vector, erase_tag);
   lookup_match_index  <= findMatchIndex (tags_vector, valids_vector, lookup_tag);
   write_match_index   <= findMatchIndex (tags_vector, valids_vector, write_tag);
   
   process(fsm_state, clear_flag, 
			erase_flag, 
			lookup_flag, 
			write_flag, 
			erase_match_index,
			lookup_match_index, 
			write_match_index,
			start_req, fin_req, 
			clk, reset)
	variable next_fsm_state_var : FsmState;
	variable next_valids_var : std_logic_vector((2**log_number_of_entries)-1 downto 0);
	variable next_tags_var: TagWordArray((2**log_number_of_entries-1) downto 0);
	variable next_lookup_valid_var: std_logic;
	variable sample_write_inputs_var : boolean;
	variable next_last_written_index_var: integer range 0 to (2**log_number_of_entries);
	variable start_ack_var, fin_ack_var: std_logic;
   begin
	next_fsm_state_var := fsm_state;
	next_valids_var    := valids_vector;
	next_lookup_valid_var := lookup_valid_reg;

	next_tags_var := tagVectorToArray(tags_vector);
	next_last_written_index_var := last_written_index;

	sample_write_inputs_var := false;



	fin_ack_var := '0';
	start_ack_var := '0';


	if(fsm_state = DONE_WAIT) then
		fin_ack_var := '1';
	end if;

	if((fsm_state = IDLE) or (fin_req = '1'))  then 

		-- can start again
	  	start_ack_var := '1';
	  	if(start_req = '1') then  
			next_lookup_valid_var := '0';

		  	-- clear flag: clear all valids.
		  	if(clear_flag(0) = '1') then
				next_valids_var := (others => '0');
		  	end if;
	
		  	-- erase flag: clear the write tag entry.
		  	if(erase_flag(0) = '1') then
			  	if(erase_match_index < (2**log_number_of_entries)) then
					next_valids_var(erase_match_index) := '0';
			  	end if;
		  	end if;
	
		  	-- lookup?  read the data if there is a match.
  		  	if(lookup_flag(0) = '1') then
			  	if(lookup_match_index < (2**log_number_of_entries)) then
				  	next_lookup_valid_var := '1';
			  	end if;
			end if;

		  	if((write_flag(0) = '1') and (write_match_index >= (2**log_number_of_entries))) then
				-- write in a new entry.
			  	next_last_written_index_var := IncrementWriteIndex(last_written_index);
			  	next_valids_var(next_last_written_index_var) := '1';
			  	next_tags_var(next_last_written_index_var) := write_tag;
		  	end if;
			next_fsm_state_var := DONE_WAIT;

	  	else -- if (start_req = '0')
			-- could have started again, but no start_req present.
			next_fsm_state_var := IDLE;
	  	end if;
	else 
		-- (fsm_state = DONE) and (fin_req = '0')
		next_fsm_state_var := DONE_WAIT;
	end if;

	start_ack <= start_ack_var;
	fin_ack   <= fin_ack_var;

	if(clk'event and (clk = '1')) then
		if(reset = '1') then
			fsm_state <= IDLE;
			valids_vector <= (others => '0');
			tags_vector <= (others => '0');
			last_written_index <= (2**log_number_of_entries);
			lookup_valid_reg <= '0';
		else
			fsm_state <= next_fsm_state_var;
			lookup_valid_reg <= next_lookup_valid_var;
			valids_vector <= next_valids_var;
			tags_vector   <= tagArrayToVector(next_tags_var);
			last_written_index <= next_last_written_index_var;
		end if;
	end if;
   end process;

   lookup_valid(0) <= lookup_valid_reg;

end genericFullyAssociativeMemoryNoDataWithEraseArch;

		
	
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.BaseComponents.all;

library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;

-- a generic fully associative memory for use in the MMU TLB.
entity genericFullyAssociativeMemoryNoDataWithErase_Operator is
	generic (tag_width: integer := 8; log_number_of_entries: integer := 6);
	port (  sample_req: in boolean;
		sample_ack: out boolean;
		update_req: in boolean;
		update_ack: out boolean;

		-- clear all valids.
		clear_flag: in std_logic_vector(0 downto 0);

		erase_flag: in std_logic_vector(0 downto 0);
		erase_tag : in std_logic_vector(tag_width-1 downto 0);
		-- add entry
		write_flag: in std_logic_vector(0 downto 0);
		write_tag : in std_logic_vector(tag_width-1 downto 0);

		-- lookup entry
		lookup_flag: in std_logic_vector(0 downto 0);
		lookup_tag : in std_logic_vector(tag_width-1 downto 0);
		lookup_valid: out std_logic_vector(0 downto 0);

		clk,reset: in std_logic);

end entity genericFullyAssociativeMemoryNoDataWithErase_Operator;


architecture simpleTon of genericFullyAssociativeMemoryNoDataWithErase_Operator is
	signal start_req, start_ack: std_logic;
	signal fin_req, fin_ack: std_logic;
	signal br_lookup_valid: std_logic_vector(0 downto 0);

   	signal update_ack_sig: boolean;

begin

   p2l: Sample_Pulse_To_Level_Translate_Entity
                generic map(name => "genericFullyAssociativeMemoryNoData-Operator-p2l")
                port map (rL => sample_req, rR => start_req,
                                aL => sample_ack, aR => start_ack,
                                        clk => clk, reset => reset);
   l2p: Level_To_Pulse_Translate_Entity
		generic map(name => "genericFullyAssociativeMemoryNoData-Operator-l2p")
		port map (rL => fin_req, rR => update_req,
				aL => fin_ack, aR => update_ack_sig, clk => clk, reset => reset);


   update_ack <= update_ack_sig;


   br: BypassRegister 
		generic map(data_width => 1, bypass => true)
		port map (clk => clk, reset => reset, din => br_lookup_valid, enable => update_ack_sig, 
					q => lookup_valid);

   bmem: genericFullyAssociativeMemoryNoDataWithErase
			generic map (tag_width => tag_width, 
					log_number_of_entries => log_number_of_entries)
			port map (
				start_req => start_req,
				start_ack => start_ack,
				fin_req =>   fin_req,
				fin_ack =>   fin_ack,
    				clear_flag => clear_flag,
    				write_flag => write_flag,
				write_tag => write_tag,
				erase_flag => erase_flag,
				erase_tag => erase_tag,
				lookup_flag => lookup_flag,
				lookup_tag => lookup_tag,
    				lookup_valid => br_lookup_valid,
    				clk => clk, reset => reset);

end simpleTon;

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library AjitHpcAccel;
use AjitHpcAccel.AjitHpcAccelComponents.all;
use AjitHpcAccel.AjitHpcAccelConfigurationPackage.all;

entity snoopFilterHpcAccelQcore_Operator is
  port ( -- 
    	sample_req: in boolean;
    	sample_ack: out boolean;
    	update_req: in boolean;
    	update_ack: out boolean;
	init: in std_logic_vector(0 downto 0);
	erase: in std_logic_vector(0 downto 0);
	write: in std_logic_vector(0 downto 0);
        read_pa_tag:  in std_logic_vector(29 downto 0);
        inv_pa_tag:  in std_logic_vector(29 downto 0);
	send_inval: out std_logic_vector(0 downto 0);
        clk, reset: in std_logic);
end entity;


architecture Wrapper of snoopFilterHpcAccelQcore_Operator is
	signal zero_sig: std_logic_vector(0 downto 0);
	signal lookup, tlb_hit : std_logic_vector(0 downto 0);
	signal sample_ack_sig: boolean;

	signal send_inval_sig, send_inval_reg: std_logic_vector(0 downto 0);
begin
	sample_ack <= sample_ack_sig;
	lookup(0) <= '1';

	basemem:genericFullyAssociativeMemoryNoDataWithErase_Operator
			generic map(tag_width => 30, 
					log_number_of_entries => SNOOP_CACHE_LOG_MEMORY_SIZE)
			port map(
					sample_req => sample_req,
					sample_ack => sample_ack_sig,
					update_req => update_req,
					update_ack => update_ack,
					clear_flag => init,
					erase_flag => erase,
					write_flag => write,
					erase_tag  => read_pa_tag,
					write_tag  => inv_pa_tag,
					lookup_flag  => lookup,
					lookup_tag   => inv_pa_tag,
					lookup_valid => tlb_hit,
					clk => clk, reset => reset);

	send_inval <= (not tlb_hit);

end Wrapper;

-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;

entity reg_to_exec_mux_daemon is  -- system 
  generic (tag_length : integer := 1); 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic;
    noblock_teu_register_file_to_exec_0_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_0_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_0_pipe_read_data : in   std_logic_vector(2381 downto 0);
    noblock_teu_register_file_to_exec_1_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_1_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_1_pipe_read_data : in   std_logic_vector(2381 downto 0);
    noblock_teu_register_file_to_exec_2_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_2_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_2_pipe_read_data : in   std_logic_vector(2381 downto 0);
    noblock_teu_register_file_to_exec_3_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_3_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_3_pipe_read_data : in   std_logic_vector(2381 downto 0);
    noblock_teu_register_file_to_exec_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_register_file_to_exec_pipe_write_data : out  std_logic_vector(2381 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) );
  -- 
end entity; 
architecture reg_to_exec_mux_daemon_arch  of reg_to_exec_mux_daemon is -- system-architecture 
	signal reg_file_ready_to_accept: boolean;
	signal v0, v1, v2, v3: boolean;
	signal go_0, go_1, go_2, go_3: boolean;

	signal priority_requester : std_logic_vector (1 downto 0);

    	signal z2382: std_logic_vector(2381 downto 0);
begin -- 
	z2382 <= (others => '0');

	------------------------------------------------------------------------------------
	-- dummy interface.
	------------------------------------------------------------------------------------
	tag_out <= tag_in;
	-- always start.
	start_ack <= '1';
	-- never fin.
	fin_ack   <= '0';


	reg_file_ready_to_accept <= (noblock_teu_register_file_to_exec_pipe_write_ack(0) = '1');

	v0 <=  (noblock_teu_register_file_to_exec_0_pipe_read_data(2381) = '1') and 
	       				(noblock_teu_register_file_to_exec_0_pipe_read_ack(0) = '1');

	v1 <=  (noblock_teu_register_file_to_exec_1_pipe_read_data(2381) = '1') and 
	       				(noblock_teu_register_file_to_exec_1_pipe_read_ack(0) = '1');

	v2 <=  (noblock_teu_register_file_to_exec_2_pipe_read_data(2381) = '1') and 
	       				(noblock_teu_register_file_to_exec_2_pipe_read_ack(0) = '1');

	v3 <=  (noblock_teu_register_file_to_exec_3_pipe_read_data(2381) = '1') and 
	       				(noblock_teu_register_file_to_exec_3_pipe_read_ack(0) = '1');

	-- priority fsm
	process(clk, reset, v0, v1, v2, v3, priority_requester, reg_file_ready_to_accept)
		variable go_0_var, go_1_var, go_2_var, go_3_var: boolean;
		variable next_priority_requester_var : std_logic_vector (1 downto 0);
	begin
		go_0_var := false; go_1_var := false; go_2_var := false; go_3_var := false;
		next_priority_requester_var := priority_requester;

		if(reg_file_ready_to_accept) then 
		    case priority_requester is
			when "00" =>
				go_0_var := v0;
				go_1_var := v1 and (not v0);
				go_2_var := v2 and (not v0) and (not v1);
				go_3_var := v3 and (not v0) and (not v1) and (not v2);

				if(go_0_var) then
					next_priority_requester_var := "01";
				end if;
			when "01" => 
				go_0_var := v0 and (not v1) and (not v2) and (not v3);
				go_1_var := v1;
				go_2_var := v2 and (not v1);
				go_3_var := v3 and (not v1) and (not v2);

				if(go_1_var) then
					next_priority_requester_var := "10";
				end if;
			when "10" => 
				go_0_var := v0 and (not v2) and (not v3);
				go_1_var := v1 and (not v2) and (not v3) and (not v0);
				go_2_var := v2;
				go_3_var := v3 and (not v2);
				if(go_2_var) then
					next_priority_requester_var := "11";
				end if;
			when "11" => 
				go_0_var := v0 and (not v3);
				go_1_var := v1 and (not v3) and (not v0);
				go_2_var := v2 and (not v3) and (not v0) and (not v1);
				go_3_var := v3;
				if(go_3_var) then
					next_priority_requester_var := "00";
				end if;
			when others =>
				null;
		    end case;
		end if;

		go_0 <= go_0_var;
		go_1 <= go_1_var;
		go_2 <= go_2_var;
		go_3 <= go_3_var;

		if(clk'event and (clk = '1')) then
			if(reset = '1') then
				priority_requester <= "00";
			else 
				priority_requester <= next_priority_requester_var;
			end if;
		end if;
	end process;

	noblock_teu_register_file_to_exec_0_pipe_read_req(0) <= '1' when go_0 else '0';
	noblock_teu_register_file_to_exec_1_pipe_read_req(0) <= '1' when go_1 else '0';
	noblock_teu_register_file_to_exec_2_pipe_read_req(0) <= '1' when go_2 else '0';
	noblock_teu_register_file_to_exec_3_pipe_read_req(0) <= '1' when go_3 else '0';

	noblock_teu_register_file_to_exec_pipe_write_req(0) <= '1' when (go_0 or go_1 or go_2 or go_3) else '0';
	noblock_teu_register_file_to_exec_pipe_write_data <= 
						   noblock_teu_register_file_to_exec_0_pipe_read_data when go_0 
						    else noblock_teu_register_file_to_exec_1_pipe_read_data when go_1 
						    else noblock_teu_register_file_to_exec_2_pipe_read_data when go_2 
						    else noblock_teu_register_file_to_exec_3_pipe_read_data when go_3 
						    else z2382;
       		

end reg_to_exec_mux_daemon_arch;
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
use ahir.mem_component_pack.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;

entity register_dual_ported_memory_Operator is -- 
	port (  
		     sample_req: in boolean;
		     sample_ack: out boolean;
		     update_req: in boolean;
		     update_ack: out boolean;
		     read : in  std_logic_vector(0 downto 0);
		     read_index : in  std_logic_vector(2 downto 0);
		     write : in  std_logic_vector(0 downto 0);
		     write_index : in  std_logic_vector(2 downto 0);
		     write_mask : in  std_logic_vector(31 downto 0);
		     write_data : in  std_logic_vector(2047 downto 0);
		     read_regs : out  std_logic_vector(2047 downto 0);
	clk, reset: in std_logic);
end entity register_dual_ported_memory_Operator;

architecture register_dual_ported_memory_Operator_arch of register_dual_ported_memory_Operator is -- 

	signal mem_write_data, mem_read_data: std_logic_vector (2047 downto 0);
	signal joined_sig: boolean;	
	signal trigger: std_logic;
	signal bypass_write_to_read: boolean;

	constant data_width: integer := 64;
	constant addr_width: integer := 2;


begin --  

	trig_join: join2 generic map (name => "register_dual_ported_memory:trig-join", bypass => true)
	port map (pred0 => sample_req, pred1 => update_req,
		  symbol_out => joined_sig, clk => clk, reset => reset);

	-- trigger
	trigger <= '1' when joined_sig else '0';

	-- sample-ack (no delay)
	sample_ack <= joined_sig;

	-- update-ack (unit delay)
	process(clk, reset, joined_sig)
	begin
		if (clk'event and (clk = '1')) then
			if (reset = '1') then
				update_ack <= false;
			else 
				update_ack <= joined_sig;
			end if;
		end if;
	end process;


	-- bypass condition across all regs.
	bypass_write_to_read <= (read(0) = '1') and (write(0) = '1') and (read_index(1 downto 0) = write_index(1 downto 0));

	-- mem write data
	mem_write_data <= write_data;

	-- port 0 for read, port 1 for write..
	gen: for B in 0 to 31 generate
		blk: block
			signal enable_0, enable_1: std_logic;
			signal bypassed_data_reg : std_logic_vector (63 downto 0);
			signal use_bypassed, use_bypassed_reg : boolean;
			signal RZ64: std_logic_vector(63 downto 0);
			signal One1, Zero1: std_logic;
		begin
			RZ64 <= (others => '0');
			One1 <= '1';
			Zero1 <= '0';
			enable_0 <= trigger and read(0);
			enable_1 <= trigger and write(0) and write_mask(B);

			-- apply bypass only if write-mask is '1'.
			use_bypassed  <= bypass_write_to_read and (write_mask(B) = '1');


			-- base bank 
			bb: base_bank_dual_port
			generic map (name => "BB", g_addr_width => 2, g_data_width => 64)
			port map (
					 datain_0   => RZ64,
					 dataout_0  => mem_read_data (((B+1)*data_width)-1 downto (B*data_width)),
					 addrin_0   => read_index(1 downto 0),
					 enable_0   => enable_0,
					 writebar_0 => One1,
					 datain_1   => mem_write_data (((B+1)*data_width)-1 downto (B*data_width)),
					 dataout_1  => open,
					 addrin_1   => write_index (1 downto 0),
					 writebar_1 => Zero1,
					 enable_1   => enable_1,
					 clk => clk,
					 reset => reset);

			-- bypass path..
			process (clk, reset, use_bypassed, mem_write_data)
			begin
				if(clk'event and (clk = '1')) then
					if (reset = '1') then
						use_bypassed_reg <= false;
						bypassed_data_reg <= (others => '0');
					elsif (trigger = '1') then
						use_bypassed_reg <= use_bypassed;
						if(use_bypassed) then 
							bypassed_data_reg <= mem_write_data (((B+1)*data_width)-1 downto (B*data_width));
						end if;
					end if;
				end if;
			end process; 

				-- select path..
			read_regs (((B+1)*data_width)-1 downto (B*data_width)) <= 
				bypassed_data_reg when use_bypassed_reg else
					mem_read_data (((B+1)*data_width)-1 downto (B*data_width));
		end block blk;
	end generate gen;

end register_dual_ported_memory_Operator_arch;
-- VHDL global package produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exec_to_reg_demux_daemon is  -- system 
  generic (tag_length : integer := 1);
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic;
    noblock_teu_exec_to_write_back_pipe_read_req : out  std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_pipe_read_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_pipe_read_data : in   std_logic_vector(360 downto 0);
    noblock_teu_exec_to_write_back_thread_1_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_1_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_1_pipe_write_data : out  std_logic_vector(360 downto 0);
    noblock_teu_exec_to_write_back_thread_0_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_0_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_0_pipe_write_data : out  std_logic_vector(360 downto 0);
    noblock_teu_exec_to_write_back_thread_2_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_2_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_2_pipe_write_data : out  std_logic_vector(360 downto 0);
    noblock_teu_exec_to_write_back_thread_3_pipe_write_req : out  std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_3_pipe_write_ack : in   std_logic_vector(0 downto 0);
    noblock_teu_exec_to_write_back_thread_3_pipe_write_data : out  std_logic_vector(360 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0));
  -- 
end entity; 
architecture exec_to_reg_demux_daemon_arch  of exec_to_reg_demux_daemon is -- system-architecture 
	signal d0_ready, d1_ready, d2_ready, d3_ready: boolean;
	signal src_ready: boolean;
	signal src_to_0, src_to_1, src_to_2, src_to_3: boolean;

	signal do_transfer: boolean;
	signal z361 : std_logic_vector(360 downto 0);

	signal tid: std_logic_vector (1 downto 0);
begin -- 
	-- stub interface..
    	start_ack <= '1';
    	fin_ack   <= '0';
	tag_out <= tag_in;

	z361 <= (others => '0');
	tid <= noblock_teu_exec_to_write_back_pipe_read_data(358 downto 357);

	d0_ready <= (noblock_teu_exec_to_write_back_thread_0_pipe_write_ack(0) = '1');
	d1_ready <= (noblock_teu_exec_to_write_back_thread_1_pipe_write_ack(0) = '1');
	d2_ready <= (noblock_teu_exec_to_write_back_thread_2_pipe_write_ack(0) = '1');
	d3_ready <= (noblock_teu_exec_to_write_back_thread_3_pipe_write_ack(0) = '1');

	src_ready <= (noblock_teu_exec_to_write_back_pipe_read_ack(0) = '1') and 
		     	(noblock_teu_exec_to_write_back_pipe_read_data(360) = '1');

	src_to_0 <= src_ready and (tid = "00");
	src_to_1 <= src_ready and (tid = "01");
	src_to_2 <= src_ready and (tid = "10");
	src_to_3 <= src_ready and (tid = "11");

	do_transfer <= (src_to_0 and d0_ready) or (src_to_1 and d1_ready) or (src_to_2 and d2_ready) or (src_to_3 and d3_ready);
	noblock_teu_exec_to_write_back_pipe_read_req(0) <= '1' when do_transfer else '0';

	noblock_teu_exec_to_write_back_thread_0_pipe_write_data <= 
					noblock_teu_exec_to_write_back_pipe_read_data when src_to_0 else z361;
	noblock_teu_exec_to_write_back_thread_0_pipe_write_req(0) <= '1' when src_to_0 else '0';

	noblock_teu_exec_to_write_back_thread_1_pipe_write_data <= 
					noblock_teu_exec_to_write_back_pipe_read_data when src_to_1 else z361;
	noblock_teu_exec_to_write_back_thread_1_pipe_write_req(0) <= '1' when src_to_1 else '0';
		     	
	noblock_teu_exec_to_write_back_thread_2_pipe_write_data <= 
					noblock_teu_exec_to_write_back_pipe_read_data when src_to_2 else z361;
	noblock_teu_exec_to_write_back_thread_2_pipe_write_req(0) <= '1' when src_to_2 else '0';

	noblock_teu_exec_to_write_back_thread_3_pipe_write_data <= 
					noblock_teu_exec_to_write_back_pipe_read_data when src_to_3 else z361;
	noblock_teu_exec_to_write_back_thread_3_pipe_write_req(0) <= '1' when src_to_3 else '0';

end exec_to_reg_demux_daemon_arch;
