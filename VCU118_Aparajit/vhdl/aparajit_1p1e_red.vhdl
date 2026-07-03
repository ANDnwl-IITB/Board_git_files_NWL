library ieee;
use ieee.std_logic_1164.all;
package aparajit_1p1e_red_Type_Package is -- 
  subtype unsigned_0_downto_0 is std_logic_vector(0 downto 0);
  subtype unsigned_32_downto_0 is std_logic_vector(32 downto 0);
  subtype unsigned_74_downto_0 is std_logic_vector(74 downto 0);
  subtype unsigned_31_downto_0 is std_logic_vector(31 downto 0);
  subtype unsigned_7_downto_0 is std_logic_vector(7 downto 0);
  subtype unsigned_15_downto_0 is std_logic_vector(15 downto 0);
  subtype unsigned_1_downto_0 is std_logic_vector(1 downto 0);
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
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity setConstants is  -- 
  port (-- 
    sz32: out std_logic_vector(31 downto 0);
    sz8: out std_logic_vector(7 downto 0);
    clk, reset: in std_logic); --
  --
end entity setConstants;
architecture rtlThreadArch of setConstants is --
  type ThreadState is (s_sc_rst_state);
  signal current_thread_state : ThreadState;
  signal sz32_buffer: unsigned_31_downto_0;
  signal sz8_buffer: unsigned_7_downto_0;
  --
begin -- 
  sz32 <= sz32_buffer;
  sz8 <= sz8_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable n_e_x_t_sz32: unsigned_31_downto_0;
    variable n_e_x_t_sz8: unsigned_7_downto_0;
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations for output buffer ..... 
    n_e_x_t_sz32 := sz32_buffer;
    -- default initializations for output buffer ..... 
    n_e_x_t_sz8 := sz8_buffer;
    -- default initializations... 
    --  sz32 :=  ( $unsigned<32> )  00000000000000000000000000000000 
    n_e_x_t_sz32 := "00000000000000000000000000000000";
    --  sz8 :=  ( $unsigned<8> )  00000000 
    n_e_x_t_sz8 := "00000000";
    -- case statement 
    case current_thread_state is -- 
      when s_sc_rst_state => -- 
        next_thread_state := s_sc_rst_state;
        next_thread_state := s_sc_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_sc_rst_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        sz32_buffer <= n_e_x_t_sz32;
        sz8_buffer <= n_e_x_t_sz8;
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity setDcacheBypassEnable is  -- 
  port (-- 
    enable: out std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity setDcacheBypassEnable;
architecture rtlThreadArch of setDcacheBypassEnable is --
  type ThreadState is (s_scar_rst_state);
  signal current_thread_state : ThreadState;
  signal enable_buffer: unsigned_0_downto_0;
  --
begin -- 
  enable <= enable_buffer;
  process(clk, reset, current_thread_state ) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  enable :=  ( $unsigned<1> )  1 
    enable_buffer <= "1";
    -- case statement 
    case current_thread_state is -- 
      when s_scar_rst_state => -- 
        next_thread_state := s_scar_rst_state;
        next_thread_state := s_scar_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_scar_rst_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity sliceProcessorMode is  -- 
  port (-- 
    cmode: out std_logic_vector(1 downto 0);
    pmode: in std_logic_vector(15 downto 0);
    clk, reset: in std_logic); --
  --
end entity sliceProcessorMode;
architecture rtlThreadArch of sliceProcessorMode is --
  type ThreadState is (s_sPM_rst_state);
  signal current_thread_state : ThreadState;
  signal cmode_buffer: unsigned_1_downto_0;
  --
begin -- 
  cmode <= cmode_buffer;
  process(clk, reset, current_thread_state , pmode) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  cmode := ($slice  pmode 1 0) 
    cmode_buffer <= pmode(1 downto 0);
    -- case statement 
    case current_thread_state is -- 
      when s_sPM_rst_state => -- 
        next_thread_state := s_sPM_rst_state;
        next_thread_state := s_sPM_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_sPM_rst_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity stubInval is  -- 
  port (-- 
    inval: out std_logic_vector(31 downto 0);
    inval_pipe_write_req: out std_logic_vector(0 downto 0);
    inval_pipe_write_ack: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity stubInval;
architecture rtlThreadArch of stubInval is --
  type ThreadState is (s_iv_rst);
  signal current_thread_state : ThreadState;
  signal inval_buffer: unsigned_31_downto_0;
  --
begin -- 
  inval <= inval_buffer;
  process(clk, reset, current_thread_state , inval_pipe_write_ack) --
    -- declared variables and implied variables 
    variable n_e_x_t_inval: unsigned_31_downto_0;
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations for output buffer ..... 
    n_e_x_t_inval := inval_buffer;
    -- default initializations... 
    --  inval :=  ( $unsigned<32> )  00000000000000000000000000000000 
    n_e_x_t_inval := "00000000000000000000000000000000";
    --  $now  inval$req  :=  ( $unsigned<1> )  0 
    inval_pipe_write_req <= "0";
    -- case statement 
    case current_thread_state is -- 
      when s_iv_rst => -- 
        next_thread_state := s_iv_rst;
        next_thread_state := s_iv_rst;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_iv_rst;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        inval_buffer <= n_e_x_t_inval;
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity stubRetires is  -- 
  port (-- 
    en: out std_logic_vector(0 downto 0);
    rtrace: in std_logic_vector(31 downto 0);
    rtrace_pipe_read_req: out std_logic_vector(0 downto 0);
    rtrace_pipe_read_ack: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity stubRetires;
architecture rtlThreadArch of stubRetires is --
  type ThreadState is (s_rst_sR);
  signal current_thread_state : ThreadState;
  signal en_buffer: unsigned_0_downto_0;
  --
begin -- 
  en <= en_buffer;
  process(clk, reset, current_thread_state , rtrace, rtrace_pipe_read_ack) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  en :=  ( $unsigned<1> )  0 
    en_buffer <= "0";
    --  $now  rtrace$req  :=  ( $unsigned<1> )  1 
    rtrace_pipe_read_req <= "1";
    -- case statement 
    case current_thread_state is -- 
      when s_rst_sR => -- 
        next_thread_state := s_rst_sR;
        next_thread_state := s_rst_sR;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_rst_sR;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity stub_init is  -- 
  port (-- 
    req: out std_logic_vector(74 downto 0);
    req_pipe_write_req: out std_logic_vector(0 downto 0);
    req_pipe_write_ack: in std_logic_vector(0 downto 0);
    resp: in std_logic_vector(32 downto 0);
    resp_pipe_read_req: out std_logic_vector(0 downto 0);
    resp_pipe_read_ack: in std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity stub_init;
architecture rtlThreadArch of stub_init is --
  type ThreadState is (s_stub_init_rst_state);
  signal current_thread_state : ThreadState;
  signal req_buffer: unsigned_74_downto_0;
  --
begin -- 
  req <= req_buffer;
  process(clk, reset, current_thread_state , req_pipe_write_ack, resp, resp_pipe_read_ack) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  resp$req  :=  ( $unsigned<1> )  0 
    resp_pipe_read_req <= "0";
    --  $now  req :=  ( $unsigned<75> )  000000000000000000000000000000000000000000000000000000000000000000000000000 
    req_buffer <= "000000000000000000000000000000000000000000000000000000000000000000000000000";
    -- case statement 
    case current_thread_state is -- 
      when s_stub_init_rst_state => -- 
        next_thread_state := s_stub_init_rst_state;
        next_thread_state := s_stub_init_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_stub_init_rst_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
library ahir;
use ahir.BaseComponents.all;
use ahir.Utilities.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.BaseComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
entity tOr4 is  -- 
  port (-- 
    p: in std_logic_vector(0 downto 0);
    q: in std_logic_vector(0 downto 0);
    r: in std_logic_vector(0 downto 0);
    s: in std_logic_vector(0 downto 0);
    t: out std_logic_vector(0 downto 0);
    clk, reset: in std_logic); --
  --
end entity tOr4;
architecture rtlThreadArch of tOr4 is --
  type ThreadState is (s_tOr4_rst_state);
  signal current_thread_state : ThreadState;
  signal t_buffer: unsigned_0_downto_0;
  --
begin -- 
  t <= t_buffer;
  process(clk, reset, current_thread_state , p, q, r, s) --
    -- declared variables and implied variables 
    variable next_thread_state : ThreadState;
    --
  begin -- 
    -- default values 
    next_thread_state := current_thread_state;
    -- default initializations... 
    --  $now  t := ( (  p |  q)  | (  r |  s) ) 
    t_buffer <= ((p or q) or (r or s));
    -- case statement 
    case current_thread_state is -- 
      when s_tOr4_rst_state => -- 
        next_thread_state := s_tOr4_rst_state;
        next_thread_state := s_tOr4_rst_state;
        --
      --
    end case;
    if (clk'event and clk = '1') then -- 
      if (reset = '1') then -- 
        current_thread_state <= s_tOr4_rst_state;
        -- 
      else -- 
        current_thread_state <= next_thread_state; 
        -- objects to be updated under tick.
        -- specified tick assignments. 
        -- 
      end if; 
      -- 
    end if; 
    --
  end process; 
  --
end rtlThreadArch;
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
library aparajit_lib;
use aparajit_lib.aparajit_1p1e_red_Type_Package.all;
--<<<<<
-->>>>>
library aparajit_lib;
library switches_lib;
library GlueModules;
library engine_lib;
library GlueModules;
library GlueModules;
library ajit_processor_lib;
library aparajit_lib;
library switches_lib;
--<<<<<
entity aparajit_1p1e_red is -- 
  port( -- 
    ACB_DRAM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    ACB_DRAM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACB_DRAM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACB_ETH_MASTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACB_ETH_SLAVE_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACB_PCIE_MASTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    AFB_ETH_CONFIG_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
    AFB_ETH_CONFIG_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_ETH_CONFIG_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    AFB_PCIE_CONFIG_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
    AFB_PCIE_CONFIG_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
    AFB_PCIE_CONFIG_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    CLUSTER_ID : in std_logic_vector(7 downto 0);
    DEBUG_UART_RX : in std_logic_vector(0 downto 0);
    ENGINE_CONFIG_ADDR_HIGH : in std_logic_vector(31 downto 0);
    ENGINE_CONFIG_ADDR_LOW : in std_logic_vector(31 downto 0);
    ETH_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
    ETH_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
    ETH_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
    INTERRUPT_FROM_ETH : in std_logic_vector(0 downto 0);
    INTERRUPT_FROM_PCIE : in std_logic_vector(0 downto 0);
    PCIE_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
    PCIE_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
    PCIE_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
    SERIAL_UART_RX : in std_logic_vector(0 downto 0);
    THREAD_RESET : in std_logic_vector(3 downto 0);
    ACB_DRAM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    ACB_DRAM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACB_DRAM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACB_ETH_MASTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACB_ETH_SLAVE_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACB_PCIE_MASTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    ACB_PCIE_SLAVE_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    AFB_ETH_CONFIG_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
    AFB_ETH_CONFIG_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_ETH_CONFIG_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    AFB_PCIE_CONFIG_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
    AFB_PCIE_CONFIG_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
    AFB_PCIE_CONFIG_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
    CPU_MODE : out std_logic_vector(1 downto 0);
    DEBUG_UART_TX : out std_logic_vector(0 downto 0);
    SERIAL_UART_TX : out std_logic_vector(0 downto 0);
    clk, reset: in std_logic 
    -- 
  );
  --
end entity aparajit_1p1e_red;
architecture struct of aparajit_1p1e_red is -- 
  signal hsys_tie_low, hsys_tie_high: std_logic;
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_DCACHE_BYPASS_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_ETH_CONFIG_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data: std_logic_vector(109 downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data: std_logic_vector(109 downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data: std_logic_vector(64 downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req : std_logic_vector(0  downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack : std_logic_vector(0  downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data: std_logic_vector(64 downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req : std_logic_vector(0  downto 0);
  signal ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack : std_logic_vector(0  downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_write_data: std_logic_vector(7 downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_write_req : std_logic_vector(0  downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_write_ack : std_logic_vector(0  downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_read_data: std_logic_vector(7 downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_read_req : std_logic_vector(0  downto 0);
  signal CONSOLE_to_SERIAL_RX_pipe_read_ack : std_logic_vector(0  downto 0);
  signal ENABLE_DCACHE_BYPASS_PATH : std_logic_vector(0 downto 0);
  signal ENABLE_ENGINE_RETIRE_TRACE : std_logic_vector(0 downto 0);
  signal EXTERNAL_INTERRUPT : std_logic_vector(0 downto 0);
  signal INTERRUPT_FROM_DMA : std_logic_vector(0 downto 0);
  signal INTERRUPT_FROM_ENGINE : std_logic_vector(0 downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_write_data: std_logic_vector(31 downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_write_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_read_data: std_logic_vector(31 downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_read_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_INVALIDATE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_data: std_logic_vector(109 downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_data: std_logic_vector(109 downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_REQUEST_pipe_read_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_data: std_logic_vector(64 downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_data: std_logic_vector(64 downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_req : std_logic_vector(0  downto 0);
  signal MAIN_MEM_RESPONSE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal PROCESSOR_MODE : std_logic_vector(15 downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_write_data: std_logic_vector(7 downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_write_req : std_logic_vector(0  downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_write_ack : std_logic_vector(0  downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_read_data: std_logic_vector(7 downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_read_req : std_logic_vector(0  downto 0);
  signal SERIAL_TX_to_CONSOLE_pipe_read_ack : std_logic_vector(0  downto 0);
  signal SIG_ZERO_32 : std_logic_vector(31 downto 0);
  signal SIG_ZERO_8 : std_logic_vector(7 downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_write_data: std_logic_vector(7 downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_write_req : std_logic_vector(0  downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_write_ack : std_logic_vector(0  downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_read_data: std_logic_vector(7 downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_read_req : std_logic_vector(0  downto 0);
  signal SOC_DEBUG_to_MONITOR_pipe_read_ack : std_logic_vector(0  downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_write_data: std_logic_vector(7 downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_write_req : std_logic_vector(0  downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_write_ack : std_logic_vector(0  downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_read_data: std_logic_vector(7 downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_read_req : std_logic_vector(0  downto 0);
  signal SOC_MONITOR_to_DEBUG_pipe_read_ack : std_logic_vector(0  downto 0);
  signal UART_BAUD_FREQ : std_logic_vector(31 downto 0);
  signal UART_BAUD_LIMIT : std_logic_vector(31 downto 0);
  signal UART_SOFT_RESET : std_logic_vector(0 downto 0);
  signal acb_dma_master_request_pipe_write_data: std_logic_vector(109 downto 0);
  signal acb_dma_master_request_pipe_write_req : std_logic_vector(0  downto 0);
  signal acb_dma_master_request_pipe_write_ack : std_logic_vector(0  downto 0);
  signal acb_dma_master_request_pipe_read_data: std_logic_vector(109 downto 0);
  signal acb_dma_master_request_pipe_read_req : std_logic_vector(0  downto 0);
  signal acb_dma_master_request_pipe_read_ack : std_logic_vector(0  downto 0);
  signal acb_dma_master_response_pipe_write_data: std_logic_vector(64 downto 0);
  signal acb_dma_master_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal acb_dma_master_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal acb_dma_master_response_pipe_read_data: std_logic_vector(64 downto 0);
  signal acb_dma_master_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal acb_dma_master_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal acb_dma_slave_request_pipe_write_data: std_logic_vector(109 downto 0);
  signal acb_dma_slave_request_pipe_write_req : std_logic_vector(0  downto 0);
  signal acb_dma_slave_request_pipe_write_ack : std_logic_vector(0  downto 0);
  signal acb_dma_slave_request_pipe_read_data: std_logic_vector(109 downto 0);
  signal acb_dma_slave_request_pipe_read_req : std_logic_vector(0  downto 0);
  signal acb_dma_slave_request_pipe_read_ack : std_logic_vector(0  downto 0);
  signal acb_dma_slave_response_pipe_write_data: std_logic_vector(64 downto 0);
  signal acb_dma_slave_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal acb_dma_slave_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal acb_dma_slave_response_pipe_read_data: std_logic_vector(64 downto 0);
  signal acb_dma_slave_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal acb_dma_slave_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal afb_init_imem_response_pipe_write_data: std_logic_vector(32 downto 0);
  signal afb_init_imem_response_pipe_write_req : std_logic_vector(0  downto 0);
  signal afb_init_imem_response_pipe_write_ack : std_logic_vector(0  downto 0);
  signal afb_init_imem_response_pipe_read_data: std_logic_vector(32 downto 0);
  signal afb_init_imem_response_pipe_read_req : std_logic_vector(0  downto 0);
  signal afb_init_imem_response_pipe_read_ack : std_logic_vector(0  downto 0);
  signal afb_request_to_engine_pipe_write_data: std_logic_vector(73 downto 0);
  signal afb_request_to_engine_pipe_write_req : std_logic_vector(0  downto 0);
  signal afb_request_to_engine_pipe_write_ack : std_logic_vector(0  downto 0);
  signal afb_request_to_engine_pipe_read_data: std_logic_vector(73 downto 0);
  signal afb_request_to_engine_pipe_read_req : std_logic_vector(0  downto 0);
  signal afb_request_to_engine_pipe_read_ack : std_logic_vector(0  downto 0);
  signal afb_response_from_engine_pipe_write_data: std_logic_vector(32 downto 0);
  signal afb_response_from_engine_pipe_write_req : std_logic_vector(0  downto 0);
  signal afb_response_from_engine_pipe_write_ack : std_logic_vector(0  downto 0);
  signal afb_response_from_engine_pipe_read_data: std_logic_vector(32 downto 0);
  signal afb_response_from_engine_pipe_read_req : std_logic_vector(0  downto 0);
  signal afb_response_from_engine_pipe_read_ack : std_logic_vector(0  downto 0);
  signal engine_retire_trace_pipe_write_data: std_logic_vector(31 downto 0);
  signal engine_retire_trace_pipe_write_req : std_logic_vector(0  downto 0);
  signal engine_retire_trace_pipe_write_ack : std_logic_vector(0  downto 0);
  signal engine_retire_trace_pipe_read_data: std_logic_vector(31 downto 0);
  signal engine_retire_trace_pipe_read_req : std_logic_vector(0  downto 0);
  signal engine_retire_trace_pipe_read_ack : std_logic_vector(0  downto 0);
  signal noblock_afb_init_imem_request_pipe_write_data: std_logic_vector(74 downto 0);
  signal noblock_afb_init_imem_request_pipe_write_req : std_logic_vector(0  downto 0);
  signal noblock_afb_init_imem_request_pipe_write_ack : std_logic_vector(0  downto 0);
  signal noblock_afb_init_imem_request_pipe_read_data: std_logic_vector(74 downto 0);
  signal noblock_afb_init_imem_request_pipe_read_req : std_logic_vector(0  downto 0);
  signal noblock_afb_init_imem_request_pipe_read_ack : std_logic_vector(0  downto 0);
  component self_tuning_uart is -- 
    port( -- 
      TX_to_CONSOLE_pipe_write_data : in std_logic_vector(7 downto 0);
      TX_to_CONSOLE_pipe_write_req  : in std_logic_vector(0  downto 0);
      TX_to_CONSOLE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      UART_RX : in std_logic_vector(0 downto 0);
      CONSOLE_to_RX_pipe_read_data : out std_logic_vector(7 downto 0);
      CONSOLE_to_RX_pipe_read_req  : in std_logic_vector(0  downto 0);
      CONSOLE_to_RX_pipe_read_ack  : out std_logic_vector(0  downto 0);
      UART_TX : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for debug_uart :  self_tuning_uart -- 
    use entity aparajit_lib.self_tuning_uart; -- 
  --<<<<<
  component distributor_1p1e_red is -- 
    port( -- 
      ACB_DRAM_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_DRAM_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_DRAM_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_CONFIG_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_MASTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_SLAVE_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_MASTER_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data : in std_logic_vector(109 downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack  : out std_logic_vector(0  downto 0);
      ETH_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      ETH_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_CONFIG_ADDR_LOW : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_HIGH : in std_logic_vector(35 downto 0);
      PCIE_MEM_ADDR_LOW : in std_logic_vector(35 downto 0);
      ACB_DRAM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_DRAM_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_DRAM_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_CONFIG_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_MASTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_ETH_SLAVE_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_CONFIG_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_MASTER_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_PCIE_SLAVE_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data : out std_logic_vector(64 downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for distributor_inst :  distributor_1p1e_red -- 
    use entity switches_lib.distributor_1p1e_red; -- 
  --<<<<<
  component acb_afb_bridge is -- 
    port( -- 
      AFB_BUS_RESPONSE_pipe_write_data : in std_logic_vector(32 downto 0);
      AFB_BUS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_data : in std_logic_vector(109 downto 0);
      CORE_BUS_REQUEST_pipe_write_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_read_data : out std_logic_vector(73 downto 0);
      AFB_BUS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      AFB_BUS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_data : out std_logic_vector(64 downto 0);
      CORE_BUS_RESPONSE_pipe_read_req  : in std_logic_vector(0  downto 0);
      CORE_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for engine_acb_to_afb_inst :  acb_afb_bridge -- 
    use entity GlueModules.acb_afb_bridge; -- 
  --<<<<<
  component engine_core is -- 
    port( -- 
      CLUSTER_ID : in std_logic_vector(7 downto 0);
      ENABLE_ENGINE_RETIRE_TRACE : in std_logic_vector(0 downto 0);
      ENGINE_ID : in std_logic_vector(7 downto 0);
      INIT_BUNDLE_WORD_INDEX : in std_logic_vector(31 downto 0);
      acb_dma_master_response_pipe_write_data : in std_logic_vector(64 downto 0);
      acb_dma_master_response_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_dma_master_response_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_dma_slave_request_pipe_write_data : in std_logic_vector(109 downto 0);
      acb_dma_slave_request_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_dma_slave_request_pipe_write_ack  : out std_logic_vector(0  downto 0);
      afb_request_pipe_write_data : in std_logic_vector(73 downto 0);
      afb_request_pipe_write_req  : in std_logic_vector(0  downto 0);
      afb_request_pipe_write_ack  : out std_logic_vector(0  downto 0);
      noblock_afb_init_imem_request_pipe_write_data : in std_logic_vector(74 downto 0);
      noblock_afb_init_imem_request_pipe_write_req  : in std_logic_vector(0  downto 0);
      noblock_afb_init_imem_request_pipe_write_ack  : out std_logic_vector(0  downto 0);
      INTERRUPT_FROM_DMA : out std_logic_vector(0 downto 0);
      INTERRUPT_FROM_ENGINE : out std_logic_vector(0 downto 0);
      acb_dma_master_request_pipe_read_data : out std_logic_vector(109 downto 0);
      acb_dma_master_request_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_dma_master_request_pipe_read_ack  : out std_logic_vector(0  downto 0);
      acb_dma_slave_response_pipe_read_data : out std_logic_vector(64 downto 0);
      acb_dma_slave_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_dma_slave_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      afb_init_imem_response_pipe_read_data : out std_logic_vector(32 downto 0);
      afb_init_imem_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      afb_init_imem_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      afb_response_pipe_read_data : out std_logic_vector(32 downto 0);
      afb_response_pipe_read_req  : in std_logic_vector(0  downto 0);
      afb_response_pipe_read_ack  : out std_logic_vector(0  downto 0);
      engine_retire_trace_pipe_read_data : out std_logic_vector(31 downto 0);
      engine_retire_trace_pipe_read_req  : in std_logic_vector(0  downto 0);
      engine_retire_trace_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for engine_core_inst :  engine_core -- 
    use entity engine_lib.engine_core; -- 
  --<<<<<
  -->>>>>
  for eth_acb_to_afb_inst :  acb_afb_bridge -- 
    use entity GlueModules.acb_afb_bridge; -- 
  --<<<<<
  -->>>>>
  for pcie_acb_to_afb_inst :  acb_afb_bridge -- 
    use entity GlueModules.acb_afb_bridge; -- 
  --<<<<<
  component processor_1x1x32 is -- 
    port( -- 
      ACB_DCACHE_BYPASS_RESPONSE_pipe_write_data : in std_logic_vector(64 downto 0);
      ACB_DCACHE_BYPASS_RESPONSE_pipe_write_req  : in std_logic_vector(0  downto 0);
      ACB_DCACHE_BYPASS_RESPONSE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
      CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
      DCACHE_UNTRANSLATED_VADDR_MAX : in std_logic_vector(31 downto 0);
      DCACHE_UNTRANSLATED_VADDR_MIN : in std_logic_vector(31 downto 0);
      ENABLE_DCACHE_BYPASS_PATH : in std_logic_vector(0 downto 0);
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
      ACB_DCACHE_BYPASS_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
      ACB_DCACHE_BYPASS_REQUEST_pipe_read_req  : in std_logic_vector(0  downto 0);
      ACB_DCACHE_BYPASS_REQUEST_pipe_read_ack  : out std_logic_vector(0  downto 0);
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
  component configurable_uart_with_bcw_and_soft_reset is -- 
    port( -- 
      TX_to_CONSOLE_pipe_write_data : in std_logic_vector(7 downto 0);
      TX_to_CONSOLE_pipe_write_req  : in std_logic_vector(0  downto 0);
      TX_to_CONSOLE_pipe_write_ack  : out std_logic_vector(0  downto 0);
      UART_BAUD_FREQ : in std_logic_vector(31 downto 0);
      UART_BAUD_LIMIT : in std_logic_vector(31 downto 0);
      UART_RX : in std_logic_vector(0 downto 0);
      UART_SOFT_RESET : in std_logic_vector(0 downto 0);
      CONSOLE_to_RX_pipe_read_data : out std_logic_vector(7 downto 0);
      CONSOLE_to_RX_pipe_read_req  : in std_logic_vector(0  downto 0);
      CONSOLE_to_RX_pipe_read_ack  : out std_logic_vector(0  downto 0);
      UART_TX : out std_logic_vector(0 downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for serial_uart :  configurable_uart_with_bcw_and_soft_reset -- 
    use entity aparajit_lib.configurable_uart_with_bcw_and_soft_reset; -- 
  --<<<<<
  component switch_1p1e_red is -- 
    port( -- 
      CLUSTER_ID : in std_logic_vector(7 downto 0);
      acb_master_request_from_engine_pipe_write_data : in std_logic_vector(109 downto 0);
      acb_master_request_from_engine_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_master_request_from_engine_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_request_from_downstream_pipe_write_data : in std_logic_vector(109 downto 0);
      acb_request_from_downstream_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_request_from_downstream_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_request_from_processor_pipe_write_data : in std_logic_vector(109 downto 0);
      acb_request_from_processor_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_request_from_processor_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_response_from_downstream_pipe_write_data : in std_logic_vector(64 downto 0);
      acb_response_from_downstream_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_response_from_downstream_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_slave_response_from_engine_pipe_write_data : in std_logic_vector(64 downto 0);
      acb_slave_response_from_engine_pipe_write_req  : in std_logic_vector(0  downto 0);
      acb_slave_response_from_engine_pipe_write_ack  : out std_logic_vector(0  downto 0);
      acb_master_response_to_engine_pipe_read_data : out std_logic_vector(64 downto 0);
      acb_master_response_to_engine_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_master_response_to_engine_pipe_read_ack  : out std_logic_vector(0  downto 0);
      acb_request_to_downstream_pipe_read_data : out std_logic_vector(109 downto 0);
      acb_request_to_downstream_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_request_to_downstream_pipe_read_ack  : out std_logic_vector(0  downto 0);
      acb_response_to_downstream_pipe_read_data : out std_logic_vector(64 downto 0);
      acb_response_to_downstream_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_response_to_downstream_pipe_read_ack  : out std_logic_vector(0  downto 0);
      acb_response_to_processor_pipe_read_data : out std_logic_vector(64 downto 0);
      acb_response_to_processor_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_response_to_processor_pipe_read_ack  : out std_logic_vector(0  downto 0);
      acb_slave_request_to_engine_pipe_read_data : out std_logic_vector(109 downto 0);
      acb_slave_request_to_engine_pipe_read_req  : in std_logic_vector(0  downto 0);
      acb_slave_request_to_engine_pipe_read_ack  : out std_logic_vector(0  downto 0);
      clk, reset: in std_logic 
      -- 
    );
    --
  end component;
  -->>>>>
  for switch_inst :  switch_1p1e_red -- 
    use entity switches_lib.switch_1p1e_red; -- 
  --<<<<<
  component tOr4 is  -- 
    port (-- 
      p: in std_logic_vector(0 downto 0);
      q: in std_logic_vector(0 downto 0);
      r: in std_logic_vector(0 downto 0);
      s: in std_logic_vector(0 downto 0);
      t: out std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for tor4_inst :  tOr4 -- 
    use entity aparajit_lib.tOr4; -- 
  --<<<<<
  component stub_init is  -- 
    port (-- 
      req: out std_logic_vector(74 downto 0);
      req_pipe_write_req: out std_logic_vector(0 downto 0);
      req_pipe_write_ack: in std_logic_vector(0 downto 0);
      resp: in std_logic_vector(32 downto 0);
      resp_pipe_read_req: out std_logic_vector(0 downto 0);
      resp_pipe_read_ack: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for stub_init_inst :  stub_init -- 
    use entity aparajit_lib.stub_init; -- 
  --<<<<<
  component stubInval is  -- 
    port (-- 
      inval: out std_logic_vector(31 downto 0);
      inval_pipe_write_req: out std_logic_vector(0 downto 0);
      inval_pipe_write_ack: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for sI_inst :  stubInval -- 
    use entity aparajit_lib.stubInval; -- 
  --<<<<<
  component setConstants is  -- 
    port (-- 
      sz32: out std_logic_vector(31 downto 0);
      sz8: out std_logic_vector(7 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for sc_inst :  setConstants -- 
    use entity aparajit_lib.setConstants; -- 
  --<<<<<
  component setDcacheBypassEnable is  -- 
    port (-- 
      enable: out std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for scar_inst :  setDcacheBypassEnable -- 
    use entity aparajit_lib.setDcacheBypassEnable; -- 
  --<<<<<
  component sliceProcessorMode is  -- 
    port (-- 
      cmode: out std_logic_vector(1 downto 0);
      pmode: in std_logic_vector(15 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for sPM_inst :  sliceProcessorMode -- 
    use entity aparajit_lib.sliceProcessorMode; -- 
  --<<<<<
  component stubRetires is  -- 
    port (-- 
      en: out std_logic_vector(0 downto 0);
      rtrace: in std_logic_vector(31 downto 0);
      rtrace_pipe_read_req: out std_logic_vector(0 downto 0);
      rtrace_pipe_read_ack: in std_logic_vector(0 downto 0);
      clk, reset: in std_logic); --
    --
  end component;
  -->>>>>
  for sR_inst :  stubRetires -- 
    use entity aparajit_lib.stubRetires; -- 
  --<<<<<
  -- 
begin -- 
  hsys_tie_low  <= '0';
  hsys_tie_high <= '1';
  debug_uart: self_tuning_uart
  port map ( --
    CONSOLE_to_RX_pipe_read_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    CONSOLE_to_RX_pipe_read_req => SOC_MONITOR_to_DEBUG_pipe_write_ack,
    CONSOLE_to_RX_pipe_read_ack => SOC_MONITOR_to_DEBUG_pipe_write_req,
    TX_to_CONSOLE_pipe_write_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    TX_to_CONSOLE_pipe_write_req => SOC_DEBUG_to_MONITOR_pipe_read_ack,
    TX_to_CONSOLE_pipe_write_ack => SOC_DEBUG_to_MONITOR_pipe_read_req,
    UART_RX => DEBUG_UART_RX,
    UART_TX => DEBUG_UART_TX,
    clk => clk,  reset => reset
    ); -- 
  distributor_inst: distributor_1p1e_red
  port map ( --
    ACB_DRAM_REQUEST_pipe_read_data => ACB_DRAM_REQUEST_pipe_read_data,
    ACB_DRAM_REQUEST_pipe_read_req => ACB_DRAM_REQUEST_pipe_read_req,
    ACB_DRAM_REQUEST_pipe_read_ack => ACB_DRAM_REQUEST_pipe_read_ack,
    ACB_DRAM_RESPONSE_pipe_write_data => ACB_DRAM_RESPONSE_pipe_write_data,
    ACB_DRAM_RESPONSE_pipe_write_req => ACB_DRAM_RESPONSE_pipe_write_req,
    ACB_DRAM_RESPONSE_pipe_write_ack => ACB_DRAM_RESPONSE_pipe_write_ack,
    ACB_ETH_CONFIG_REQUEST_pipe_read_data => ACB_ETH_CONFIG_REQUEST_pipe_write_data,
    ACB_ETH_CONFIG_REQUEST_pipe_read_req => ACB_ETH_CONFIG_REQUEST_pipe_write_ack,
    ACB_ETH_CONFIG_REQUEST_pipe_read_ack => ACB_ETH_CONFIG_REQUEST_pipe_write_req,
    ACB_ETH_CONFIG_RESPONSE_pipe_write_data => ACB_ETH_CONFIG_RESPONSE_pipe_read_data,
    ACB_ETH_CONFIG_RESPONSE_pipe_write_req => ACB_ETH_CONFIG_RESPONSE_pipe_read_ack,
    ACB_ETH_CONFIG_RESPONSE_pipe_write_ack => ACB_ETH_CONFIG_RESPONSE_pipe_read_req,
    ACB_ETH_MASTER_REQUEST_pipe_write_data => ACB_ETH_MASTER_REQUEST_pipe_write_data,
    ACB_ETH_MASTER_REQUEST_pipe_write_req => ACB_ETH_MASTER_REQUEST_pipe_write_req,
    ACB_ETH_MASTER_REQUEST_pipe_write_ack => ACB_ETH_MASTER_REQUEST_pipe_write_ack,
    ACB_ETH_MASTER_RESPONSE_pipe_read_data => ACB_ETH_MASTER_RESPONSE_pipe_read_data,
    ACB_ETH_MASTER_RESPONSE_pipe_read_req => ACB_ETH_MASTER_RESPONSE_pipe_read_req,
    ACB_ETH_MASTER_RESPONSE_pipe_read_ack => ACB_ETH_MASTER_RESPONSE_pipe_read_ack,
    ACB_ETH_SLAVE_REQUEST_pipe_read_data => ACB_ETH_SLAVE_REQUEST_pipe_read_data,
    ACB_ETH_SLAVE_REQUEST_pipe_read_req => ACB_ETH_SLAVE_REQUEST_pipe_read_req,
    ACB_ETH_SLAVE_REQUEST_pipe_read_ack => ACB_ETH_SLAVE_REQUEST_pipe_read_ack,
    ACB_ETH_SLAVE_RESPONSE_pipe_write_data => ACB_ETH_SLAVE_RESPONSE_pipe_write_data,
    ACB_ETH_SLAVE_RESPONSE_pipe_write_req => ACB_ETH_SLAVE_RESPONSE_pipe_write_req,
    ACB_ETH_SLAVE_RESPONSE_pipe_write_ack => ACB_ETH_SLAVE_RESPONSE_pipe_write_ack,
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data,
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack,
    ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req,
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data,
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack,
    ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req,
    ACB_PCIE_CONFIG_REQUEST_pipe_read_data => ACB_PCIE_CONFIG_REQUEST_pipe_write_data,
    ACB_PCIE_CONFIG_REQUEST_pipe_read_req => ACB_PCIE_CONFIG_REQUEST_pipe_write_ack,
    ACB_PCIE_CONFIG_REQUEST_pipe_read_ack => ACB_PCIE_CONFIG_REQUEST_pipe_write_req,
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_data => ACB_PCIE_CONFIG_RESPONSE_pipe_read_data,
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_req => ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack,
    ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_read_req,
    ACB_PCIE_MASTER_REQUEST_pipe_write_data => ACB_PCIE_MASTER_REQUEST_pipe_write_data,
    ACB_PCIE_MASTER_REQUEST_pipe_write_req => ACB_PCIE_MASTER_REQUEST_pipe_write_req,
    ACB_PCIE_MASTER_REQUEST_pipe_write_ack => ACB_PCIE_MASTER_REQUEST_pipe_write_ack,
    ACB_PCIE_MASTER_RESPONSE_pipe_read_data => ACB_PCIE_MASTER_RESPONSE_pipe_read_data,
    ACB_PCIE_MASTER_RESPONSE_pipe_read_req => ACB_PCIE_MASTER_RESPONSE_pipe_read_req,
    ACB_PCIE_MASTER_RESPONSE_pipe_read_ack => ACB_PCIE_MASTER_RESPONSE_pipe_read_ack,
    ACB_PCIE_SLAVE_REQUEST_pipe_read_data => ACB_PCIE_SLAVE_REQUEST_pipe_read_data,
    ACB_PCIE_SLAVE_REQUEST_pipe_read_req => ACB_PCIE_SLAVE_REQUEST_pipe_read_req,
    ACB_PCIE_SLAVE_REQUEST_pipe_read_ack => ACB_PCIE_SLAVE_REQUEST_pipe_read_ack,
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_data => ACB_PCIE_SLAVE_RESPONSE_pipe_write_data,
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_req => ACB_PCIE_SLAVE_RESPONSE_pipe_write_req,
    ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack => ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack,
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data,
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack,
    ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req,
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data,
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack,
    ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req,
    ETH_CONFIG_ADDR_HIGH => ETH_CONFIG_ADDR_HIGH,
    ETH_CONFIG_ADDR_LOW => ETH_CONFIG_ADDR_LOW,
    ETH_MEM_ADDR_HIGH => ETH_MEM_ADDR_HIGH,
    ETH_MEM_ADDR_LOW => ETH_MEM_ADDR_LOW,
    PCIE_CONFIG_ADDR_HIGH => PCIE_CONFIG_ADDR_HIGH,
    PCIE_CONFIG_ADDR_LOW => PCIE_CONFIG_ADDR_LOW,
    PCIE_MEM_ADDR_HIGH => PCIE_MEM_ADDR_HIGH,
    PCIE_MEM_ADDR_LOW => PCIE_MEM_ADDR_LOW,
    clk => clk,  reset => reset
    ); -- 
  engine_acb_to_afb_inst: acb_afb_bridge
  port map ( --
    AFB_BUS_REQUEST_pipe_read_data => afb_request_to_engine_pipe_write_data,
    AFB_BUS_REQUEST_pipe_read_req => afb_request_to_engine_pipe_write_ack,
    AFB_BUS_REQUEST_pipe_read_ack => afb_request_to_engine_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_write_data => afb_response_from_engine_pipe_read_data,
    AFB_BUS_RESPONSE_pipe_write_req => afb_response_from_engine_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_write_ack => afb_response_from_engine_pipe_read_req,
    CORE_BUS_REQUEST_pipe_write_data => ACB_DCACHE_BYPASS_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => ACB_DCACHE_BYPASS_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => ACB_DCACHE_BYPASS_REQUEST_pipe_read_req,
    CORE_BUS_RESPONSE_pipe_read_data => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  engine_core_inst: engine_core
  port map ( --
    CLUSTER_ID => CLUSTER_ID,
    ENABLE_ENGINE_RETIRE_TRACE => ENABLE_ENGINE_RETIRE_TRACE,
    ENGINE_ID => SIG_ZERO_8,
    INIT_BUNDLE_WORD_INDEX => SIG_ZERO_32,
    INTERRUPT_FROM_DMA => INTERRUPT_FROM_DMA,
    INTERRUPT_FROM_ENGINE => INTERRUPT_FROM_ENGINE,
    acb_dma_master_request_pipe_read_data => acb_dma_master_request_pipe_write_data,
    acb_dma_master_request_pipe_read_req => acb_dma_master_request_pipe_write_ack,
    acb_dma_master_request_pipe_read_ack => acb_dma_master_request_pipe_write_req,
    acb_dma_master_response_pipe_write_data => acb_dma_master_response_pipe_read_data,
    acb_dma_master_response_pipe_write_req => acb_dma_master_response_pipe_read_ack,
    acb_dma_master_response_pipe_write_ack => acb_dma_master_response_pipe_read_req,
    acb_dma_slave_request_pipe_write_data => acb_dma_slave_request_pipe_read_data,
    acb_dma_slave_request_pipe_write_req => acb_dma_slave_request_pipe_read_ack,
    acb_dma_slave_request_pipe_write_ack => acb_dma_slave_request_pipe_read_req,
    acb_dma_slave_response_pipe_read_data => acb_dma_slave_response_pipe_write_data,
    acb_dma_slave_response_pipe_read_req => acb_dma_slave_response_pipe_write_ack,
    acb_dma_slave_response_pipe_read_ack => acb_dma_slave_response_pipe_write_req,
    afb_init_imem_response_pipe_read_data => afb_init_imem_response_pipe_write_data,
    afb_init_imem_response_pipe_read_req => afb_init_imem_response_pipe_write_ack,
    afb_init_imem_response_pipe_read_ack => afb_init_imem_response_pipe_write_req,
    afb_request_pipe_write_data => afb_request_to_engine_pipe_read_data,
    afb_request_pipe_write_req => afb_request_to_engine_pipe_read_ack,
    afb_request_pipe_write_ack => afb_request_to_engine_pipe_read_req,
    afb_response_pipe_read_data => afb_response_from_engine_pipe_write_data,
    afb_response_pipe_read_req => afb_response_from_engine_pipe_write_ack,
    afb_response_pipe_read_ack => afb_response_from_engine_pipe_write_req,
    engine_retire_trace_pipe_read_data => engine_retire_trace_pipe_write_data,
    engine_retire_trace_pipe_read_req => engine_retire_trace_pipe_write_ack,
    engine_retire_trace_pipe_read_ack => engine_retire_trace_pipe_write_req,
    noblock_afb_init_imem_request_pipe_write_data => noblock_afb_init_imem_request_pipe_read_data,
    noblock_afb_init_imem_request_pipe_write_req => noblock_afb_init_imem_request_pipe_read_ack,
    noblock_afb_init_imem_request_pipe_write_ack => noblock_afb_init_imem_request_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  eth_acb_to_afb_inst: acb_afb_bridge
  port map ( --
    AFB_BUS_REQUEST_pipe_read_data => AFB_ETH_CONFIG_REQUEST_pipe_read_data,
    AFB_BUS_REQUEST_pipe_read_req => AFB_ETH_CONFIG_REQUEST_pipe_read_req,
    AFB_BUS_REQUEST_pipe_read_ack => AFB_ETH_CONFIG_REQUEST_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_write_data => AFB_ETH_CONFIG_RESPONSE_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_write_req => AFB_ETH_CONFIG_RESPONSE_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_write_ack => AFB_ETH_CONFIG_RESPONSE_pipe_write_ack,
    CORE_BUS_REQUEST_pipe_write_data => ACB_ETH_CONFIG_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => ACB_ETH_CONFIG_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => ACB_ETH_CONFIG_REQUEST_pipe_read_req,
    CORE_BUS_RESPONSE_pipe_read_data => ACB_ETH_CONFIG_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => ACB_ETH_CONFIG_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => ACB_ETH_CONFIG_RESPONSE_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  pcie_acb_to_afb_inst: acb_afb_bridge
  port map ( --
    AFB_BUS_REQUEST_pipe_read_data => AFB_PCIE_CONFIG_REQUEST_pipe_read_data,
    AFB_BUS_REQUEST_pipe_read_req => AFB_PCIE_CONFIG_REQUEST_pipe_read_req,
    AFB_BUS_REQUEST_pipe_read_ack => AFB_PCIE_CONFIG_REQUEST_pipe_read_ack,
    AFB_BUS_RESPONSE_pipe_write_data => AFB_PCIE_CONFIG_RESPONSE_pipe_write_data,
    AFB_BUS_RESPONSE_pipe_write_req => AFB_PCIE_CONFIG_RESPONSE_pipe_write_req,
    AFB_BUS_RESPONSE_pipe_write_ack => AFB_PCIE_CONFIG_RESPONSE_pipe_write_ack,
    CORE_BUS_REQUEST_pipe_write_data => ACB_PCIE_CONFIG_REQUEST_pipe_read_data,
    CORE_BUS_REQUEST_pipe_write_req => ACB_PCIE_CONFIG_REQUEST_pipe_read_ack,
    CORE_BUS_REQUEST_pipe_write_ack => ACB_PCIE_CONFIG_REQUEST_pipe_read_req,
    CORE_BUS_RESPONSE_pipe_read_data => ACB_PCIE_CONFIG_RESPONSE_pipe_write_data,
    CORE_BUS_RESPONSE_pipe_read_req => ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack,
    CORE_BUS_RESPONSE_pipe_read_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_write_req,
    clk => clk,  reset => reset
    ); -- 
  processor_inst: processor_1x1x32
  port map ( --
    ACB_DCACHE_BYPASS_REQUEST_pipe_read_data => ACB_DCACHE_BYPASS_REQUEST_pipe_write_data,
    ACB_DCACHE_BYPASS_REQUEST_pipe_read_req => ACB_DCACHE_BYPASS_REQUEST_pipe_write_ack,
    ACB_DCACHE_BYPASS_REQUEST_pipe_read_ack => ACB_DCACHE_BYPASS_REQUEST_pipe_write_req,
    ACB_DCACHE_BYPASS_RESPONSE_pipe_write_data => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_data,
    ACB_DCACHE_BYPASS_RESPONSE_pipe_write_req => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_ack,
    ACB_DCACHE_BYPASS_RESPONSE_pipe_write_ack => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_req,
    CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_read_data,
    CONSOLE_to_SERIAL_RX_pipe_write_req => CONSOLE_to_SERIAL_RX_pipe_read_ack,
    CONSOLE_to_SERIAL_RX_pipe_write_ack => CONSOLE_to_SERIAL_RX_pipe_read_req,
    DCACHE_UNTRANSLATED_VADDR_MAX => ENGINE_CONFIG_ADDR_HIGH,
    DCACHE_UNTRANSLATED_VADDR_MIN => ENGINE_CONFIG_ADDR_LOW,
    ENABLE_DCACHE_BYPASS_PATH => ENABLE_DCACHE_BYPASS_PATH,
    EXTERNAL_INTERRUPT => EXTERNAL_INTERRUPT,
    MAIN_MEM_INVALIDATE_pipe_write_data => MAIN_MEM_INVALIDATE_pipe_read_data,
    MAIN_MEM_INVALIDATE_pipe_write_req => MAIN_MEM_INVALIDATE_pipe_read_ack,
    MAIN_MEM_INVALIDATE_pipe_write_ack => MAIN_MEM_INVALIDATE_pipe_read_req,
    MAIN_MEM_REQUEST_pipe_read_data => MAIN_MEM_REQUEST_pipe_write_data,
    MAIN_MEM_REQUEST_pipe_read_req => MAIN_MEM_REQUEST_pipe_write_ack,
    MAIN_MEM_REQUEST_pipe_read_ack => MAIN_MEM_REQUEST_pipe_write_req,
    MAIN_MEM_RESPONSE_pipe_write_data => MAIN_MEM_RESPONSE_pipe_read_data,
    MAIN_MEM_RESPONSE_pipe_write_req => MAIN_MEM_RESPONSE_pipe_read_ack,
    MAIN_MEM_RESPONSE_pipe_write_ack => MAIN_MEM_RESPONSE_pipe_read_req,
    PROCESSOR_MODE => PROCESSOR_MODE,
    SERIAL_TX_to_CONSOLE_pipe_read_data => SERIAL_TX_to_CONSOLE_pipe_write_data,
    SERIAL_TX_to_CONSOLE_pipe_read_req => SERIAL_TX_to_CONSOLE_pipe_write_ack,
    SERIAL_TX_to_CONSOLE_pipe_read_ack => SERIAL_TX_to_CONSOLE_pipe_write_req,
    SOC_DEBUG_to_MONITOR_pipe_read_data => SOC_DEBUG_to_MONITOR_pipe_write_data,
    SOC_DEBUG_to_MONITOR_pipe_read_req => SOC_DEBUG_to_MONITOR_pipe_write_ack,
    SOC_DEBUG_to_MONITOR_pipe_read_ack => SOC_DEBUG_to_MONITOR_pipe_write_req,
    SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_read_data,
    SOC_MONITOR_to_DEBUG_pipe_write_req => SOC_MONITOR_to_DEBUG_pipe_read_ack,
    SOC_MONITOR_to_DEBUG_pipe_write_ack => SOC_MONITOR_to_DEBUG_pipe_read_req,
    THREAD_RESET => THREAD_RESET,
    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_SOFT_RESET => UART_SOFT_RESET,
    clk => clk,  reset => reset
    ); -- 
  serial_uart: configurable_uart_with_bcw_and_soft_reset
  port map ( --
    CONSOLE_to_RX_pipe_read_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
    CONSOLE_to_RX_pipe_read_req => CONSOLE_to_SERIAL_RX_pipe_write_ack,
    CONSOLE_to_RX_pipe_read_ack => CONSOLE_to_SERIAL_RX_pipe_write_req,
    TX_to_CONSOLE_pipe_write_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
    TX_to_CONSOLE_pipe_write_req => SERIAL_TX_to_CONSOLE_pipe_read_ack,
    TX_to_CONSOLE_pipe_write_ack => SERIAL_TX_to_CONSOLE_pipe_read_req,
    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_RX => SERIAL_UART_RX,
    UART_SOFT_RESET => UART_SOFT_RESET,
    UART_TX => SERIAL_UART_TX,
    clk => clk,  reset => reset
    ); -- 
  switch_inst: switch_1p1e_red
  port map ( --
    CLUSTER_ID => CLUSTER_ID,
    acb_master_request_from_engine_pipe_write_data => acb_dma_master_request_pipe_read_data,
    acb_master_request_from_engine_pipe_write_req => acb_dma_master_request_pipe_read_ack,
    acb_master_request_from_engine_pipe_write_ack => acb_dma_master_request_pipe_read_req,
    acb_master_response_to_engine_pipe_read_data => acb_dma_master_response_pipe_write_data,
    acb_master_response_to_engine_pipe_read_req => acb_dma_master_response_pipe_write_ack,
    acb_master_response_to_engine_pipe_read_ack => acb_dma_master_response_pipe_write_req,
    acb_request_from_downstream_pipe_write_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data,
    acb_request_from_downstream_pipe_write_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack,
    acb_request_from_downstream_pipe_write_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req,
    acb_request_from_processor_pipe_write_data => MAIN_MEM_REQUEST_pipe_read_data,
    acb_request_from_processor_pipe_write_req => MAIN_MEM_REQUEST_pipe_read_ack,
    acb_request_from_processor_pipe_write_ack => MAIN_MEM_REQUEST_pipe_read_req,
    acb_request_to_downstream_pipe_read_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data,
    acb_request_to_downstream_pipe_read_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack,
    acb_request_to_downstream_pipe_read_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req,
    acb_response_from_downstream_pipe_write_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data,
    acb_response_from_downstream_pipe_write_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack,
    acb_response_from_downstream_pipe_write_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req,
    acb_response_to_downstream_pipe_read_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data,
    acb_response_to_downstream_pipe_read_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack,
    acb_response_to_downstream_pipe_read_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req,
    acb_response_to_processor_pipe_read_data => MAIN_MEM_RESPONSE_pipe_write_data,
    acb_response_to_processor_pipe_read_req => MAIN_MEM_RESPONSE_pipe_write_ack,
    acb_response_to_processor_pipe_read_ack => MAIN_MEM_RESPONSE_pipe_write_req,
    acb_slave_request_to_engine_pipe_read_data => acb_dma_slave_request_pipe_write_data,
    acb_slave_request_to_engine_pipe_read_req => acb_dma_slave_request_pipe_write_ack,
    acb_slave_request_to_engine_pipe_read_ack => acb_dma_slave_request_pipe_write_req,
    acb_slave_response_from_engine_pipe_write_data => acb_dma_slave_response_pipe_read_data,
    acb_slave_response_from_engine_pipe_write_req => acb_dma_slave_response_pipe_read_ack,
    acb_slave_response_from_engine_pipe_write_ack => acb_dma_slave_response_pipe_read_req,
    clk => clk,  reset => reset
    ); -- 
  tor4_inst: tOr4 -- 
    port map ( -- 
      p => INTERRUPT_FROM_ENGINE,
      q => INTERRUPT_FROM_DMA,
      r => INTERRUPT_FROM_PCIE,
      s => INTERRUPT_FROM_ETH,
      t => EXTERNAL_INTERRUPT,
      clk => clk, reset => reset--
    ); -- 
  stub_init_inst: stub_init -- 
    port map ( -- 
      req => noblock_afb_init_imem_request_pipe_write_data,
      req_pipe_write_req => noblock_afb_init_imem_request_pipe_write_req,
      req_pipe_write_ack => noblock_afb_init_imem_request_pipe_write_ack,
      resp => afb_init_imem_response_pipe_read_data,
      resp_pipe_read_req => afb_init_imem_response_pipe_read_req,
      resp_pipe_read_ack => afb_init_imem_response_pipe_read_ack,
      clk => clk, reset => reset--
    ); -- 
  sI_inst: stubInval -- 
    port map ( -- 
      inval => MAIN_MEM_INVALIDATE_pipe_write_data,
      inval_pipe_write_req => MAIN_MEM_INVALIDATE_pipe_write_req,
      inval_pipe_write_ack => MAIN_MEM_INVALIDATE_pipe_write_ack,
      clk => clk, reset => reset--
    ); -- 
  sc_inst: setConstants -- 
    port map ( -- 
      sz32 => SIG_ZERO_32,
      sz8 => SIG_ZERO_8,
      clk => clk, reset => reset--
    ); -- 
  scar_inst: setDcacheBypassEnable -- 
    port map ( -- 
      enable => ENABLE_DCACHE_BYPASS_PATH,
      clk => clk, reset => reset--
    ); -- 
  sPM_inst: sliceProcessorMode -- 
    port map ( -- 
      cmode => CPU_MODE,
      pmode => PROCESSOR_MODE,
      clk => clk, reset => reset--
    ); -- 
  sR_inst: stubRetires -- 
    port map ( -- 
      en => ENABLE_ENGINE_RETIRE_TRACE,
      rtrace => engine_retire_trace_pipe_read_data,
      rtrace_pipe_read_req => engine_retire_trace_pipe_read_req,
      rtrace_pipe_read_ack => engine_retire_trace_pipe_read_ack,
      clk => clk, reset => reset--
    ); -- 
  -- pipe ACB_DCACHE_BYPASS_REQUEST depth set to 0 since it is a P2P pipe.
  ACB_DCACHE_BYPASS_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_DCACHE_BYPASS_REQUEST",
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
      read_req => ACB_DCACHE_BYPASS_REQUEST_pipe_read_req,
      read_ack => ACB_DCACHE_BYPASS_REQUEST_pipe_read_ack,
      read_data => ACB_DCACHE_BYPASS_REQUEST_pipe_read_data,
      write_req => ACB_DCACHE_BYPASS_REQUEST_pipe_write_req,
      write_ack => ACB_DCACHE_BYPASS_REQUEST_pipe_write_ack,
      write_data => ACB_DCACHE_BYPASS_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe ACB_DCACHE_BYPASS_RESPONSE depth set to 0 since it is a P2P pipe.
  ACB_DCACHE_BYPASS_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_DCACHE_BYPASS_RESPONSE",
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
      read_req => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_req,
      read_ack => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_ack,
      read_data => ACB_DCACHE_BYPASS_RESPONSE_pipe_read_data,
      write_req => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_req,
      write_ack => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_ack,
      write_data => ACB_DCACHE_BYPASS_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_ETH_CONFIG_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_CONFIG_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_ETH_CONFIG_REQUEST_pipe_read_req,
      read_ack => ACB_ETH_CONFIG_REQUEST_pipe_read_ack,
      read_data => ACB_ETH_CONFIG_REQUEST_pipe_read_data,
      write_req => ACB_ETH_CONFIG_REQUEST_pipe_write_req,
      write_ack => ACB_ETH_CONFIG_REQUEST_pipe_write_ack,
      write_data => ACB_ETH_CONFIG_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_ETH_CONFIG_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_ETH_CONFIG_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_ETH_CONFIG_RESPONSE_pipe_read_req,
      read_ack => ACB_ETH_CONFIG_RESPONSE_pipe_read_ack,
      read_data => ACB_ETH_CONFIG_RESPONSE_pipe_read_data,
      write_req => ACB_ETH_CONFIG_RESPONSE_pipe_write_req,
      write_ack => ACB_ETH_CONFIG_RESPONSE_pipe_write_ack,
      write_data => ACB_ETH_CONFIG_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_MASTER_REQUEST_FROM_DOWNSTREAM_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_MASTER_REQUEST_FROM_DOWNSTREAM",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_read_data,
      write_req => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_MASTER_REQUEST_FROM_DOWNSTREAM_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_MASTER_RESPONSE_TO_DOWNSTREAM_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_MASTER_RESPONSE_TO_DOWNSTREAM",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_read_data,
      write_req => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_MASTER_RESPONSE_TO_DOWNSTREAM_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_PCIE_CONFIG_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_CONFIG_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_PCIE_CONFIG_REQUEST_pipe_read_req,
      read_ack => ACB_PCIE_CONFIG_REQUEST_pipe_read_ack,
      read_data => ACB_PCIE_CONFIG_REQUEST_pipe_read_data,
      write_req => ACB_PCIE_CONFIG_REQUEST_pipe_write_req,
      write_ack => ACB_PCIE_CONFIG_REQUEST_pipe_write_ack,
      write_data => ACB_PCIE_CONFIG_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_PCIE_CONFIG_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_PCIE_CONFIG_RESPONSE",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_PCIE_CONFIG_RESPONSE_pipe_read_req,
      read_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_read_ack,
      read_data => ACB_PCIE_CONFIG_RESPONSE_pipe_read_data,
      write_req => ACB_PCIE_CONFIG_RESPONSE_pipe_write_req,
      write_ack => ACB_PCIE_CONFIG_RESPONSE_pipe_write_ack,
      write_data => ACB_PCIE_CONFIG_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_REQUEST_TO_DOWNSTREAM_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_REQUEST_TO_DOWNSTREAM",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_read_data,
      write_req => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_REQUEST_TO_DOWNSTREAM_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  ACB_RESPONSE_FROM_DOWNSTREAM_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe ACB_RESPONSE_FROM_DOWNSTREAM",
      num_reads => 1,
      num_writes => 1,
      data_width => 65,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_req,
      read_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_ack,
      read_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_read_data,
      write_req => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_req,
      write_ack => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_ack,
      write_data => ACB_RESPONSE_FROM_DOWNSTREAM_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  CONSOLE_to_SERIAL_RX_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe CONSOLE_to_SERIAL_RX",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => CONSOLE_to_SERIAL_RX_pipe_read_req,
      read_ack => CONSOLE_to_SERIAL_RX_pipe_read_ack,
      read_data => CONSOLE_to_SERIAL_RX_pipe_read_data,
      write_req => CONSOLE_to_SERIAL_RX_pipe_write_req,
      write_ack => CONSOLE_to_SERIAL_RX_pipe_write_ack,
      write_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe MAIN_MEM_INVALIDATE depth set to 0 since it is a P2P pipe.
  MAIN_MEM_INVALIDATE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MAIN_MEM_INVALIDATE",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => MAIN_MEM_INVALIDATE_pipe_read_req,
      read_ack => MAIN_MEM_INVALIDATE_pipe_read_ack,
      read_data => MAIN_MEM_INVALIDATE_pipe_read_data,
      write_req => MAIN_MEM_INVALIDATE_pipe_write_req,
      write_ack => MAIN_MEM_INVALIDATE_pipe_write_ack,
      write_data => MAIN_MEM_INVALIDATE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  MAIN_MEM_REQUEST_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MAIN_MEM_REQUEST",
      num_reads => 1,
      num_writes => 1,
      data_width => 110,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => MAIN_MEM_REQUEST_pipe_read_req,
      read_ack => MAIN_MEM_REQUEST_pipe_read_ack,
      read_data => MAIN_MEM_REQUEST_pipe_read_data,
      write_req => MAIN_MEM_REQUEST_pipe_write_req,
      write_ack => MAIN_MEM_REQUEST_pipe_write_ack,
      write_data => MAIN_MEM_REQUEST_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe MAIN_MEM_RESPONSE depth set to 0 since it is a P2P pipe.
  MAIN_MEM_RESPONSE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe MAIN_MEM_RESPONSE",
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
      read_req => MAIN_MEM_RESPONSE_pipe_read_req,
      read_ack => MAIN_MEM_RESPONSE_pipe_read_ack,
      read_data => MAIN_MEM_RESPONSE_pipe_read_data,
      write_req => MAIN_MEM_RESPONSE_pipe_write_req,
      write_ack => MAIN_MEM_RESPONSE_pipe_write_ack,
      write_data => MAIN_MEM_RESPONSE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  SERIAL_TX_to_CONSOLE_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe SERIAL_TX_to_CONSOLE",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => SERIAL_TX_to_CONSOLE_pipe_read_req,
      read_ack => SERIAL_TX_to_CONSOLE_pipe_read_ack,
      read_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
      write_req => SERIAL_TX_to_CONSOLE_pipe_write_req,
      write_ack => SERIAL_TX_to_CONSOLE_pipe_write_ack,
      write_data => SERIAL_TX_to_CONSOLE_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  SOC_DEBUG_to_MONITOR_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe SOC_DEBUG_to_MONITOR",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => SOC_DEBUG_to_MONITOR_pipe_read_req,
      read_ack => SOC_DEBUG_to_MONITOR_pipe_read_ack,
      read_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
      write_req => SOC_DEBUG_to_MONITOR_pipe_write_req,
      write_ack => SOC_DEBUG_to_MONITOR_pipe_write_ack,
      write_data => SOC_DEBUG_to_MONITOR_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  SOC_MONITOR_to_DEBUG_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe SOC_MONITOR_to_DEBUG",
      num_reads => 1,
      num_writes => 1,
      data_width => 8,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => SOC_MONITOR_to_DEBUG_pipe_read_req,
      read_ack => SOC_MONITOR_to_DEBUG_pipe_read_ack,
      read_data => SOC_MONITOR_to_DEBUG_pipe_read_data,
      write_req => SOC_MONITOR_to_DEBUG_pipe_write_req,
      write_ack => SOC_MONITOR_to_DEBUG_pipe_write_ack,
      write_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe acb_dma_master_request depth set to 0 since it is a P2P pipe.
  acb_dma_master_request_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe acb_dma_master_request",
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
      read_req => acb_dma_master_request_pipe_read_req,
      read_ack => acb_dma_master_request_pipe_read_ack,
      read_data => acb_dma_master_request_pipe_read_data,
      write_req => acb_dma_master_request_pipe_write_req,
      write_ack => acb_dma_master_request_pipe_write_ack,
      write_data => acb_dma_master_request_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe acb_dma_master_response depth set to 0 since it is a P2P pipe.
  acb_dma_master_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe acb_dma_master_response",
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
      read_req => acb_dma_master_response_pipe_read_req,
      read_ack => acb_dma_master_response_pipe_read_ack,
      read_data => acb_dma_master_response_pipe_read_data,
      write_req => acb_dma_master_response_pipe_write_req,
      write_ack => acb_dma_master_response_pipe_write_ack,
      write_data => acb_dma_master_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe acb_dma_slave_request depth set to 0 since it is a P2P pipe.
  acb_dma_slave_request_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe acb_dma_slave_request",
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
      read_req => acb_dma_slave_request_pipe_read_req,
      read_ack => acb_dma_slave_request_pipe_read_ack,
      read_data => acb_dma_slave_request_pipe_read_data,
      write_req => acb_dma_slave_request_pipe_write_req,
      write_ack => acb_dma_slave_request_pipe_write_ack,
      write_data => acb_dma_slave_request_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe acb_dma_slave_response depth set to 0 since it is a P2P pipe.
  acb_dma_slave_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe acb_dma_slave_response",
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
      read_req => acb_dma_slave_response_pipe_read_req,
      read_ack => acb_dma_slave_response_pipe_read_ack,
      read_data => acb_dma_slave_response_pipe_read_data,
      write_req => acb_dma_slave_response_pipe_write_req,
      write_ack => acb_dma_slave_response_pipe_write_ack,
      write_data => acb_dma_slave_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  afb_init_imem_response_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe afb_init_imem_response",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => afb_init_imem_response_pipe_read_req,
      read_ack => afb_init_imem_response_pipe_read_ack,
      read_data => afb_init_imem_response_pipe_read_data,
      write_req => afb_init_imem_response_pipe_write_req,
      write_ack => afb_init_imem_response_pipe_write_ack,
      write_data => afb_init_imem_response_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe afb_request_to_engine depth set to 0 since it is a P2P pipe.
  afb_request_to_engine_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe afb_request_to_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 74,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => afb_request_to_engine_pipe_read_req,
      read_ack => afb_request_to_engine_pipe_read_ack,
      read_data => afb_request_to_engine_pipe_read_data,
      write_req => afb_request_to_engine_pipe_write_req,
      write_ack => afb_request_to_engine_pipe_write_ack,
      write_data => afb_request_to_engine_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- pipe afb_response_from_engine depth set to 0 since it is a P2P pipe.
  afb_response_from_engine_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe afb_response_from_engine",
      num_reads => 1,
      num_writes => 1,
      data_width => 33,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => afb_response_from_engine_pipe_read_req,
      read_ack => afb_response_from_engine_pipe_read_ack,
      read_data => afb_response_from_engine_pipe_read_data,
      write_req => afb_response_from_engine_pipe_write_req,
      write_ack => afb_response_from_engine_pipe_write_ack,
      write_data => afb_response_from_engine_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  engine_retire_trace_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe engine_retire_trace",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => engine_retire_trace_pipe_read_req,
      read_ack => engine_retire_trace_pipe_read_ack,
      read_data => engine_retire_trace_pipe_read_data,
      write_req => engine_retire_trace_pipe_write_req,
      write_ack => engine_retire_trace_pipe_write_ack,
      write_data => engine_retire_trace_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- this is marked as a non-blocking pipe... InputPorts should take care of it! 
  noblock_afb_init_imem_request_inst:  PipeBase -- 
    generic map( -- 
      name => "pipe noblock_afb_init_imem_request",
      num_reads => 1,
      num_writes => 1,
      data_width => 75,
      lifo_mode => false,
      signal_mode => false,
      shift_register_mode => false,
      bypass => false,
      depth => 2 --
    )
    port map( -- 
      read_req => noblock_afb_init_imem_request_pipe_read_req,
      read_ack => noblock_afb_init_imem_request_pipe_read_ack,
      read_data => noblock_afb_init_imem_request_pipe_read_data,
      write_req => noblock_afb_init_imem_request_pipe_write_req,
      write_ack => noblock_afb_init_imem_request_pipe_write_ack,
      write_data => noblock_afb_init_imem_request_pipe_write_data,
      clk => clk, reset => reset -- 
    ); -- 
  -- 
end struct;
