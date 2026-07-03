library kcu105_core_lib;

library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library simpleUartLib;
use simpleUartLib.all;

library myUartLib;
use myUartLib.all;

entity kcu105_fpga_top is 
port(
    ------------------------------------------------------
    -- UARTS
    ------------------------------------------------------
    DEBUG_UART_RX : in std_logic_vector(0 downto 0);
    DEBUG_UART_TX : out std_logic_vector(0 downto 0);
    SERIAL_UART_RX : in std_logic_vector(0 downto 0);
    SERIAL_UART_TX : out std_logic_vector(0 downto 0);
    --dummy_port_in : in std_logic;
    ------------------------------------------------------
    -- CPU Mode
    ------------------------------------------------------
    --CPU_MODE : out std_logic_vector(1 downto 0);
    
    ------------------------------------------------------
    -- Ethernet SGMII Interface
    ------------------------------------------------------
    phy_sgmii_tx_p : out std_logic;
    phy_sgmii_tx_n : out std_logic;
    phy_sgmii_rx_p : in std_logic;
    phy_sgmii_rx_n : in std_logic;
    phy_sgmii_clk_p : in std_logic;
    phy_sgmii_clk_n : in std_logic;
    
    -- Ethernet Management Interface
    --phy_reset_n : out std_logic;
    --phy_mdio : inout std_logic;
    --phy_mdc : out std_logic;
    phy_int_n : in std_logic;
    phy_reset_n : out std_logic;
    -- Debug/Status
    led : out std_logic_vector(7 downto 0);
    --dummy_port_in : in std_logic;  -- Not used, commented out
    
    ------------------------------------------------------
    -- Clock and Reset
    ------------------------------------------------------
    clk_rst : in std_logic;
    clk_in_p : in std_logic;
    clk_in_n : in std_logic;
    
    ------------------------------------------------------
    -- DRAM signals
    ------------------------------------------------------
    c0_sys_clk_p : in STD_LOGIC;
    c0_sys_clk_n : in STD_LOGIC;
    c0_ddr4_act_n : out STD_LOGIC;
    c0_ddr4_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    c0_ddr4_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_bg : out STD_LOGIC_VECTOR ( 0 downto 0 );
    c0_ddr4_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cs_n : out STD_LOGIC_VECTOR ( 0 downto 0 );
    c0_ddr4_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_reset_n : out STD_LOGIC;
    c0_ddr4_dm_dbi_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr4_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 )
);
end entity;

architecture structure of kcu105_fpga_top is

------------------------------------------------------
-- Component: kcu105_core (UPDATED to match new entity)
------------------------------------------------------
component kcu105_core is 
port( 
    CLOCK_80 : in std_logic_vector(0 downto 0);
    CLOCK_TO_DRAMCTRL_BRIDGE : in std_logic_vector(0 downto 0);
    CLOCK_TO_NIC : in std_logic_vector(0 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_data : in std_logic_vector(7 downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_req  : in std_logic_vector(0  downto 0);
    CONSOLE_to_SERIAL_RX_pipe_write_ack  : out std_logic_vector(0  downto 0);
    DRAM_CONTROLLER_TO_ACB_BRIDGE : in std_logic_vector(521 downto 0);
    MAC_TO_NIC_pipe_write_data : in std_logic_vector(9 downto 0);
    MAC_TO_NIC_pipe_write_req  : in std_logic_vector(0  downto 0);
    MAC_TO_NIC_pipe_write_ack  : out std_logic_vector(0  downto 0);
    MAX_ACB_TAP1_ADDR : in std_logic_vector(35 downto 0);
    MEM_INVALIDATE_pipe_write_data : in std_logic_vector(31 downto 0);
    MEM_INVALIDATE_pipe_write_req  : in std_logic_vector(0  downto 0);
    MEM_INVALIDATE_pipe_write_ack  : out std_logic_vector(0  downto 0);
    MIN_ACB_TAP1_ADDR : in std_logic_vector(35 downto 0);
    RESET_TO_DRAMCTRL_BRIDGE : in std_logic_vector(0 downto 0);
    RESET_TO_NIC : in std_logic_vector(0 downto 0);
    RESET_TO_PROCESSOR : in std_logic_vector(0 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_data : in std_logic_vector(7 downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_req  : in std_logic_vector(0  downto 0);
    SOC_MONITOR_to_DEBUG_pipe_write_ack  : out std_logic_vector(0  downto 0);
    THREAD_RESET : in std_logic_vector(3 downto 0);
    ACB_BRIDGE_TO_DRAM_CONTROLLER : out std_logic_vector(612 downto 0);
    MEM_INVALIDATE_ACK_pipe_read_data : out std_logic_vector(0 downto 0);
    MEM_INVALIDATE_ACK_pipe_read_req  : in std_logic_vector(0  downto 0);
    MEM_INVALIDATE_ACK_pipe_read_ack  : out std_logic_vector(0  downto 0);
    NIC_DEBUG_SIGNAL : out std_logic_vector(255 downto 0);
    NIC_MAC_RESETN : out std_logic_vector(0 downto 0);
    NIC_TO_MAC_pipe_read_data : out std_logic_vector(9 downto 0);
    NIC_TO_MAC_pipe_read_req  : in std_logic_vector(0  downto 0);
    NIC_TO_MAC_pipe_read_ack  : out std_logic_vector(0  downto 0);
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
);
end component;

for kcu105_core_inst : kcu105_core
    use entity kcu105_core_lib.kcu105_core;

------------------------------------------------------
-- Component: ETH_TOP (Ethernet MAC with SGMII)
-- CRITICAL: CLKREF_P/N is the 125MHz differential clock from PHY
-- Do NOT add separate phy_sgmii_clk_p/n ports - that creates illegal duplicate connection!
------------------------------------------------------
component ETH_TOP is
port(
    -- Clock: 125MHz LVDS reference from PHY and Reset
    clk_100mhz_ibufg : in std_logic;
    --CLKREF_P : in std_logic;
    --CLKREF_N : in std_logic; 
    reset : in std_logic;
    --dummy_port_in : in std_logic;
    -- Leds and debug
    led : out std_logic_vector(7 downto 0);
    
    clk_125mhz_int : out std_logic;
    clock_100mhz_int : out std_logic;
    clock_70mhz_int : out std_logic;
    rst_125mhz_int : out std_logic; 

    -- Ethernet: 1000BASE-T SGMII (TX/RX data only - clock is CLKREF above!)
    phy_sgmii_rx_p : in std_logic; 
    phy_sgmii_rx_n : in std_logic;
    phy_sgmii_tx_p : out std_logic;
    phy_sgmii_tx_n : out std_logic;
    phy_int_n : in std_logic;
    phy_reset_n : out std_logic;
    --phy_mdio : inout std_logic;
    --phy_mdc : out std_logic;
    phy_sgmii_clk_p : in std_logic;
    phy_sgmii_clk_n : in std_logic;
    -- AHIR PIPES
    rx_pipe_data : out std_logic_vector(9 downto 0);
    rx_pipe_ack : out std_logic_vector(0 downto 0);
    rx_pipe_req : in std_logic_vector(0 downto 0);
      
    tx_pipe_data : in std_logic_vector(9 downto 0);
    tx_pipe_ack : in std_logic_vector(0 downto 0);
    tx_pipe_req : out std_logic_vector(0 downto 0)
    --count_125 : out std_logic_vector(9 downto 0);
    --count_100 : out std_logic_vector(9 downto 0)
);
end component;

------------------------------------------------------
-- Component: DDR4 Memory Controller
------------------------------------------------------
COMPONENT ddr4_0
PORT (
    c0_init_calib_complete : OUT STD_LOGIC;
    dbg_clk : OUT STD_LOGIC;
    c0_sys_clk_p : IN STD_LOGIC;
    c0_sys_clk_n : IN STD_LOGIC;
    dbg_bus : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    c0_ddr4_adr : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    c0_ddr4_ba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    c0_ddr4_cke : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_cs_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_dm_dbi_n : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    c0_ddr4_dq : INOUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    c0_ddr4_dqs_c : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    c0_ddr4_dqs_t : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    c0_ddr4_odt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_bg : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_reset_n : OUT STD_LOGIC;
    c0_ddr4_act_n : OUT STD_LOGIC;
    c0_ddr4_ck_c : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_ck_t : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    c0_ddr4_ui_clk : OUT STD_LOGIC;
    c0_ddr4_ui_clk_sync_rst : OUT STD_LOGIC;
    c0_ddr4_app_en : IN STD_LOGIC;
    c0_ddr4_app_hi_pri : IN STD_LOGIC;
    c0_ddr4_app_wdf_end : IN STD_LOGIC;
    c0_ddr4_app_wdf_wren : IN STD_LOGIC;
    c0_ddr4_app_rd_data_end : OUT STD_LOGIC;
    c0_ddr4_app_rd_data_valid : OUT STD_LOGIC;
    c0_ddr4_app_rdy : OUT STD_LOGIC;
    c0_ddr4_app_wdf_rdy : OUT STD_LOGIC;
    c0_ddr4_app_addr : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
    c0_ddr4_app_cmd : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    c0_ddr4_app_wdf_data : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    c0_ddr4_app_wdf_mask : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    c0_ddr4_app_rd_data : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    addn_ui_clkout1 : OUT STD_LOGIC;
    sys_rst : IN STD_LOGIC
);
END COMPONENT;

------------------------------------------------------
-- Component: UARTs
------------------------------------------------------
component mySelfTuningUart is
port (
    clk, reset: in std_logic;
    UART_RX: in std_logic_vector(0 downto 0);
    UART_TX: out std_logic_vector(0 downto 0);
    TX_to_CONSOLE_pipe_write_data: in std_logic_vector(7 downto 0);
    TX_to_CONSOLE_pipe_write_req:  in std_logic_vector(0 downto 0);
    TX_to_CONSOLE_pipe_write_ack:  out std_logic_vector(0 downto 0);
    CONSOLE_to_RX_pipe_read_data : out std_logic_vector(7 downto 0);
    CONSOLE_to_RX_pipe_read_req :  in std_logic_vector(0 downto 0);
    CONSOLE_to_RX_pipe_read_ack :  out std_logic_vector(0 downto 0)
);
end component mySelfTuningUart;

component uartTopPortConfigurableExt is
port (
    reset     : in  std_logic;
    clk       : in  std_logic;
    soft_reset: in std_logic;
    serIn     : in  std_logic;
    serOut    : out std_logic;
    uart_rx_pipe_read_data:  out  std_logic_vector (7 downto 0);
    uart_rx_pipe_read_req:   in   std_logic_vector (0 downto 0);
    uart_rx_pipe_read_ack:   out  std_logic_vector (0 downto 0);
    uart_tx_pipe_write_data: in   std_logic_vector (7 downto 0);
    uart_tx_pipe_write_req:  in   std_logic_vector (0 downto 0);
    uart_tx_pipe_write_ack:  out  std_logic_vector (0 downto 0);
    baudFreq  : in std_logic_vector(31 downto 0);
    baudLimit : in std_logic_vector(31 downto 0)
);
end component;

------------------------------------------------------
-- Component: Clock Wizard (80MHz for processor)
------------------------------------------------------
component clk_wiz_80 is
Port (
    clk_out1 : out STD_LOGIC;
    clk_out2 :  out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
);
end component;


------------------------------------------------------
-- Component: VIO for processor reset
------------------------------------------------------
COMPONENT vio_4
PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out2 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out3 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END COMPONENT;

------------------------------------------------------
-- Component: ILA for DRAM debug
------------------------------------------------------


------------------------------------------------------
-- Signal Declarations
------------------------------------------------------

-- UART signals
signal CONSOLE_to_SERIAL_RX_pipe_write_data : std_logic_vector(7 downto 0);
signal CONSOLE_to_SERIAL_RX_pipe_write_req  : std_logic_vector(0  downto 0);
signal CONSOLE_to_SERIAL_RX_pipe_write_ack  : std_logic_vector(0  downto 0);
signal RESET_TO_PROCESSOR : std_logic_vector(0 downto 0);
signal SOC_MONITOR_to_DEBUG_pipe_write_data : std_logic_vector(7 downto 0);
signal SOC_MONITOR_to_DEBUG_pipe_write_req  : std_logic_vector(0  downto 0);
signal SOC_MONITOR_to_DEBUG_pipe_write_ack  : std_logic_vector(0  downto 0);
signal THREAD_RESET : std_logic_vector(3 downto 0);
signal PROCESSOR_MODE : std_logic_vector(15 downto 0);
signal SERIAL_TX_to_CONSOLE_pipe_read_data : std_logic_vector(7 downto 0);
signal SERIAL_TX_to_CONSOLE_pipe_read_req  : std_logic_vector(0  downto 0);
signal SERIAL_TX_to_CONSOLE_pipe_read_ack  : std_logic_vector(0  downto 0);
signal SOC_DEBUG_to_MONITOR_pipe_read_data : std_logic_vector(7 downto 0);
signal SOC_DEBUG_to_MONITOR_pipe_read_req  : std_logic_vector(0  downto 0);
signal SOC_DEBUG_to_MONITOR_pipe_read_ack  : std_logic_vector(0  downto 0);
signal UART_BAUD_FREQ :  std_logic_vector(31 downto 0);
signal UART_BAUD_LIMIT : std_logic_vector(31 downto 0);
signal UART_SOFT_RESET : std_logic_vector(0 downto 0);

-- DRAM signals
signal ACB_BRIDGE_TO_DRAM_CONTROLLER : std_logic_vector(612 downto 0);
signal DRAM_CONTROLLER_TO_ACB_BRIDGE : std_logic_vector(521 downto 0);

-- Ethernet MAC<->NIC pipe signals

signal MAC_TO_NIC_pipe_write_data : std_logic_vector(9 downto 0);
attribute DONT_TOUCH : string;
attribute DONT_TOUCH of MAC_TO_NIC_pipe_write_data : signal is "TRUE";

signal MAC_TO_NIC_pipe_write_req  : std_logic_vector(0 downto 0);
attribute DONT_TOUCH of MAC_TO_NIC_pipe_write_req : signal is "TRUE";

signal MAC_TO_NIC_pipe_write_ack  : std_logic_vector(0 downto 0);
attribute DONT_TOUCH of MAC_TO_NIC_pipe_write_ack : signal is "TRUE";

signal NIC_TO_MAC_pipe_read_data  : std_logic_vector(9 downto 0);
attribute DONT_TOUCH of NIC_TO_MAC_pipe_read_data : signal is "TRUE";

signal NIC_TO_MAC_pipe_read_req   : std_logic_vector(0 downto 0);
attribute DONT_TOUCH of NIC_TO_MAC_pipe_read_req : signal is "TRUE";

signal NIC_TO_MAC_pipe_read_ack   : std_logic_vector(0 downto 0);
attribute DONT_TOUCH of NIC_TO_MAC_pipe_read_ack : signal is "TRUE";

signal NIC_MAC_RESETN : std_logic_vector(0 downto 0);
signal unused_rst : std_logic;
signal NIC_DEBUG_SIGNAL : std_logic_vector(255 downto 0);

-- Clock and reset signals
signal CPU_MODE_SIG : std_logic_vector(1 downto 0);
signal CPU_RESET, DEBUG_MODE: std_logic_vector (0 downto 0);
signal CLK_80 : std_logic_vector(0 downto 0);
signal CLK_100 : std_logic;
signal clk_wizard_locked: std_logic_vector (0 downto 0);
signal MIG7_UI_CLOCK: std_logic_vector( 0 downto 0);
--signal clk_rst :  std_logic;
-- Ethernet clock from ETH_TOP
signal clk_125mhz_int : std_logic;
signal CLOCK_TO_NIC : std_logic_vector(0 downto 0);
signal RESET_TO_NIC : std_logic_vector(0 downto 0);

-- Address tap configuration (NIC address space)
signal MAX_ACB_TAP1_ADDR : std_logic_vector(35 downto 0) := X"0_FFF1_0000";
signal MIN_ACB_TAP1_ADDR : std_logic_vector(35 downto 0) := X"0_FFA1_0000";

begin 

------------------------------------------------------
-- CPU Mode mapping
------------------------------------------------------
CPU_MODE_SIG <= PROCESSOR_MODE(1 downto 0);
--CPU_MODE <= CPU_MODE_SIG;

THREAD_RESET(0) <= CPU_RESET(0);
THREAD_RESET(1) <= DEBUG_MODE(0);
THREAD_RESET(2) <= '0';
THREAD_RESET(3) <= '0';

------------------------------------------------------
-- Clock Wizard: 80MHz for processor
------------------------------------------------------
clk_wiz_inst : clk_wiz_80
Port Map (
    clk_out1 => CLK_80(0),
    clk_out2 => CLK_100,
    reset => clk_rst,
    locked => clk_wizard_locked(0),
    clk_in1_p => clk_in_p,
    clk_in1_n => clk_in_n
);

------------------------------------------------------
-- VIO: Virtual I/O for processor reset control
------------------------------------------------------
vio_inst : vio_4
PORT MAP (
    clk => CLK_80(0),
    probe_in0 => CPU_MODE_SIG,
    probe_out0 => RESET_TO_PROCESSOR,
    probe_out1 => DEBUG_MODE,
    probe_out2 => RESET_TO_NIC, 
    probe_out3(0)  =>   unused_rst-- EXTERNAL_INTERRUPT removed (now internal to core)
);

------------------------------------------------------
-- RESET_TO_NIC: Use clk_rst for simplicity
-- (VCU128 uses separate VIO, but clk_rst works for KCU105)
------------------------------------------------------
--RESET_TO_NIC(0) <= clk_rst;
CLOCK_TO_NIC(0) <= clk_125mhz_int;

------------------------------------------------------
-- kcu105_core instantiation
------------------------------------------------------
kcu105_core_inst : kcu105_core
port map(
    CLOCK_80 => CLK_80,
    CLOCK_TO_DRAMCTRL_BRIDGE => MIG7_UI_CLOCK,
    CLOCK_TO_NIC => CLOCK_TO_NIC,

    CONSOLE_to_SERIAL_RX_pipe_write_data => CONSOLE_to_SERIAL_RX_pipe_write_data,
    CONSOLE_to_SERIAL_RX_pipe_write_req  => CONSOLE_to_SERIAL_RX_pipe_write_req,
    CONSOLE_to_SERIAL_RX_pipe_write_ack  => CONSOLE_to_SERIAL_RX_pipe_write_ack,

    RESET_TO_PROCESSOR => RESET_TO_PROCESSOR,
    RESET_TO_DRAMCTRL_BRIDGE => RESET_TO_PROCESSOR,
    RESET_TO_NIC => RESET_TO_NIC,

    SOC_MONITOR_to_DEBUG_pipe_write_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    SOC_MONITOR_to_DEBUG_pipe_write_req  => SOC_MONITOR_to_DEBUG_pipe_write_req,
    SOC_MONITOR_to_DEBUG_pipe_write_ack  => SOC_MONITOR_to_DEBUG_pipe_write_ack,

    THREAD_RESET => THREAD_RESET,
    PROCESSOR_MODE => PROCESSOR_MODE,

    ACB_BRIDGE_TO_DRAM_CONTROLLER => ACB_BRIDGE_TO_DRAM_CONTROLLER,
    DRAM_CONTROLLER_TO_ACB_BRIDGE => DRAM_CONTROLLER_TO_ACB_BRIDGE,

    -- Ethernet MAC<->NIC pipes
    MAC_TO_NIC_pipe_write_data => MAC_TO_NIC_pipe_write_data,
    MAC_TO_NIC_pipe_write_req => MAC_TO_NIC_pipe_write_req,
    MAC_TO_NIC_pipe_write_ack => MAC_TO_NIC_pipe_write_ack,
    NIC_TO_MAC_pipe_read_data => NIC_TO_MAC_pipe_read_data,
    NIC_TO_MAC_pipe_read_req => NIC_TO_MAC_pipe_read_req,
    NIC_TO_MAC_pipe_read_ack => NIC_TO_MAC_pipe_read_ack,
    NIC_MAC_RESETN => NIC_MAC_RESETN,
    NIC_DEBUG_SIGNAL => NIC_DEBUG_SIGNAL,

    -- Address tap configuration
    MAX_ACB_TAP1_ADDR => MAX_ACB_TAP1_ADDR,
    MIN_ACB_TAP1_ADDR => MIN_ACB_TAP1_ADDR,

    SERIAL_TX_to_CONSOLE_pipe_read_data => SERIAL_TX_to_CONSOLE_pipe_read_data,
    SERIAL_TX_to_CONSOLE_pipe_read_req  => SERIAL_TX_to_CONSOLE_pipe_read_req,
    SERIAL_TX_to_CONSOLE_pipe_read_ack  => SERIAL_TX_to_CONSOLE_pipe_read_ack,

    SOC_DEBUG_to_MONITOR_pipe_read_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    SOC_DEBUG_to_MONITOR_pipe_read_req  => SOC_DEBUG_to_MONITOR_pipe_read_req,
    SOC_DEBUG_to_MONITOR_pipe_read_ack  => SOC_DEBUG_to_MONITOR_pipe_read_ack,

    MEM_INVALIDATE_pipe_write_data => "00000000000000000000000000000000",
    MEM_INVALIDATE_pipe_write_req  => "0",
    MEM_INVALIDATE_pipe_write_ack  => open,
    MEM_INVALIDATE_ACK_pipe_read_data => open,
    MEM_INVALIDATE_ACK_pipe_read_req => "1", 
    MEM_INVALIDATE_ACK_pipe_read_ack => open,

    UART_BAUD_FREQ => UART_BAUD_FREQ,
    UART_BAUD_LIMIT => UART_BAUD_LIMIT,
    UART_SOFT_RESET => UART_SOFT_RESET,

    clk => '0',
    reset => '0'
);

------------------------------------------------------
-- ETH_TOP: Ethernet MAC with SGMII PCS/PMA
------------------------------------------------------
ETH_TOP_inst : ETH_TOP 
port map(
    
    --CLKREF_P => c0_sys_clk_p,
    --CLKREF_N => c0_sys_clk_n,
    clk_100mhz_ibufg => CLK_100,
    reset => clk_rst,
    --reset => NIC_MAC_RESETN(0),
    --dummy_port_in => dummy_port_in,-- in std_logic;
    -- LEDs and debug
    led => led,
    
    clk_125mhz_int => clk_125mhz_int,
    clock_100mhz_int => open,
    clock_70mhz_int => open,
    rst_125mhz_int => open,
    
    -- SGMII differential pairs (TX/RX data only, NO clock!)
    phy_sgmii_rx_p => phy_sgmii_rx_p,
    phy_sgmii_rx_n => phy_sgmii_rx_n,
    phy_sgmii_tx_p => phy_sgmii_tx_p,
    phy_sgmii_tx_n => phy_sgmii_tx_n,
    
    -- PHY management
    phy_int_n => phy_int_n,
    phy_reset_n => phy_reset_n, 
    
    
    --phy_mdio => phy_mdio,
    --phy_mdc => phy_mdc,
    phy_sgmii_clk_p => phy_sgmii_clk_p,
    phy_sgmii_clk_n => phy_sgmii_clk_n,
    -- AHIR pipes to/from NIC
    rx_pipe_data => MAC_TO_NIC_pipe_write_data,
    rx_pipe_ack => MAC_TO_NIC_pipe_write_req,
    rx_pipe_req => MAC_TO_NIC_pipe_write_ack,
    
    tx_pipe_data => NIC_TO_MAC_pipe_read_data,
    tx_pipe_ack => NIC_TO_MAC_pipe_read_ack,
    tx_pipe_req => NIC_TO_MAC_pipe_read_req
    --count_100 => count_100,
    --count_125 => count_125
);

-- PHY reset from board reset
--phy_reset_n <= not clk_rst;

------------------------------------------------------
-- DDR4 Memory Controller
------------------------------------------------------
MIG7_UI_CLOCK(0) <= DRAM_CONTROLLER_TO_ACB_BRIDGE(521);

ddr4_0_inst : ddr4_0
PORT MAP (
    c0_init_calib_complete => DRAM_CONTROLLER_TO_ACB_BRIDGE(520),
    --dbg_clk => open,
    c0_sys_clk_p => c0_sys_clk_p,
    c0_sys_clk_n => c0_sys_clk_n,
    --dbg_bus => open,
    c0_ddr4_adr => c0_ddr4_adr,
    c0_ddr4_ba => c0_ddr4_ba,
    c0_ddr4_cke => c0_ddr4_cke,
    c0_ddr4_cs_n => c0_ddr4_cs_n,
    c0_ddr4_dm_dbi_n => c0_ddr4_dm_dbi_n,
    c0_ddr4_dq => c0_ddr4_dq,
    c0_ddr4_dqs_c => c0_ddr4_dqs_c,
    c0_ddr4_dqs_t => c0_ddr4_dqs_t,
    c0_ddr4_odt => c0_ddr4_odt,
    c0_ddr4_bg => c0_ddr4_bg,
    c0_ddr4_reset_n => c0_ddr4_reset_n,
    c0_ddr4_act_n => c0_ddr4_act_n,
    c0_ddr4_ck_c => c0_ddr4_ck_c,
    c0_ddr4_ck_t => c0_ddr4_ck_t,
    c0_ddr4_ui_clk => DRAM_CONTROLLER_TO_ACB_BRIDGE(521),
    c0_ddr4_ui_clk_sync_rst => DRAM_CONTROLLER_TO_ACB_BRIDGE(0),
    c0_ddr4_app_en => ACB_BRIDGE_TO_DRAM_CONTROLLER(581),
    c0_ddr4_app_hi_pri => '0',
    c0_ddr4_app_wdf_end => ACB_BRIDGE_TO_DRAM_CONTROLLER(68),
    c0_ddr4_app_wdf_wren => ACB_BRIDGE_TO_DRAM_CONTROLLER(3), 
    c0_ddr4_app_rd_data_end => DRAM_CONTROLLER_TO_ACB_BRIDGE(7),
    c0_ddr4_app_rd_data_valid => DRAM_CONTROLLER_TO_ACB_BRIDGE(6),
    c0_ddr4_app_rdy => DRAM_CONTROLLER_TO_ACB_BRIDGE(5), 
    c0_ddr4_app_wdf_rdy => DRAM_CONTROLLER_TO_ACB_BRIDGE(4),
    c0_ddr4_app_addr => ACB_BRIDGE_TO_DRAM_CONTROLLER(612 DOWNTO 585),
    c0_ddr4_app_cmd => ACB_BRIDGE_TO_DRAM_CONTROLLER(584 DOWNTO 582),
    c0_ddr4_app_wdf_data => ACB_BRIDGE_TO_DRAM_CONTROLLER(580 DOWNTO 69),
    c0_ddr4_app_wdf_mask => ACB_BRIDGE_TO_DRAM_CONTROLLER(67 DOWNTO 4),
    c0_ddr4_app_rd_data => DRAM_CONTROLLER_TO_ACB_BRIDGE(519 downto 8),
    --addn_ui_clkout1 => open,
    sys_rst => clk_rst
);

------------------------------------------------------
-- ILA: Ethernet debug
------------------------------------------------------

------------------------------------------------------
-- ILA: DRAM debug
------------------------------------------------------


------------------------------------------------------
-- Debug UART
------------------------------------------------------
debugUart_inst : mySelfTuningUart
port map (
    clk => CLK_80(0), 
    reset => RESET_TO_PROCESSOR(0),
    UART_RX => DEBUG_UART_RX,
    UART_TX => DEBUG_UART_TX, 
    TX_to_CONSOLE_pipe_write_data => SOC_DEBUG_to_MONITOR_pipe_read_data,
    TX_to_CONSOLE_pipe_write_req => SOC_DEBUG_to_MONITOR_pipe_read_ack,
    TX_to_CONSOLE_pipe_write_ack => SOC_DEBUG_to_MONITOR_pipe_read_req,
    CONSOLE_to_RX_pipe_read_data => SOC_MONITOR_to_DEBUG_pipe_write_data,
    CONSOLE_to_RX_pipe_read_req => SOC_MONITOR_to_DEBUG_pipe_write_ack, 
    CONSOLE_to_RX_pipe_read_ack => SOC_MONITOR_to_DEBUG_pipe_write_req 
);

------------------------------------------------------
-- Serial UART
------------------------------------------------------
serial_uart_inst: uartTopPortConfigurableExt
port map (
    clk => CLK_80(0),
    reset => RESET_TO_PROCESSOR(0),
    soft_reset => UART_SOFT_RESET(0),
    serIn  => SERIAL_UART_RX(0), 
    serOut => SERIAL_UART_TX(0), 
    uart_rx_pipe_read_data   =>  CONSOLE_to_SERIAL_RX_pipe_write_data,
    uart_rx_pipe_read_req    => CONSOLE_to_SERIAL_RX_pipe_write_ack,
    uart_rx_pipe_read_ack    => CONSOLE_to_SERIAL_RX_pipe_write_req,
    uart_tx_pipe_write_data  => SERIAL_TX_to_CONSOLE_pipe_read_data,
    uart_tx_pipe_write_req   => SERIAL_TX_to_CONSOLE_pipe_read_ack, 
    uart_tx_pipe_write_ack   => SERIAL_TX_to_CONSOLE_pipe_read_req, 
    baudFreq =>   UART_BAUD_FREQ,
    baudLimit =>  UART_BAUD_LIMIT
); 

end structure;
