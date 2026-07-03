

library ieee;
use ieee.std_logic_1164.all;

library aparajit_lib;
library nic_subsystem_lib;
library DualClockedQueue_lib;
library acb_dram_controller_bridge_lib;

library ahir;
use ahir.BaseComponents.all;

entity aparajit_1p1e_red_dram_eth_top is
port(
    clk_rst      : in  std_logic;
    clk_in_p     : in  std_logic;
    clk_in_n     : in  std_logic;

    -- 125 MHz differential for ETH_TOP SGMII PCS/PMA
    clk_125mhz_p : in  std_logic;
    clk_125mhz_n : in  std_logic;

    -- UARTs
    DEBUG_UART_RX  : in  std_logic_vector(0 downto 0);
    DEBUG_UART_TX  : out std_logic_vector(0 downto 0);
    SERIAL_UART_RX : in  std_logic_vector(0 downto 0);
    SERIAL_UART_TX : out std_logic_vector(0 downto 0);

    -- Ethernet SGMII
    phy_sgmii_tx_p  : out   std_logic;
    phy_sgmii_tx_n  : out   std_logic;
    phy_sgmii_rx_p  : in    std_logic;
    phy_sgmii_rx_n  : in    std_logic;
    phy_sgmii_clk_p : in    std_logic;
    phy_sgmii_clk_n : in    std_logic;
    phy_reset_n     : out   std_logic;
    phy_mdio        : inout std_logic;
    phy_mdc         : out   std_logic;
    phy_int_n       : in    std_logic;
    led             : out   std_logic_vector(7 downto 0);

    -- DDR4
    c0_sys_clk_p     : in    std_logic;
    c0_sys_clk_n     : in    std_logic;
    c0_ddr4_act_n    : out   std_logic;
    c0_ddr4_adr      : out   std_logic_vector(16 downto 0);
    c0_ddr4_ba       : out   std_logic_vector(1  downto 0);
    c0_ddr4_bg       : out   std_logic_vector(0  downto 0);
    c0_ddr4_cke      : out   std_logic_vector(0  downto 0);
    c0_ddr4_odt      : out   std_logic_vector(0  downto 0);
    c0_ddr4_cs_n     : out   std_logic_vector(0  downto 0);
    c0_ddr4_ck_t     : out   std_logic_vector(0  downto 0);
    c0_ddr4_ck_c     : out   std_logic_vector(0  downto 0);
    c0_ddr4_reset_n  : out   std_logic;
    c0_ddr4_dm_dbi_n : inout std_logic_vector(7  downto 0);
    c0_ddr4_dq       : inout std_logic_vector(63 downto 0);
    c0_ddr4_dqs_c    : inout std_logic_vector(7  downto 0);
    c0_ddr4_dqs_t    : inout std_logic_vector(7  downto 0)
);
end entity aparajit_1p1e_red_dram_eth_top;

architecture structure of aparajit_1p1e_red_dram_eth_top is

    -- =========================================================================
    -- aparajit_1p1e_red
    -- =========================================================================
    component aparajit_1p1e_red is
        port(
            ACB_DRAM_RESPONSE_pipe_write_data        : in  std_logic_vector(64  downto 0);
            ACB_DRAM_RESPONSE_pipe_write_req         : in  std_logic_vector(0   downto 0);
            ACB_DRAM_RESPONSE_pipe_write_ack         : out std_logic_vector(0   downto 0);
            -- NIC DMA request into processor memory (NIC is master)
            ACB_ETH_MASTER_REQUEST_pipe_write_data   : in  std_logic_vector(109 downto 0);
            ACB_ETH_MASTER_REQUEST_pipe_write_req    : in  std_logic_vector(0   downto 0);
            ACB_ETH_MASTER_REQUEST_pipe_write_ack    : out std_logic_vector(0   downto 0);
            -- aparajit DMA response back to NIC
            ACB_ETH_MASTER_RESPONSE_pipe_read_data   : out std_logic_vector(64  downto 0);
            ACB_ETH_MASTER_RESPONSE_pipe_read_req    : in  std_logic_vector(0   downto 0);
            ACB_ETH_MASTER_RESPONSE_pipe_read_ack    : out std_logic_vector(0   downto 0);
            -- aparajit config access to NIC register space (goes through
            -- eth_acb_to_afb internally, comes out as AFB_ETH_CONFIG_REQUEST)
            ACB_ETH_SLAVE_REQUEST_pipe_read_data     : out std_logic_vector(109 downto 0);
            ACB_ETH_SLAVE_REQUEST_pipe_read_req      : in  std_logic_vector(0   downto 0);
            ACB_ETH_SLAVE_REQUEST_pipe_read_ack      : out std_logic_vector(0   downto 0);
            -- NIC response to aparajit config accesses
            ACB_ETH_SLAVE_RESPONSE_pipe_write_data   : in  std_logic_vector(64  downto 0);
            ACB_ETH_SLAVE_RESPONSE_pipe_write_req    : in  std_logic_vector(0   downto 0);
            ACB_ETH_SLAVE_RESPONSE_pipe_write_ack    : out std_logic_vector(0   downto 0);
            -- AFB config request/response (after eth_acb_to_afb inside aparajit)
            AFB_ETH_CONFIG_REQUEST_pipe_read_data    : out std_logic_vector(73  downto 0);
            AFB_ETH_CONFIG_REQUEST_pipe_read_req     : in  std_logic_vector(0   downto 0);
            AFB_ETH_CONFIG_REQUEST_pipe_read_ack     : out std_logic_vector(0   downto 0);
            AFB_ETH_CONFIG_RESPONSE_pipe_write_data  : in  std_logic_vector(32  downto 0);
            AFB_ETH_CONFIG_RESPONSE_pipe_write_req   : in  std_logic_vector(0   downto 0);
            AFB_ETH_CONFIG_RESPONSE_pipe_write_ack   : out std_logic_vector(0   downto 0);
            -- PCIe: all tied off
            ACB_PCIE_MASTER_REQUEST_pipe_write_data  : in  std_logic_vector(109 downto 0);
            ACB_PCIE_MASTER_REQUEST_pipe_write_req   : in  std_logic_vector(0   downto 0);
            ACB_PCIE_MASTER_REQUEST_pipe_write_ack   : out std_logic_vector(0   downto 0);
            ACB_PCIE_MASTER_RESPONSE_pipe_read_data  : out std_logic_vector(64  downto 0);
            ACB_PCIE_MASTER_RESPONSE_pipe_read_req   : in  std_logic_vector(0   downto 0);
            ACB_PCIE_MASTER_RESPONSE_pipe_read_ack   : out std_logic_vector(0   downto 0);
            ACB_PCIE_SLAVE_REQUEST_pipe_read_data    : out std_logic_vector(109 downto 0);
            ACB_PCIE_SLAVE_REQUEST_pipe_read_req     : in  std_logic_vector(0   downto 0);
            ACB_PCIE_SLAVE_REQUEST_pipe_read_ack     : out std_logic_vector(0   downto 0);
            ACB_PCIE_SLAVE_RESPONSE_pipe_write_data  : in  std_logic_vector(64  downto 0);
            ACB_PCIE_SLAVE_RESPONSE_pipe_write_req   : in  std_logic_vector(0   downto 0);
            ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack   : out std_logic_vector(0   downto 0);
            AFB_PCIE_CONFIG_REQUEST_pipe_read_data   : out std_logic_vector(73  downto 0);
            AFB_PCIE_CONFIG_REQUEST_pipe_read_req    : in  std_logic_vector(0   downto 0);
            AFB_PCIE_CONFIG_REQUEST_pipe_read_ack    : out std_logic_vector(0   downto 0);
            AFB_PCIE_CONFIG_RESPONSE_pipe_write_data : in  std_logic_vector(32  downto 0);
            AFB_PCIE_CONFIG_RESPONSE_pipe_write_req  : in  std_logic_vector(0   downto 0);
            AFB_PCIE_CONFIG_RESPONSE_pipe_write_ack  : out std_logic_vector(0   downto 0);
            -- Misc
            CLUSTER_ID              : in  std_logic_vector(7  downto 0);
            DEBUG_UART_RX           : in  std_logic_vector(0  downto 0);
            ENGINE_CONFIG_ADDR_HIGH : in  std_logic_vector(31 downto 0);
            ENGINE_CONFIG_ADDR_LOW  : in  std_logic_vector(31 downto 0);
            ETH_CONFIG_ADDR_HIGH    : in  std_logic_vector(35 downto 0);
            ETH_CONFIG_ADDR_LOW     : in  std_logic_vector(35 downto 0);
            ETH_MEM_ADDR_HIGH       : in  std_logic_vector(35 downto 0);
            ETH_MEM_ADDR_LOW        : in  std_logic_vector(35 downto 0);
            INTERRUPT_FROM_ETH      : in  std_logic_vector(0  downto 0);
            INTERRUPT_FROM_PCIE     : in  std_logic_vector(0  downto 0);
            PCIE_CONFIG_ADDR_HIGH   : in  std_logic_vector(35 downto 0);
            PCIE_CONFIG_ADDR_LOW    : in  std_logic_vector(35 downto 0);
            PCIE_MEM_ADDR_HIGH      : in  std_logic_vector(35 downto 0);
            PCIE_MEM_ADDR_LOW       : in  std_logic_vector(35 downto 0);
            SERIAL_UART_RX          : in  std_logic_vector(0  downto 0);
            THREAD_RESET            : in  std_logic_vector(3  downto 0);
            ACB_DRAM_REQUEST_pipe_read_data : out std_logic_vector(109 downto 0);
            ACB_DRAM_REQUEST_pipe_read_req  : in  std_logic_vector(0   downto 0);
            ACB_DRAM_REQUEST_pipe_read_ack  : out std_logic_vector(0   downto 0);
            CPU_MODE       : out std_logic_vector(1 downto 0);
            DEBUG_UART_TX  : out std_logic_vector(0 downto 0);
            SERIAL_UART_TX : out std_logic_vector(0 downto 0);
            clk, reset     : in  std_logic
        );
    end component aparajit_1p1e_red;
    for aparajit_inst : aparajit_1p1e_red
        use entity aparajit_lib.aparajit_1p1e_red;

    -- =========================================================================
    -- nic_subsystem
    -- =========================================================================
    component nic_subsystem is
        port(
            ACB_TO_NIC_RESPONSE_pipe_write_data  : in  std_logic_vector(64  downto 0);
            ACB_TO_NIC_RESPONSE_pipe_write_req   : in  std_logic_vector(0   downto 0);
            ACB_TO_NIC_RESPONSE_pipe_write_ack   : out std_logic_vector(0   downto 0);
            AFB_TO_NIC_REQUEST_pipe_write_data   : in  std_logic_vector(73  downto 0);
            AFB_TO_NIC_REQUEST_pipe_write_req    : in  std_logic_vector(0   downto 0);
            AFB_TO_NIC_REQUEST_pipe_write_ack    : out std_logic_vector(0   downto 0);
            MAC_TO_NIC_DATA_pipe_write_data      : in  std_logic_vector(9   downto 0);
            MAC_TO_NIC_DATA_pipe_write_req       : in  std_logic_vector(0   downto 0);
            MAC_TO_NIC_DATA_pipe_write_ack       : out std_logic_vector(0   downto 0);
            NIC_DEBUG_SIGNAL                     : out std_logic_vector(255 downto 0);
            NIC_INTERRUPT_TO_PROCESSOR           : out std_logic_vector(0   downto 0);
            NIC_TO_ACB_REQUEST_pipe_read_data    : out std_logic_vector(109 downto 0);
            NIC_TO_ACB_REQUEST_pipe_read_req     : in  std_logic_vector(0   downto 0);
            NIC_TO_ACB_REQUEST_pipe_read_ack     : out std_logic_vector(0   downto 0);
            NIC_TO_AFB_RESPONSE_pipe_read_data   : out std_logic_vector(32  downto 0);
            NIC_TO_AFB_RESPONSE_pipe_read_req    : in  std_logic_vector(0   downto 0);
            NIC_TO_AFB_RESPONSE_pipe_read_ack    : out std_logic_vector(0   downto 0);
            NIC_TO_MAC_DATA_pipe_read_data       : out std_logic_vector(9   downto 0);
            NIC_TO_MAC_DATA_pipe_read_req        : in  std_logic_vector(0   downto 0);
            NIC_TO_MAC_DATA_pipe_read_ack        : out std_logic_vector(0   downto 0);
            NIC_TO_MAC_RESETN                    : out std_logic_vector(0   downto 0);
            clk, reset                           : in  std_logic
        );
    end component nic_subsystem;
    for nic_subsystem_inst : nic_subsystem
        use entity nic_subsystem_lib.nic_subsystem;

    -- =========================================================================
    -- ETH_TOP
    -- =========================================================================
    component ETH_TOP is
        port(
            clk_125mhz_p    : in    std_logic;
            clk_125mhz_n    : in    std_logic;
            reset           : in    std_logic;
            led             : out   std_logic_vector(7 downto 0);
            clk_125mhz_int  : out   std_logic;
            rst_125mhz_int  : out   std_logic;
            phy_sgmii_rx_p  : in    std_logic;
            phy_sgmii_rx_n  : in    std_logic;
            phy_sgmii_tx_p  : out   std_logic;
            phy_sgmii_tx_n  : out   std_logic;
            phy_sgmii_clk_p : in    std_logic;
            phy_sgmii_clk_n : in    std_logic;
            phy_int_n       : in    std_logic;
            phy_reset_n     : out   std_logic;
            phy_mdio        : inout std_logic;
            phy_mdc         : out   std_logic;
            rx_pipe_data    : out   std_logic_vector(9 downto 0);
            rx_pipe_ack     : out   std_logic_vector(0 downto 0);
            rx_pipe_req     : in    std_logic_vector(0 downto 0);
            tx_pipe_data    : in    std_logic_vector(9 downto 0);
            tx_pipe_ack     : in    std_logic_vector(0 downto 0);
            tx_pipe_req     : out   std_logic_vector(0 downto 0)
        );
    end component ETH_TOP;

    -- =========================================================================
    -- DualClockedQueue_ACB_req_wrap  (110-bit)
    -- Used for:
    --   PATH 1: NIC_TO_ACB_REQUEST  (125MHz -> CLK_60, NIC DMA req into memory)
    --   PATH 5: DRAM request        (CLK_60 -> MIG_UI_CLK)
    -- =========================================================================
    component DualClockedQueue_ACB_req_wrap is
        port(
            fifo_reset                 : in  std_logic_vector(0   downto 0);
            read_clk                   : in  std_logic_vector(0   downto 0);
            write_clk                  : in  std_logic_vector(0   downto 0);
            write_data_pipe_write_data : in  std_logic_vector(109 downto 0);
            write_data_pipe_write_req  : in  std_logic_vector(0   downto 0);
            write_data_pipe_write_ack  : out std_logic_vector(0   downto 0);
            read_data_pipe_read_data   : out std_logic_vector(109 downto 0);
            read_data_pipe_read_req    : in  std_logic_vector(0   downto 0);
            read_data_pipe_read_ack    : out std_logic_vector(0   downto 0);
            clk, reset                 : in  std_logic
        );
    end component;
    for DualClockedQueue_ETH_NIC_req_inst : DualClockedQueue_ACB_req_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_ACB_req_wrap;
    for DualClockedQueue_ACB_Proc_req_inst : DualClockedQueue_ACB_req_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_ACB_req_wrap;

    -- =========================================================================
    -- DualClockedQueue_ACB_resp_wrap  (65-bit)
    -- Used for:
    --   PATH 2: ACB_ETH_MASTER_RESPONSE (CLK_60 -> 125MHz, DMA resp back to NIC)
    
    --   PATH 6: DRAM response        (MIG_UI_CLK -> CLK_60)
    -- =========================================================================
    component DualClockedQueue_ACB_resp_wrap is
        port(
            fifo_reset                 : in  std_logic_vector(0  downto 0);
            read_clk                   : in  std_logic_vector(0  downto 0);
            write_clk                  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_data : in  std_logic_vector(64 downto 0);
            write_data_pipe_write_req  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_ack  : out std_logic_vector(0  downto 0);
            read_data_pipe_read_data   : out std_logic_vector(64 downto 0);
            read_data_pipe_read_req    : in  std_logic_vector(0  downto 0);
            read_data_pipe_read_ack    : out std_logic_vector(0  downto 0);
            clk, reset                 : in  std_logic
        );
    end component;
    for DualClockedQueue_ETH_master_resp_inst : DualClockedQueue_ACB_resp_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_ACB_resp_wrap;
    for DualClockedQueue_ACB_Proc_resp_inst : DualClockedQueue_ACB_resp_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_ACB_resp_wrap;

    -- =========================================================================
    -- DualClockedQueue_AFB_req_wrap  (74-bit)
    -- Used for PATH 3: AFB_ETH_CONFIG_REQUEST (CLK_60 -> 125MHz)
    -- =========================================================================
    component DualClockedQueue_AFB_req_wrap is
        port(
            fifo_reset                 : in  std_logic_vector(0  downto 0);
            read_clk                   : in  std_logic_vector(0  downto 0);
            write_clk                  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_data : in  std_logic_vector(73 downto 0);
            write_data_pipe_write_req  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_ack  : out std_logic_vector(0  downto 0);
            read_data_pipe_read_data   : out std_logic_vector(73 downto 0);
            read_data_pipe_read_req    : in  std_logic_vector(0  downto 0);
            read_data_pipe_read_ack    : out std_logic_vector(0  downto 0);
            clk, reset                 : in  std_logic
        );
    end component;
    for DualClockedQueue_AFB_req_inst : DualClockedQueue_AFB_req_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_AFB_req_wrap;

    -- =========================================================================
    -- DualClockedQueue_AFB_resp_wrap  (33-bit)
    -- Used for PATH 4: AFB_ETH_CONFIG_RESPONSE (125MHz -> CLK_60)
    -- =========================================================================
    component DualClockedQueue_AFB_resp_wrap is
        port(
            fifo_reset                 : in  std_logic_vector(0  downto 0);
            read_clk                   : in  std_logic_vector(0  downto 0);
            write_clk                  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_data : in  std_logic_vector(32 downto 0);
            write_data_pipe_write_req  : in  std_logic_vector(0  downto 0);
            write_data_pipe_write_ack  : out std_logic_vector(0  downto 0);
            read_data_pipe_read_data   : out std_logic_vector(32 downto 0);
            read_data_pipe_read_req    : in  std_logic_vector(0  downto 0);
            read_data_pipe_read_ack    : out std_logic_vector(0  downto 0);
            clk, reset                 : in  std_logic
        );
    end component;
    for DualClockedQueue_AFB_resp_inst : DualClockedQueue_AFB_resp_wrap
        use entity DualClockedQueue_lib.DualClockedQueue_AFB_resp_wrap;

    -- =========================================================================
    -- acb_dram_controller_bridge
    -- =========================================================================
    component acb_dram_controller_bridge is
        port(
            CORE_BUS_REQUEST_pipe_write_data : in  std_logic_vector(109 downto 0);
            CORE_BUS_REQUEST_pipe_write_req  : in  std_logic_vector(0   downto 0);
            CORE_BUS_REQUEST_pipe_write_ack  : out std_logic_vector(0   downto 0);
            DRAM_CONTROLLER_TO_ACB_BRIDGE    : in  std_logic_vector(521 downto 0);
            ACB_BRIDGE_TO_DRAM_CONTROLLER    : out std_logic_vector(612 downto 0);
            CORE_BUS_RESPONSE_pipe_read_data : out std_logic_vector(64  downto 0);
            CORE_BUS_RESPONSE_pipe_read_req  : in  std_logic_vector(0   downto 0);
            CORE_BUS_RESPONSE_pipe_read_ack  : out std_logic_vector(0   downto 0);
            clk, reset                       : in  std_logic
        );
    end component;
    for acb_dram_controller_bridge_inst : acb_dram_controller_bridge
        use entity acb_dram_controller_bridge_lib.acb_dram_controller_bridge;

    -- =========================================================================
    -- ddr4_0
    -- =========================================================================
    component ddr4_0 is
        port(
            c0_init_calib_complete    : out std_logic;
            dbg_clk                   : out std_logic;
            c0_sys_clk_p              : in  std_logic;
            c0_sys_clk_n              : in  std_logic;
            dbg_bus                   : out std_logic_vector(511 downto 0);
            c0_ddr4_adr               : out std_logic_vector(16  downto 0);
            c0_ddr4_ba                : out std_logic_vector(1   downto 0);
            c0_ddr4_cke               : out std_logic_vector(0   downto 0);
            c0_ddr4_cs_n              : out std_logic_vector(0   downto 0);
            c0_ddr4_dm_dbi_n          : inout std_logic_vector(7 downto 0);
            c0_ddr4_dq                : inout std_logic_vector(63 downto 0);
            c0_ddr4_dqs_c             : inout std_logic_vector(7  downto 0);
            c0_ddr4_dqs_t             : inout std_logic_vector(7  downto 0);
            c0_ddr4_odt               : out std_logic_vector(0   downto 0);
            c0_ddr4_bg                : out std_logic_vector(0   downto 0);
            c0_ddr4_reset_n           : out std_logic;
            c0_ddr4_act_n             : out std_logic;
            c0_ddr4_ck_c              : out std_logic_vector(0   downto 0);
            c0_ddr4_ck_t              : out std_logic_vector(0   downto 0);
            c0_ddr4_ui_clk            : out std_logic;
            c0_ddr4_ui_clk_sync_rst   : out std_logic;
            c0_ddr4_app_en            : in  std_logic;
            c0_ddr4_app_hi_pri        : in  std_logic;
            c0_ddr4_app_wdf_end       : in  std_logic;
            c0_ddr4_app_wdf_wren      : in  std_logic;
            c0_ddr4_app_rd_data_end   : out std_logic;
            c0_ddr4_app_rd_data_valid : out std_logic;
            c0_ddr4_app_rdy           : out std_logic;
            c0_ddr4_app_wdf_rdy       : out std_logic;
            c0_ddr4_app_addr          : in  std_logic_vector(27  downto 0);
            c0_ddr4_app_cmd           : in  std_logic_vector(2   downto 0);
            c0_ddr4_app_wdf_data      : in  std_logic_vector(511 downto 0);
            c0_ddr4_app_wdf_mask      : in  std_logic_vector(63  downto 0);
            c0_ddr4_app_rd_data       : out std_logic_vector(511 downto 0);
            addn_ui_clkout1           : out std_logic;
            addn_ui_clkout2           : out std_logic;
            addn_ui_clkout3           : out std_logic;
            addn_ui_clkout4           : out std_logic;
            sys_rst                   : in  std_logic);
    end component ddr4_0;

    -- =========================================================================
    -- clk_wiz_2  (generates CLK_60 for processor)
    -- =========================================================================
    component clk_wiz_1 is
        port(
            clk_out1  : out std_logic;
            clk_out2  : out std_logic;
            clk_out3  : out std_logic;
            clk_out4  : out std_logic;
            reset     : in  std_logic;
            locked    : out std_logic;
            clk_in1_p : in  std_logic;
            clk_in1_n : in  std_logic
        );
    end component clk_wiz_1;

    -- =========================================================================
    -- vio_0
    -- probe_out0 = RESET_TO_PROCESSOR
    -- probe_out1 = DEBUG_MODE
    -- probe_out2 = RESET_TO_NIC
    -- =========================================================================
    component vio_0 is
        port(
            clk        : in  std_logic;
            probe_in0  : in  std_logic_vector(1 downto 0);
            probe_out0 : out std_logic_vector(0 downto 0);
            probe_out1 : out std_logic_vector(0 downto 0);
            probe_out2 : out std_logic_vector(0 downto 0)
        );
    end component vio_0;
        -- -------------------------------------------------------------------------
    -- ILA_0: ETH 125MHz domain
    -- Watches: MAC<->NIC pipes, NIC DMA request output, NIC interrupt,
    --          NIC reset, AFB response from NIC
    -- Data width = 10+1+1+1+110+1+1+1+33+1 = 160b  -> use 192 for headroom
    -- -------------------------------------------------------------------------
    component ila_eth_125 is
        port(
            clk    : in std_logic;
            probe0 : in std_logic_vector(9   downto 0);  -- MAC_TO_NIC_pipe_write_data
            probe1 : in std_logic_vector(0   downto 0);  -- MAC_TO_NIC_pipe_write_req
            probe2 : in std_logic_vector(0   downto 0);  -- MAC_TO_NIC_pipe_write_ack
            probe3 : in std_logic_vector(9   downto 0);  -- NIC_TO_MAC_pipe_read_data
            probe4 : in std_logic_vector(0   downto 0);  -- NIC_TO_MAC_pipe_read_req
            probe5 : in std_logic_vector(0   downto 0);  -- NIC_TO_MAC_pipe_read_ack
            probe6 : in std_logic_vector(109 downto 0);  -- ETH_NIC_REQ_FIFO_IN_data (NIC DMA req, before CDC)
            probe7 : in std_logic_vector(0   downto 0);  -- ETH_NIC_REQ_FIFO_IN_req
            probe8 : in std_logic_vector(0   downto 0);  -- ETH_NIC_REQ_FIFO_IN_ack
            probe9 : in std_logic_vector(0   downto 0);  -- NIC_INTERRUPT (direct, uncrossed)
            probe10: in std_logic_vector(0   downto 0);  -- NIC_MAC_RESETN
            probe11: in std_logic_vector(0   downto 0);  -- rst_125mhz_int
            probe12: in std_logic_vector(0   downto 0);  -- RESET_TO_NIC (async, from VIO)
            probe13: in std_logic_vector(32  downto 0);  -- ETH_AFB_RESP_FIFO_IN_data (NIC cfg resp, before CDC)
            probe14: in std_logic_vector(0   downto 0);  -- ETH_AFB_RESP_FIFO_IN_req
            probe15: in std_logic_vector(0   downto 0)   -- ETH_AFB_RESP_FIFO_IN_ack
        );
    end component ila_eth_125;
 
    -- -------------------------------------------------------------------------
    -- ILA_1: CLK_60 domain — CDC output side (what aparajit actually sees)
    -- Watches: PATH1 out (NIC req after CDC), PATH2 in (DMA resp to NIC before CDC),
    --          PATH4 out (AFB resp after CDC), reset and locked signals
    -- -------------------------------------------------------------------------
    component ila_eth_60 is
        port(
            clk    : in std_logic;
            probe0 : in std_logic_vector(109 downto 0);  -- ETH_NIC_REQ_FIFO_OUT_rd_data (PATH1 after CDC)
            probe1 : in std_logic_vector(0   downto 0);  -- ETH_NIC_REQ_FIFO_OUT_rd_req
            probe2 : in std_logic_vector(0   downto 0);  -- ETH_NIC_REQ_FIFO_OUT_rd_ack
            probe3 : in std_logic_vector(64  downto 0);  -- ETH_MASTER_RESP_FIFO_IN_data (PATH2 before CDC)
            probe4 : in std_logic_vector(0   downto 0);  -- ETH_MASTER_RESP_FIFO_IN_req
            probe5 : in std_logic_vector(0   downto 0);  -- ETH_MASTER_RESP_FIFO_IN_ack
            probe6 : in std_logic_vector(32  downto 0);  -- ETH_AFB_RESP_FIFO_OUT_rd_data (PATH4 after CDC)
            probe7 : in std_logic_vector(0   downto 0);  -- ETH_AFB_RESP_FIFO_OUT_rd_req
            probe8 : in std_logic_vector(0   downto 0);  -- ETH_AFB_RESP_FIFO_OUT_rd_ack
            probe9 : in std_logic_vector(0   downto 0);  -- RESET_TO_PROCESSOR
            probe10: in std_logic_vector(0   downto 0);  -- clk_wizard_locked
            probe11: in std_logic_vector(0   downto 0);  -- NIC_INTERRUPT (crossing into CLK_60, metastability visible here)
            probe12: in std_logic_vector(1   downto 0)   -- CPU_MODE_SIG
        );
    end component ila_eth_60;
        -- -------------------------------------------------------------------------
    -- ILA_2: MIG_UI_CLK domain
    -- Watches: DRAM request valid/ready, response valid,
    --          calib_complete, ui_clk_sync_rst
    -- -------------------------------------------------------------------------
    component ila_dram is
        port(
            clk    : in std_logic;
            probe0 : in std_logic_vector(109 downto 0);  -- PROC_DRAM_REQ_FIFO_OUT_rd_data (req to bridge)
            probe1 : in std_logic_vector(0   downto 0);  -- PROC_DRAM_REQ_FIFO_OUT_rd_req
            probe2 : in std_logic_vector(0   downto 0);  -- PROC_DRAM_REQ_FIFO_OUT_rd_ack
            probe3 : in std_logic_vector(64  downto 0);  -- DRAM_PROC_RESP_FIFO_IN_data (resp from bridge)
            probe4 : in std_logic_vector(0   downto 0);  -- DRAM_PROC_RESP_FIFO_IN_req
            probe5 : in std_logic_vector(0   downto 0);  -- DRAM_PROC_RESP_FIFO_IN_ack
            probe6 : in std_logic_vector(0   downto 0);  -- c0_init_calib_complete
            probe7 : in std_logic_vector(0   downto 0);  -- c0_ddr4_ui_clk_sync_rst
            probe8 : in std_logic_vector(2   downto 0);  -- c0_ddr4_app_cmd [584:582]
            probe9 : in std_logic_vector(0   downto 0);  -- c0_ddr4_app_en  [581]
            probe10: in std_logic_vector(0   downto 0);  -- c0_ddr4_app_rdy [5]
            probe11: in std_logic_vector(0   downto 0)   -- c0_ddr4_app_wdf_rdy [4]
        );
    end component ila_dram;
 
-- =============================================================================
-- ADD THESE SIGNAL DECLARATIONS in the signal section
-- =============================================================================
    signal ila_calib_complete  : std_logic;
    signal ila_ui_sync_rst     : std_logic;

    -- =========================================================================
    -- Signals
    -- =========================================================================

    signal CPU_MODE_SIG       : std_logic_vector(1 downto 0);
    signal CLK_60, CLK_50, CLK_45, CLK_100       : std_logic;
    signal clk_wizard_locked  : std_logic;
    signal RESET_TO_PROCESSOR : std_logic_vector(0 downto 0);
    signal RESET_TO_DRAMCTRL  : std_logic_vector(0 downto 0);
    signal RESET_TO_NIC       : std_logic_vector(0 downto 0);
    signal DEBUG_MODE         : std_logic_vector(0 downto 0);
    signal CPU_RESET          : std_logic_vector(0 downto 0);
    signal THREAD_RESET       : std_logic_vector(3 downto 0);
    signal MIG_UI_CLK         : std_logic_vector(0 downto 0);

    -- ETH_TOP recovered 125 MHz — clocks nic_subsystem and ETH MAC
    signal clk_125mhz_int : std_logic;
    signal rst_125mhz_int : std_logic;
    signal CLOCK_TO_NIC   : std_logic_vector(0 downto 0);

    -- NIC address ranges (adjust to match your software memory map)
    constant ENGINE_CONFIG_ADDR_HIGH : std_logic_vector(31 downto 0) := X"FFFF_0000";
    constant ENGINE_CONFIG_ADDR_LOW : std_logic_vector(31 downto 0) := X"FFFE_0000";
    constant ETH_CONFIG_ADDR_LOW_C  : std_logic_vector(35 downto 0) := X"0_FFA1_0000";
    constant ETH_CONFIG_ADDR_HIGH_C : std_logic_vector(35 downto 0) := X"0_FFF1_0000";
    constant ETH_MEM_ADDR_LOW_C     : std_logic_vector(35 downto 0) := X"0_FFFF_FFFF";
    constant ETH_MEM_ADDR_HIGH_C    : std_logic_vector(35 downto 0) := X"0_0000_0000";

    signal NIC_INTERRUPT    : std_logic_vector(0 downto 0);
    signal NIC_DEBUG_SIGNAL : std_logic_vector(255 downto 0);
    signal NIC_MAC_RESETN   : std_logic_vector(0 downto 0);

    -- MAC <-> NIC (same 125MHz clock, no CDC)
    signal MAC_TO_NIC_pipe_write_data : std_logic_vector(9 downto 0);
    signal MAC_TO_NIC_pipe_write_req  : std_logic_vector(0 downto 0);
    signal MAC_TO_NIC_pipe_write_ack  : std_logic_vector(0 downto 0);
    signal NIC_TO_MAC_pipe_read_data  : std_logic_vector(9 downto 0);
    signal NIC_TO_MAC_pipe_read_req   : std_logic_vector(0 downto 0);
    signal NIC_TO_MAC_pipe_read_ack   : std_logic_vector(0 downto 0);

    -- -------------------------------------------------------------------------
    -- PATH 1: NIC_TO_ACB_REQUEST  110-bit  125MHz -> CLK_60
    -- NIC DMA request into processor memory
    -- -------------------------------------------------------------------------
    signal ETH_NIC_REQ_FIFO_IN_data    : std_logic_vector(109 downto 0);
    signal ETH_NIC_REQ_FIFO_IN_req     : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_IN_ack     : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_IN_rd_data : std_logic_vector(109 downto 0);
    signal ETH_NIC_REQ_FIFO_IN_rd_req  : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_IN_rd_ack  : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_data   : std_logic_vector(109 downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_req    : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_ack    : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_rd_data: std_logic_vector(109 downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_rd_req : std_logic_vector(0   downto 0);
    signal ETH_NIC_REQ_FIFO_OUT_rd_ack : std_logic_vector(0   downto 0);

    -- -------------------------------------------------------------------------
    -- PATH 2: ACB_ETH_MASTER_RESPONSE  65-bit  CLK_60 -> 125MHz
    -- aparajit DMA response back to NIC
    -- -------------------------------------------------------------------------
    signal ETH_MASTER_RESP_FIFO_IN_data    : std_logic_vector(64 downto 0);
    signal ETH_MASTER_RESP_FIFO_IN_req     : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_IN_ack     : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_IN_rd_data : std_logic_vector(64 downto 0);
    signal ETH_MASTER_RESP_FIFO_IN_rd_req  : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_IN_rd_ack  : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_data   : std_logic_vector(64 downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_req    : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_ack    : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_rd_data: std_logic_vector(64 downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_rd_req : std_logic_vector(0  downto 0);
    signal ETH_MASTER_RESP_FIFO_OUT_rd_ack : std_logic_vector(0  downto 0);

    -- -------------------------------------------------------------------------
    -- PATH 3: AFB_ETH_CONFIG_REQUEST  74-bit  CLK_60 -> 125MHz
    -- aparajit processor config writes to NIC registers
    -- -------------------------------------------------------------------------
    signal ETH_AFB_REQ_FIFO_IN_data    : std_logic_vector(73 downto 0);
    signal ETH_AFB_REQ_FIFO_IN_req     : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_IN_ack     : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_IN_rd_data : std_logic_vector(73 downto 0);
    signal ETH_AFB_REQ_FIFO_IN_rd_req  : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_IN_rd_ack  : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_data   : std_logic_vector(73 downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_req    : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_ack    : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_rd_data: std_logic_vector(73 downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_rd_req : std_logic_vector(0  downto 0);
    signal ETH_AFB_REQ_FIFO_OUT_rd_ack : std_logic_vector(0  downto 0);

    -- -------------------------------------------------------------------------
    -- PATH 4: AFB_ETH_CONFIG_RESPONSE  33-bit  125MHz -> CLK_60
    -- NIC config response back to aparajit
    -- -------------------------------------------------------------------------
    signal ETH_AFB_RESP_FIFO_IN_data    : std_logic_vector(32 downto 0);
    signal ETH_AFB_RESP_FIFO_IN_req     : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_IN_ack     : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_IN_rd_data : std_logic_vector(32 downto 0);
    signal ETH_AFB_RESP_FIFO_IN_rd_req  : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_IN_rd_ack  : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_data   : std_logic_vector(32 downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_req    : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_ack    : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_rd_data: std_logic_vector(32 downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_rd_req : std_logic_vector(0  downto 0);
    signal ETH_AFB_RESP_FIFO_OUT_rd_ack : std_logic_vector(0  downto 0);

    -- PATH 5+6: DRAM request (CLK_60 -> MIG_UI_CLK) and response (MIG_UI_CLK -> CLK_60)
    signal PROC_DRAM_REQ_FIFO_IN_data    : std_logic_vector(109 downto 0);
    signal PROC_DRAM_REQ_FIFO_IN_req     : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_IN_ack     : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_IN_rd_data : std_logic_vector(109 downto 0);
    signal PROC_DRAM_REQ_FIFO_IN_rd_req  : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_IN_rd_ack  : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_data   : std_logic_vector(109 downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_req    : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_ack    : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_rd_data: std_logic_vector(109 downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_rd_req : std_logic_vector(0   downto 0);
    signal PROC_DRAM_REQ_FIFO_OUT_rd_ack : std_logic_vector(0   downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_data    : std_logic_vector(64 downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_req     : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_ack     : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_rd_data : std_logic_vector(64 downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_rd_req  : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_IN_rd_ack  : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_data   : std_logic_vector(64 downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_req    : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_ack    : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_rd_data: std_logic_vector(64 downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_rd_req : std_logic_vector(0  downto 0);
    signal DRAM_PROC_RESP_FIFO_OUT_rd_ack : std_logic_vector(0  downto 0);

    signal ACB_BRIDGE_TO_DRAM_CONTROLLER : std_logic_vector(612 downto 0);
    signal DRAM_CONTROLLER_TO_ACB_BRIDGE : std_logic_vector(521 downto 0);

    signal TIE_LOW  : std_logic;
    signal TIE_HIGH : std_logic;

begin

    TIE_LOW  <= '0';
    TIE_HIGH <= '1';

    MIG_UI_CLK(0)     <= DRAM_CONTROLLER_TO_ACB_BRIDGE(521);
    RESET_TO_DRAMCTRL <= RESET_TO_PROCESSOR;
    CLOCK_TO_NIC(0)   <= clk_125mhz_int;

    THREAD_RESET(0) <= CPU_RESET(0);
    THREAD_RESET(1) <= DEBUG_MODE(0);
    THREAD_RESET(2) <= '0';
    THREAD_RESET(3) <= '0';
    CPU_RESET(0)    <= RESET_TO_PROCESSOR(0);

    -- =========================================================================
    -- clk_wiz_2  (generates CLK_60 for processor)
    -- =========================================================================
    clk_wiz_inst : clk_wiz_1
    port map(
        clk_out1  => CLK_60,
        clk_out2  => CLK_50,
        clk_out3  => CLK_45,
        clk_out4  => CLK_100,
        reset     => clk_rst,
        locked    => clk_wizard_locked,
        clk_in1_p => clk_in_p,
        clk_in1_n => clk_in_n
    );

    -- =========================================================================
    -- vio_0
    -- =========================================================================
    vio_inst : vio_0
    port map(
        clk        => CLK_60,
        probe_in0  => CPU_MODE_SIG,
        probe_out0 => RESET_TO_PROCESSOR,
        probe_out1 => DEBUG_MODE,
        probe_out2 => RESET_TO_NIC
    );

    -- =========================================================================
    -- ETH_TOP  (PCS/PMA + MAC, self-clocked at 125MHz)
    -- rx/tx pipes stay in 125MHz domain — connect directly to nic_subsystem
    -- =========================================================================
    ETH_TOP_inst : ETH_TOP
    port map(
        clk_125mhz_p    => clk_125mhz_p,
        clk_125mhz_n    => clk_125mhz_n,
        reset           => clk_rst,
        led             => led,
        clk_125mhz_int  => clk_125mhz_int,
        rst_125mhz_int  => rst_125mhz_int,
        phy_sgmii_rx_p  => phy_sgmii_rx_p,
        phy_sgmii_rx_n  => phy_sgmii_rx_n,
        phy_sgmii_tx_p  => phy_sgmii_tx_p,
        phy_sgmii_tx_n  => phy_sgmii_tx_n,
        phy_sgmii_clk_p => phy_sgmii_clk_p,
        phy_sgmii_clk_n => phy_sgmii_clk_n,
        phy_int_n       => phy_int_n,
        phy_reset_n     => phy_reset_n,
        phy_mdio        => phy_mdio,
        phy_mdc         => phy_mdc,
        rx_pipe_data    => MAC_TO_NIC_pipe_write_data,
        rx_pipe_ack     => MAC_TO_NIC_pipe_write_req,
        rx_pipe_req     => MAC_TO_NIC_pipe_write_ack,
        tx_pipe_data    => NIC_TO_MAC_pipe_read_data,
        tx_pipe_ack     => NIC_TO_MAC_pipe_read_ack,
        tx_pipe_req     => NIC_TO_MAC_pipe_read_req
    );

    -- =========================================================================
    -- nic_subsystem  (125MHz domain)
    -- ETH_TOP <-> NIC: same clock, direct connection.
    -- NIC <-> aparajit: all 4 ETH CDC paths go through CDC FIFOs below.
    -- =========================================================================
    nic_subsystem_inst : nic_subsystem
    port map(
        -- PATH 2 output: aparajit DMA response arrives here (CLK_60->125MHz CDC done)
        ACB_TO_NIC_RESPONSE_pipe_write_data => ETH_MASTER_RESP_FIFO_OUT_rd_data,
        ACB_TO_NIC_RESPONSE_pipe_write_req  => ETH_MASTER_RESP_FIFO_OUT_rd_ack,
        ACB_TO_NIC_RESPONSE_pipe_write_ack  => ETH_MASTER_RESP_FIFO_OUT_rd_req,

        -- PATH 4 output: aparajit AFB config request arrives here (CLK_60->125MHz CDC done)
        AFB_TO_NIC_REQUEST_pipe_write_data  => ETH_AFB_REQ_FIFO_OUT_rd_data,
        AFB_TO_NIC_REQUEST_pipe_write_req   => ETH_AFB_REQ_FIFO_OUT_rd_ack,
        AFB_TO_NIC_REQUEST_pipe_write_ack   => ETH_AFB_REQ_FIFO_OUT_rd_req,

        -- MAC -> NIC frames (same 125MHz, direct)
        MAC_TO_NIC_DATA_pipe_write_data     => MAC_TO_NIC_pipe_write_data,
        MAC_TO_NIC_DATA_pipe_write_req      => MAC_TO_NIC_pipe_write_req,
        MAC_TO_NIC_DATA_pipe_write_ack      => MAC_TO_NIC_pipe_write_ack,

        NIC_DEBUG_SIGNAL                    => NIC_DEBUG_SIGNAL,
        NIC_INTERRUPT_TO_PROCESSOR          => NIC_INTERRUPT,

        -- PATH 1 input: NIC DMA request goes to CDC FIFO (125MHz -> CLK_60)
        NIC_TO_ACB_REQUEST_pipe_read_data   => ETH_NIC_REQ_FIFO_IN_data,
        NIC_TO_ACB_REQUEST_pipe_read_req    => ETH_NIC_REQ_FIFO_IN_ack,
        NIC_TO_ACB_REQUEST_pipe_read_ack    => ETH_NIC_REQ_FIFO_IN_req,

        -- PATH 5 input: NIC AFB config response goes to CDC FIFO (125MHz -> CLK_60)
        NIC_TO_AFB_RESPONSE_pipe_read_data  => ETH_AFB_RESP_FIFO_IN_data,
        NIC_TO_AFB_RESPONSE_pipe_read_req   => ETH_AFB_RESP_FIFO_IN_ack,
        NIC_TO_AFB_RESPONSE_pipe_read_ack   => ETH_AFB_RESP_FIFO_IN_req,

        -- NIC -> MAC frames (same 125MHz, direct)
        NIC_TO_MAC_DATA_pipe_read_data      => NIC_TO_MAC_pipe_read_data,
        NIC_TO_MAC_DATA_pipe_read_req       => NIC_TO_MAC_pipe_read_req,
        NIC_TO_MAC_DATA_pipe_read_ack       => NIC_TO_MAC_pipe_read_ack,

        NIC_TO_MAC_RESETN                   => NIC_MAC_RESETN,
        clk   => CLOCK_TO_NIC(0),
        reset => RESET_TO_NIC(0)
    );

    -- =========================================================================
    -- aparajit_1p1e_red  (CLK_60 domain)
    -- =========================================================================
    aparajit_inst : aparajit_1p1e_red
    port map(
        clk   => CLK_60,
        reset => RESET_TO_PROCESSOR(0),

        CLUSTER_ID   => (others => '0'),
        THREAD_RESET => THREAD_RESET,
        CPU_MODE     => CPU_MODE_SIG,
        DEBUG_UART_RX  => DEBUG_UART_RX,
        DEBUG_UART_TX  => DEBUG_UART_TX,
        SERIAL_UART_RX => SERIAL_UART_RX,
        SERIAL_UART_TX => SERIAL_UART_TX,

        INTERRUPT_FROM_ETH  => NIC_INTERRUPT,
        INTERRUPT_FROM_PCIE => "0",

        -- DRAM (PATH 6+7)
        ACB_DRAM_REQUEST_pipe_read_data   => PROC_DRAM_REQ_FIFO_IN_data,
        ACB_DRAM_REQUEST_pipe_read_req    => PROC_DRAM_REQ_FIFO_IN_ack,
        ACB_DRAM_REQUEST_pipe_read_ack    => PROC_DRAM_REQ_FIFO_IN_req,
        ACB_DRAM_RESPONSE_pipe_write_data => DRAM_PROC_RESP_FIFO_OUT_rd_data,
        ACB_DRAM_RESPONSE_pipe_write_req  => DRAM_PROC_RESP_FIFO_OUT_rd_ack,
        ACB_DRAM_RESPONSE_pipe_write_ack  => DRAM_PROC_RESP_FIFO_OUT_rd_req,

        -- PATH 1: NIC DMA request into aparajit memory (125MHz->CLK_60 CDC done)
        ACB_ETH_MASTER_REQUEST_pipe_write_data => ETH_NIC_REQ_FIFO_OUT_rd_data,
        ACB_ETH_MASTER_REQUEST_pipe_write_req  => ETH_NIC_REQ_FIFO_OUT_rd_ack,
        ACB_ETH_MASTER_REQUEST_pipe_write_ack  => ETH_NIC_REQ_FIFO_OUT_rd_req,

        -- PATH 2: aparajit DMA response back to NIC (CLK_60->125MHz CDC below)
        ACB_ETH_MASTER_RESPONSE_pipe_read_data => ETH_MASTER_RESP_FIFO_IN_data,
        ACB_ETH_MASTER_RESPONSE_pipe_read_req  => ETH_MASTER_RESP_FIFO_IN_ack,
        ACB_ETH_MASTER_RESPONSE_pipe_read_ack  => ETH_MASTER_RESP_FIFO_IN_req,

        -- ACB_ETH_SLAVE_REQUEST / ACB_ETH_SLAVE_RESPONSE: both tied off.
        -- nic_subsystem has no ACB_RESPONSE_TO_NIC output. Config access from
        -- processor to NIC registers goes entirely via AFB paths (3+4) below.
        ACB_ETH_SLAVE_REQUEST_pipe_read_data   => open,
        ACB_ETH_SLAVE_REQUEST_pipe_read_req    => "1",
        ACB_ETH_SLAVE_REQUEST_pipe_read_ack    => open,
        ACB_ETH_SLAVE_RESPONSE_pipe_write_data => (others => '0'),
        ACB_ETH_SLAVE_RESPONSE_pipe_write_req  => "0",
        ACB_ETH_SLAVE_RESPONSE_pipe_write_ack  => open,

        -- PATH 3: aparajit AFB config request to NIC (CLK_60->125MHz CDC below)
        AFB_ETH_CONFIG_REQUEST_pipe_read_data  => ETH_AFB_REQ_FIFO_IN_data,
        AFB_ETH_CONFIG_REQUEST_pipe_read_req   => ETH_AFB_REQ_FIFO_IN_ack,
        AFB_ETH_CONFIG_REQUEST_pipe_read_ack   => ETH_AFB_REQ_FIFO_IN_req,

        -- PATH 4: NIC AFB config response to aparajit (125MHz->CLK_60 CDC done)
        AFB_ETH_CONFIG_RESPONSE_pipe_write_data => ETH_AFB_RESP_FIFO_OUT_rd_data,
        AFB_ETH_CONFIG_RESPONSE_pipe_write_req  => ETH_AFB_RESP_FIFO_OUT_rd_ack,
        AFB_ETH_CONFIG_RESPONSE_pipe_write_ack  => ETH_AFB_RESP_FIFO_OUT_rd_req,

        -- PCIe: all tied off
        ACB_PCIE_MASTER_REQUEST_pipe_write_data  => (others => '0'),
        ACB_PCIE_MASTER_REQUEST_pipe_write_req   => "0",
        ACB_PCIE_MASTER_REQUEST_pipe_write_ack   => open,
        ACB_PCIE_MASTER_RESPONSE_pipe_read_data  => open,
        ACB_PCIE_MASTER_RESPONSE_pipe_read_req   => "1",
        ACB_PCIE_MASTER_RESPONSE_pipe_read_ack   => open,
        ACB_PCIE_SLAVE_REQUEST_pipe_read_data    => open,
        ACB_PCIE_SLAVE_REQUEST_pipe_read_req     => "1",
        ACB_PCIE_SLAVE_REQUEST_pipe_read_ack     => open,
        ACB_PCIE_SLAVE_RESPONSE_pipe_write_data  => (others => '0'),
        ACB_PCIE_SLAVE_RESPONSE_pipe_write_req   => "0",
        ACB_PCIE_SLAVE_RESPONSE_pipe_write_ack   => open,
        AFB_PCIE_CONFIG_REQUEST_pipe_read_data   => open,
        AFB_PCIE_CONFIG_REQUEST_pipe_read_req    => "1",
        AFB_PCIE_CONFIG_REQUEST_pipe_read_ack    => open,
        AFB_PCIE_CONFIG_RESPONSE_pipe_write_data => (others => '0'),
        AFB_PCIE_CONFIG_RESPONSE_pipe_write_req  => "0",
        AFB_PCIE_CONFIG_RESPONSE_pipe_write_ack  => open,

        ENGINE_CONFIG_ADDR_HIGH => ENGINE_CONFIG_ADDR_HIGH,
        ENGINE_CONFIG_ADDR_LOW  => ENGINE_CONFIG_ADDR_LOW,
        ETH_CONFIG_ADDR_HIGH    => ETH_CONFIG_ADDR_HIGH_C,
        ETH_CONFIG_ADDR_LOW     => ETH_CONFIG_ADDR_LOW_C,
        ETH_MEM_ADDR_HIGH       => ETH_MEM_ADDR_HIGH_C,
        ETH_MEM_ADDR_LOW        => ETH_MEM_ADDR_LOW_C,
        PCIE_CONFIG_ADDR_HIGH   => (others => '0'),
        PCIE_CONFIG_ADDR_LOW    => (others => '1'),
        PCIE_MEM_ADDR_HIGH      => (others => '0'),
        PCIE_MEM_ADDR_LOW       => (others => '1')
    );

    -- =========================================================================
    -- PATH 1: NIC_TO_ACB_REQUEST  110-bit  125MHz -> CLK_60
    -- NIC DMA request into processor memory
    -- =========================================================================
    ETH_NIC_REQ_FIFO_IN_inst : PipeBase
    generic map(name=>"ETH_NIC_REQ_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>110, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_NIC_REQ_FIFO_IN_req, write_ack=>ETH_NIC_REQ_FIFO_IN_ack,
        write_data=>ETH_NIC_REQ_FIFO_IN_data,
        read_req=>ETH_NIC_REQ_FIFO_IN_rd_req, read_ack=>ETH_NIC_REQ_FIFO_IN_rd_ack,
        read_data=>ETH_NIC_REQ_FIFO_IN_rd_data,
        clk=>CLOCK_TO_NIC(0), reset=>RESET_TO_NIC(0));

    DualClockedQueue_ETH_NIC_req_inst : DualClockedQueue_ACB_req_wrap
    port map(
        fifo_reset                 => RESET_TO_NIC,
        write_clk                  => CLOCK_TO_NIC,
        write_data_pipe_write_data => ETH_NIC_REQ_FIFO_IN_rd_data,
        write_data_pipe_write_req  => ETH_NIC_REQ_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => ETH_NIC_REQ_FIFO_IN_rd_req,
        read_clk                   => (0 => CLK_60),
        read_data_pipe_read_data   => ETH_NIC_REQ_FIFO_OUT_data,
        read_data_pipe_read_req    => ETH_NIC_REQ_FIFO_OUT_ack,
        read_data_pipe_read_ack    => ETH_NIC_REQ_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    ETH_NIC_REQ_FIFO_OUT_inst : PipeBase
    generic map(name=>"ETH_NIC_REQ_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>110, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_NIC_REQ_FIFO_OUT_req, write_ack=>ETH_NIC_REQ_FIFO_OUT_ack,
        write_data=>ETH_NIC_REQ_FIFO_OUT_data,
        read_req=>ETH_NIC_REQ_FIFO_OUT_rd_req, read_ack=>ETH_NIC_REQ_FIFO_OUT_rd_ack,
        read_data=>ETH_NIC_REQ_FIFO_OUT_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    -- =========================================================================
    -- PATH 2: ACB_ETH_MASTER_RESPONSE  65-bit  CLK_60 -> 125MHz
    -- aparajit DMA response back to NIC
    -- =========================================================================
    ETH_MASTER_RESP_FIFO_IN_inst : PipeBase
    generic map(name=>"ETH_MASTER_RESP_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>65, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_MASTER_RESP_FIFO_IN_req, write_ack=>ETH_MASTER_RESP_FIFO_IN_ack,
        write_data=>ETH_MASTER_RESP_FIFO_IN_data,
        read_req=>ETH_MASTER_RESP_FIFO_IN_rd_req, read_ack=>ETH_MASTER_RESP_FIFO_IN_rd_ack,
        read_data=>ETH_MASTER_RESP_FIFO_IN_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    DualClockedQueue_ETH_master_resp_inst : DualClockedQueue_ACB_resp_wrap
    port map(
        fifo_reset                 => RESET_TO_PROCESSOR,
        write_clk                  => (0 => CLK_60),
        write_data_pipe_write_data => ETH_MASTER_RESP_FIFO_IN_rd_data,
        write_data_pipe_write_req  => ETH_MASTER_RESP_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => ETH_MASTER_RESP_FIFO_IN_rd_req,
        read_clk                   => CLOCK_TO_NIC,
        read_data_pipe_read_data   => ETH_MASTER_RESP_FIFO_OUT_data,
        read_data_pipe_read_req    => ETH_MASTER_RESP_FIFO_OUT_ack,
        read_data_pipe_read_ack    => ETH_MASTER_RESP_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    ETH_MASTER_RESP_FIFO_OUT_inst : PipeBase
    generic map(name=>"ETH_MASTER_RESP_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>65, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_MASTER_RESP_FIFO_OUT_req, write_ack=>ETH_MASTER_RESP_FIFO_OUT_ack,
        write_data=>ETH_MASTER_RESP_FIFO_OUT_data,
        read_req=>ETH_MASTER_RESP_FIFO_OUT_rd_req, read_ack=>ETH_MASTER_RESP_FIFO_OUT_rd_ack,
        read_data=>ETH_MASTER_RESP_FIFO_OUT_rd_data,
        clk=>CLOCK_TO_NIC(0), reset=>RESET_TO_NIC(0));

    ETH_AFB_REQ_FIFO_IN_inst : PipeBase
    generic map(name=>"ETH_AFB_REQ_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>74, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_AFB_REQ_FIFO_IN_req, write_ack=>ETH_AFB_REQ_FIFO_IN_ack,
        write_data=>ETH_AFB_REQ_FIFO_IN_data,
        read_req=>ETH_AFB_REQ_FIFO_IN_rd_req, read_ack=>ETH_AFB_REQ_FIFO_IN_rd_ack,
        read_data=>ETH_AFB_REQ_FIFO_IN_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    DualClockedQueue_AFB_req_inst : DualClockedQueue_AFB_req_wrap
    port map(
        fifo_reset                 => RESET_TO_PROCESSOR,
        write_clk                  => (0 => CLK_60),
        write_data_pipe_write_data => ETH_AFB_REQ_FIFO_IN_rd_data,
        write_data_pipe_write_req  => ETH_AFB_REQ_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => ETH_AFB_REQ_FIFO_IN_rd_req,
        read_clk                   => CLOCK_TO_NIC,
        read_data_pipe_read_data   => ETH_AFB_REQ_FIFO_OUT_data,
        read_data_pipe_read_req    => ETH_AFB_REQ_FIFO_OUT_ack,
        read_data_pipe_read_ack    => ETH_AFB_REQ_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    ETH_AFB_REQ_FIFO_OUT_inst : PipeBase
    generic map(name=>"ETH_AFB_REQ_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>74, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_AFB_REQ_FIFO_OUT_req, write_ack=>ETH_AFB_REQ_FIFO_OUT_ack,
        write_data=>ETH_AFB_REQ_FIFO_OUT_data,
        read_req=>ETH_AFB_REQ_FIFO_OUT_rd_req, read_ack=>ETH_AFB_REQ_FIFO_OUT_rd_ack,
        read_data=>ETH_AFB_REQ_FIFO_OUT_rd_data,
        clk=>CLOCK_TO_NIC(0), reset=>RESET_TO_NIC(0));

    -- =========================================================================
    -- PATH 4: AFB_ETH_CONFIG_RESPONSE  33-bit  125MHz -> CLK_60
    -- NIC config response back to aparajit
    -- =========================================================================
    ETH_AFB_RESP_FIFO_IN_inst : PipeBase
    generic map(name=>"ETH_AFB_RESP_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>33, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_AFB_RESP_FIFO_IN_req, write_ack=>ETH_AFB_RESP_FIFO_IN_ack,
        write_data=>ETH_AFB_RESP_FIFO_IN_data,
        read_req=>ETH_AFB_RESP_FIFO_IN_rd_req, read_ack=>ETH_AFB_RESP_FIFO_IN_rd_ack,
        read_data=>ETH_AFB_RESP_FIFO_IN_rd_data,
        clk=>CLOCK_TO_NIC(0), reset=>RESET_TO_NIC(0));

    DualClockedQueue_AFB_resp_inst : DualClockedQueue_AFB_resp_wrap
    port map(
        fifo_reset                 => RESET_TO_NIC,
        write_clk                  => CLOCK_TO_NIC,
        write_data_pipe_write_data => ETH_AFB_RESP_FIFO_IN_rd_data,
        write_data_pipe_write_req  => ETH_AFB_RESP_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => ETH_AFB_RESP_FIFO_IN_rd_req,
        read_clk                   => (0 => CLK_60),
        read_data_pipe_read_data   => ETH_AFB_RESP_FIFO_OUT_data,
        read_data_pipe_read_req    => ETH_AFB_RESP_FIFO_OUT_ack,
        read_data_pipe_read_ack    => ETH_AFB_RESP_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    ETH_AFB_RESP_FIFO_OUT_inst : PipeBase
    generic map(name=>"ETH_AFB_RESP_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>33, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>ETH_AFB_RESP_FIFO_OUT_req, write_ack=>ETH_AFB_RESP_FIFO_OUT_ack,
        write_data=>ETH_AFB_RESP_FIFO_OUT_data,
        read_req=>ETH_AFB_RESP_FIFO_OUT_rd_req, read_ack=>ETH_AFB_RESP_FIFO_OUT_rd_ack,
        read_data=>ETH_AFB_RESP_FIFO_OUT_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    -- =========================================================================
    -- PATH 5: DRAM REQUEST  110-bit  CLK_60 -> MIG_UI_CLK
    -- =========================================================================
    PROC_DRAM_REQ_FIFO_IN_inst : PipeBase
    generic map(name=>"PROC_DRAM_REQ_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>110, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>PROC_DRAM_REQ_FIFO_IN_req, write_ack=>PROC_DRAM_REQ_FIFO_IN_ack,
        write_data=>PROC_DRAM_REQ_FIFO_IN_data,
        read_req=>PROC_DRAM_REQ_FIFO_IN_rd_req, read_ack=>PROC_DRAM_REQ_FIFO_IN_rd_ack,
        read_data=>PROC_DRAM_REQ_FIFO_IN_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    DualClockedQueue_ACB_Proc_req_inst : DualClockedQueue_ACB_req_wrap
    port map(
        fifo_reset                 => RESET_TO_PROCESSOR,
        write_clk                  => (0 => CLK_60),
        write_data_pipe_write_data => PROC_DRAM_REQ_FIFO_IN_rd_data,
        write_data_pipe_write_req  => PROC_DRAM_REQ_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => PROC_DRAM_REQ_FIFO_IN_rd_req,
        read_clk                   => MIG_UI_CLK,
        read_data_pipe_read_data   => PROC_DRAM_REQ_FIFO_OUT_data,
        read_data_pipe_read_req    => PROC_DRAM_REQ_FIFO_OUT_ack,
        read_data_pipe_read_ack    => PROC_DRAM_REQ_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    PROC_DRAM_REQ_FIFO_OUT_inst : PipeBase
    generic map(name=>"PROC_DRAM_REQ_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>110, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>PROC_DRAM_REQ_FIFO_OUT_req, write_ack=>PROC_DRAM_REQ_FIFO_OUT_ack,
        write_data=>PROC_DRAM_REQ_FIFO_OUT_data,
        read_req=>PROC_DRAM_REQ_FIFO_OUT_rd_req, read_ack=>PROC_DRAM_REQ_FIFO_OUT_rd_ack,
        read_data=>PROC_DRAM_REQ_FIFO_OUT_rd_data,
        clk=>MIG_UI_CLK(0), reset=>RESET_TO_DRAMCTRL(0));

    -- =========================================================================
    -- PATH 6: DRAM RESPONSE  65-bit  MIG_UI_CLK -> CLK_60
    -- =========================================================================
    DRAM_PROC_RESP_FIFO_IN_inst : PipeBase
    generic map(name=>"DRAM_PROC_RESP_FIFO_IN", num_reads=>1, num_writes=>1,
        data_width=>65, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>DRAM_PROC_RESP_FIFO_IN_req, write_ack=>DRAM_PROC_RESP_FIFO_IN_ack,
        write_data=>DRAM_PROC_RESP_FIFO_IN_data,
        read_req=>DRAM_PROC_RESP_FIFO_IN_rd_req, read_ack=>DRAM_PROC_RESP_FIFO_IN_rd_ack,
        read_data=>DRAM_PROC_RESP_FIFO_IN_rd_data,
        clk=>MIG_UI_CLK(0), reset=>RESET_TO_DRAMCTRL(0));

    DualClockedQueue_ACB_Proc_resp_inst : DualClockedQueue_ACB_resp_wrap
    port map(
        fifo_reset                 => RESET_TO_DRAMCTRL,
        write_clk                  => MIG_UI_CLK,
        write_data_pipe_write_data => DRAM_PROC_RESP_FIFO_IN_rd_data,
        write_data_pipe_write_req  => DRAM_PROC_RESP_FIFO_IN_rd_ack,
        write_data_pipe_write_ack  => DRAM_PROC_RESP_FIFO_IN_rd_req,
        read_clk                   => (0 => CLK_60),
        read_data_pipe_read_data   => DRAM_PROC_RESP_FIFO_OUT_data,
        read_data_pipe_read_req    => DRAM_PROC_RESP_FIFO_OUT_ack,
        read_data_pipe_read_ack    => DRAM_PROC_RESP_FIFO_OUT_req,
        clk=>TIE_LOW, reset=>TIE_LOW);

    DRAM_PROC_RESP_FIFO_OUT_inst : PipeBase
    generic map(name=>"DRAM_PROC_RESP_FIFO_OUT", num_reads=>1, num_writes=>1,
        data_width=>65, lifo_mode=>false, signal_mode=>false,
        shift_register_mode=>false, bypass=>false, depth=>2)
    port map(
        write_req=>DRAM_PROC_RESP_FIFO_OUT_req, write_ack=>DRAM_PROC_RESP_FIFO_OUT_ack,
        write_data=>DRAM_PROC_RESP_FIFO_OUT_data,
        read_req=>DRAM_PROC_RESP_FIFO_OUT_rd_req, read_ack=>DRAM_PROC_RESP_FIFO_OUT_rd_ack,
        read_data=>DRAM_PROC_RESP_FIFO_OUT_rd_data,
        clk=>CLK_60, reset=>RESET_TO_PROCESSOR(0));

    -- =========================================================================
    -- acb_dram_controller_bridge  (MIG_UI_CLK domain)
    -- =========================================================================
    acb_dram_controller_bridge_inst : acb_dram_controller_bridge
    port map(
        CORE_BUS_REQUEST_pipe_write_data => PROC_DRAM_REQ_FIFO_OUT_rd_data,
        CORE_BUS_REQUEST_pipe_write_req  => PROC_DRAM_REQ_FIFO_OUT_rd_ack,
        CORE_BUS_REQUEST_pipe_write_ack  => PROC_DRAM_REQ_FIFO_OUT_rd_req,
        CORE_BUS_RESPONSE_pipe_read_data => DRAM_PROC_RESP_FIFO_IN_data,
        CORE_BUS_RESPONSE_pipe_read_req  => DRAM_PROC_RESP_FIFO_IN_ack,
        CORE_BUS_RESPONSE_pipe_read_ack  => DRAM_PROC_RESP_FIFO_IN_req,
        DRAM_CONTROLLER_TO_ACB_BRIDGE    => DRAM_CONTROLLER_TO_ACB_BRIDGE,
        ACB_BRIDGE_TO_DRAM_CONTROLLER    => ACB_BRIDGE_TO_DRAM_CONTROLLER,
        clk=>MIG_UI_CLK(0), reset=>RESET_TO_DRAMCTRL(0));

    -- =========================================================================
    -- ddr4_0 MIG
    -- =========================================================================
    ddr4_0_inst : ddr4_0
    port map(
        c0_init_calib_complete    => DRAM_CONTROLLER_TO_ACB_BRIDGE(520),
        dbg_clk=>open, c0_sys_clk_p=>c0_sys_clk_p, c0_sys_clk_n=>c0_sys_clk_n,
        dbg_bus=>open,
        c0_ddr4_adr=>c0_ddr4_adr, c0_ddr4_ba=>c0_ddr4_ba,
        c0_ddr4_cke=>c0_ddr4_cke, c0_ddr4_cs_n=>c0_ddr4_cs_n,
        c0_ddr4_dm_dbi_n=>c0_ddr4_dm_dbi_n, c0_ddr4_dq=>c0_ddr4_dq,
        c0_ddr4_dqs_c=>c0_ddr4_dqs_c, c0_ddr4_dqs_t=>c0_ddr4_dqs_t,
        c0_ddr4_odt=>c0_ddr4_odt, c0_ddr4_bg=>c0_ddr4_bg,
        c0_ddr4_reset_n=>c0_ddr4_reset_n, c0_ddr4_act_n=>c0_ddr4_act_n,
        c0_ddr4_ck_c=>c0_ddr4_ck_c, c0_ddr4_ck_t=>c0_ddr4_ck_t,
        c0_ddr4_ui_clk          => DRAM_CONTROLLER_TO_ACB_BRIDGE(521),
        c0_ddr4_ui_clk_sync_rst => DRAM_CONTROLLER_TO_ACB_BRIDGE(0),
        c0_ddr4_app_en          => ACB_BRIDGE_TO_DRAM_CONTROLLER(581),
        c0_ddr4_app_hi_pri      => '0',
        c0_ddr4_app_wdf_end     => ACB_BRIDGE_TO_DRAM_CONTROLLER(68),
        c0_ddr4_app_wdf_wren    => ACB_BRIDGE_TO_DRAM_CONTROLLER(3),
        c0_ddr4_app_rd_data_end   => DRAM_CONTROLLER_TO_ACB_BRIDGE(7),
        c0_ddr4_app_rd_data_valid => DRAM_CONTROLLER_TO_ACB_BRIDGE(6),
        c0_ddr4_app_rdy           => DRAM_CONTROLLER_TO_ACB_BRIDGE(5),
        c0_ddr4_app_wdf_rdy       => DRAM_CONTROLLER_TO_ACB_BRIDGE(4),
        c0_ddr4_app_addr     => ACB_BRIDGE_TO_DRAM_CONTROLLER(612 downto 585),
        c0_ddr4_app_cmd      => ACB_BRIDGE_TO_DRAM_CONTROLLER(584 downto 582),
        c0_ddr4_app_wdf_data => ACB_BRIDGE_TO_DRAM_CONTROLLER(580 downto 69),
        c0_ddr4_app_wdf_mask => ACB_BRIDGE_TO_DRAM_CONTROLLER(67  downto 4),
        c0_ddr4_app_rd_data  => DRAM_CONTROLLER_TO_ACB_BRIDGE(519 downto 8),
        addn_ui_clkout1=>open, addn_ui_clkout2=>open,
        addn_ui_clkout3=>open, addn_ui_clkout4=>open,
        sys_rst=>clk_rst);
    -- =========================================================================
    -- ILA_0: ETH 125MHz domain
    -- TRIGGER STRATEGY: trigger on ETH_NIC_REQ_FIFO_IN_req='1' to catch the
    -- moment the NIC tries to DMA. If it fires sometimes but not always,
    -- the NIC or MAC reset is the culprit.
    -- =========================================================================
    ila_eth_125_inst : ila_eth_125
    port map(
        clk     => clk_125mhz_int,
        probe0  => MAC_TO_NIC_pipe_write_data,
        probe1  => MAC_TO_NIC_pipe_write_req,
        probe2  => MAC_TO_NIC_pipe_write_ack,
        probe3  => NIC_TO_MAC_pipe_read_data,
        probe4  => NIC_TO_MAC_pipe_read_req,
        probe5  => NIC_TO_MAC_pipe_read_ack,
        probe6  => ETH_NIC_REQ_FIFO_IN_data,
        probe7  => ETH_NIC_REQ_FIFO_IN_req,
        probe8  => ETH_NIC_REQ_FIFO_IN_ack,
        probe9  => NIC_INTERRUPT,
        probe10 => NIC_MAC_RESETN,
        probe11 => (0 => rst_125mhz_int),
        probe12 => RESET_TO_NIC,
        probe13 => ETH_AFB_RESP_FIFO_IN_data,
        probe14 => ETH_AFB_RESP_FIFO_IN_req,
        probe15 => ETH_AFB_RESP_FIFO_IN_ack
    );
 
    -- =========================================================================
    -- ILA_1: CLK_60 domain
    -- TRIGGER STRATEGY: trigger on ETH_NIC_REQ_FIFO_OUT_rd_ack='1' to catch
    -- the moment aparajit accepts a NIC DMA request. If probe0-2 never fire,
    -- the CDC is not delivering — clock name issue.
    -- =========================================================================
    ila_eth_60_inst : ila_eth_60
    port map(
        clk    => CLK_60,
        probe0 => ETH_NIC_REQ_FIFO_OUT_rd_data,
        probe1 => ETH_NIC_REQ_FIFO_OUT_rd_req,
        probe2 => ETH_NIC_REQ_FIFO_OUT_rd_ack,
        probe3 => ETH_MASTER_RESP_FIFO_IN_data,
        probe4 => ETH_MASTER_RESP_FIFO_IN_req,
        probe5 => ETH_MASTER_RESP_FIFO_IN_ack,
        probe6 => ETH_AFB_RESP_FIFO_OUT_rd_data,
        probe7 => ETH_AFB_RESP_FIFO_OUT_rd_req,
        probe8 => ETH_AFB_RESP_FIFO_OUT_rd_ack,
        probe9  => RESET_TO_PROCESSOR,
        probe10 => (0 => clk_wizard_locked),
        probe11 => NIC_INTERRUPT,
        probe12 => CPU_MODE_SIG
    );
    ila_calib_complete <= DRAM_CONTROLLER_TO_ACB_BRIDGE(520);
    ila_ui_sync_rst    <= DRAM_CONTROLLER_TO_ACB_BRIDGE(0);
        -- =========================================================================
    -- ILA_2: MIG_UI_CLK domain
    -- TRIGGER STRATEGY: trigger on ila_calib_complete falling edge (='0') to
    -- catch any DRAM recalibration event. Also trigger on ui_sync_rst='1'.
    -- =========================================================================
    ila_dram_inst : ila_dram
    port map(
        clk    => MIG_UI_CLK(0),
        probe0 => PROC_DRAM_REQ_FIFO_OUT_rd_data,
        probe1 => PROC_DRAM_REQ_FIFO_OUT_rd_req,
        probe2 => PROC_DRAM_REQ_FIFO_OUT_rd_ack,
        probe3 => DRAM_PROC_RESP_FIFO_IN_data,
        probe4 => DRAM_PROC_RESP_FIFO_IN_req,
        probe5 => DRAM_PROC_RESP_FIFO_IN_ack,
        probe6 => (0 => ila_calib_complete),
        probe7 => (0 => ila_ui_sync_rst),
        probe8 => ACB_BRIDGE_TO_DRAM_CONTROLLER(584 downto 582),
        probe9 => (0 => ACB_BRIDGE_TO_DRAM_CONTROLLER(581)),
        probe10 => (0 => DRAM_CONTROLLER_TO_ACB_BRIDGE(5)),
        probe11 => (0 => DRAM_CONTROLLER_TO_ACB_BRIDGE(4))
    );
 
end structure;
