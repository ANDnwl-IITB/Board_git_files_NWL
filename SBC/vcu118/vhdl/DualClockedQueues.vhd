-- =============================================================================
-- DualClockedQueues.vhdl
--
-- Four dual-clocked FIFO wrappers for the aparajit_1p1e_red VCU118 design.
-- Each wraps a separate Xilinx FIFO Generator IP configured for its data width.
--
-- Required FIFO Generator IPs (create in Vivado IP catalog):
--   fifo_generator_acb_req  : width=110, dual-clock, first-word-fall-through
--   fifo_generator_acb_resp : width=65,  dual-clock, first-word-fall-through
--   fifo_generator_afb_req  : width=74,  dual-clock, first-word-fall-through
--   fifo_generator_afb_resp : width=33,  dual-clock, first-word-fall-through
--
-- All four use the same interface pattern as the existing DualClockedQueue
-- (10-bit, fifo_generator_0) — only the data width and IP name differ.
-- =============================================================================

library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- =============================================================================
-- 1. DualClockedQueue_ACB_req  (110-bit)
--    Used for: DRAM request path (CLK_60 -> MIG_UI_CLK)
-- =============================================================================
entity DualClockedQueue_ACB_req is
    port(
        read_req_in   : in  std_logic;
        read_data_out : out std_logic_vector(109 downto 0);
        read_ack_out  : out std_logic;
        write_req_out : out std_logic;
        write_data_in : in  std_logic_vector(109 downto 0);
        write_ack_in  : in  std_logic;
        read_clk      : in  std_logic;
        write_clk     : in  std_logic;
        reset         : in  std_logic
    );
end entity DualClockedQueue_ACB_req;

architecture Behavioral of DualClockedQueue_ACB_req is
    component fifo_generator_acb_req is
        port(
            rst    : in  std_logic;
            wr_clk : in  std_logic;
            rd_clk : in  std_logic;
            din    : in  std_logic_vector(109 downto 0);
            wr_en  : in  std_logic;
            rd_en  : in  std_logic;
            dout   : out std_logic_vector(109 downto 0);
            full   : out std_logic;
            empty  : out std_logic;
            wr_ack : out std_logic;
            valid  : out std_logic
        );
    end component;

    signal read_reset, write_reset : std_logic;
    signal fifo_din    : std_logic_vector(109 downto 0);
    signal fifo_wr_en  : std_logic;
    signal fifo_rd_en  : std_logic;
    signal fifo_dout   : std_logic_vector(109 downto 0);
    signal fifo_full   : std_logic;
    signal fifo_empty  : std_logic;
    signal fifo_wr_ack : std_logic;
    signal fifo_valid  : std_logic;

    type ReadState is (Empty, Full);
    signal read_state : ReadState;

begin
    process(reset, write_clk)
    begin
        if reset = '1' then write_reset <= '1';
        elsif write_clk'event and write_clk = '1' then write_reset <= '0';
        end if;
    end process;

    process(reset, read_clk)
    begin
        if reset = '1' then read_reset <= '1';
        elsif read_clk'event and read_clk = '1' then read_reset <= '0';
        end if;
    end process;

    READFSM : process(read_state, read_clk, read_reset, read_req_in, fifo_dout, fifo_empty)
        variable next_state       : ReadState;
        variable fifo_rd_en_var   : std_logic;
        variable read_ack_out_var : std_logic;
    begin
        read_ack_out_var := '0';
        next_state       := read_state;
        fifo_rd_en_var   := '0';

        case read_state is
            when Empty =>
                if fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                    next_state := Full;
                end if;
            when Full =>
                read_ack_out_var := '1';
                if read_req_in = '1' and fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                elsif read_req_in = '1' and fifo_empty = '1' then
                    next_state := Empty;
                end if;
        end case;

        read_data_out <= fifo_dout;
        fifo_rd_en    <= fifo_rd_en_var;
        read_ack_out  <= read_ack_out_var;

        if read_clk'event and read_clk = '1' then
            if read_reset = '1' then read_state <= Empty;
            else read_state <= next_state;
            end if;
        end if;
    end process;

    write_req_out <= not fifo_full;
    fifo_wr_en    <= (not fifo_full) and write_ack_in;
    fifo_din      <= write_data_in;

    fifo_inst : fifo_generator_acb_req
        port map(rst=>reset, wr_clk=>write_clk, rd_clk=>read_clk,
                 din=>fifo_din, wr_en=>fifo_wr_en, rd_en=>fifo_rd_en,
                 dout=>fifo_dout, full=>fifo_full, empty=>fifo_empty,
                 wr_ack=>fifo_wr_ack, valid=>fifo_valid);
end Behavioral;


-- =============================================================================
-- 2. DualClockedQueue_ACB_resp  (65-bit)
--    Used for: DRAM response path (MIG_UI_CLK -> CLK_60)
--              ETH ACB_MASTER_RESPONSE (CLK_60 -> 125MHz)
-- =============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DualClockedQueue_ACB_resp is
    port(
        read_req_in   : in  std_logic;
        read_data_out : out std_logic_vector(64 downto 0);
        read_ack_out  : out std_logic;
        write_req_out : out std_logic;
        write_data_in : in  std_logic_vector(64 downto 0);
        write_ack_in  : in  std_logic;
        read_clk      : in  std_logic;
        write_clk     : in  std_logic;
        reset         : in  std_logic
    );
end entity DualClockedQueue_ACB_resp;

architecture Behavioral of DualClockedQueue_ACB_resp is
    component fifo_generator_acb_resp is
        port(
            rst    : in  std_logic;
            wr_clk : in  std_logic;
            rd_clk : in  std_logic;
            din    : in  std_logic_vector(64 downto 0);
            wr_en  : in  std_logic;
            rd_en  : in  std_logic;
            dout   : out std_logic_vector(64 downto 0);
            full   : out std_logic;
            empty  : out std_logic;
            wr_ack : out std_logic;
            valid  : out std_logic
        );
    end component;

    signal read_reset, write_reset : std_logic;
    signal fifo_din    : std_logic_vector(64 downto 0);
    signal fifo_wr_en  : std_logic;
    signal fifo_rd_en  : std_logic;
    signal fifo_dout   : std_logic_vector(64 downto 0);
    signal fifo_full   : std_logic;
    signal fifo_empty  : std_logic;
    signal fifo_wr_ack : std_logic;
    signal fifo_valid  : std_logic;

    type ReadState is (Empty, Full);
    signal read_state : ReadState;

begin
    process(reset, write_clk)
    begin
        if reset = '1' then write_reset <= '1';
        elsif write_clk'event and write_clk = '1' then write_reset <= '0';
        end if;
    end process;

    process(reset, read_clk)
    begin
        if reset = '1' then read_reset <= '1';
        elsif read_clk'event and read_clk = '1' then read_reset <= '0';
        end if;
    end process;

    READFSM : process(read_state, read_clk, read_reset, read_req_in, fifo_dout, fifo_empty)
        variable next_state       : ReadState;
        variable fifo_rd_en_var   : std_logic;
        variable read_ack_out_var : std_logic;
    begin
        read_ack_out_var := '0';
        next_state       := read_state;
        fifo_rd_en_var   := '0';

        case read_state is
            when Empty =>
                if fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                    next_state := Full;
                end if;
            when Full =>
                read_ack_out_var := '1';
                if read_req_in = '1' and fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                elsif read_req_in = '1' and fifo_empty = '1' then
                    next_state := Empty;
                end if;
        end case;

        read_data_out <= fifo_dout;
        fifo_rd_en    <= fifo_rd_en_var;
        read_ack_out  <= read_ack_out_var;

        if read_clk'event and read_clk = '1' then
            if read_reset = '1' then read_state <= Empty;
            else read_state <= next_state;
            end if;
        end if;
    end process;

    write_req_out <= not fifo_full;
    fifo_wr_en    <= (not fifo_full) and write_ack_in;
    fifo_din      <= write_data_in;

    fifo_inst : fifo_generator_acb_resp
        port map(rst=>reset, wr_clk=>write_clk, rd_clk=>read_clk,
                 din=>fifo_din, wr_en=>fifo_wr_en, rd_en=>fifo_rd_en,
                 dout=>fifo_dout, full=>fifo_full, empty=>fifo_empty,
                 wr_ack=>fifo_wr_ack, valid=>fifo_valid);
end Behavioral;


-- =============================================================================
-- 3. DualClockedQueue_AFB_req  (74-bit)
--    Used for: ETH AFB_CONFIG_REQUEST (CLK_60 -> 125MHz)
-- =============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DualClockedQueue_AFB_req is
    port(
        read_req_in   : in  std_logic;
        read_data_out : out std_logic_vector(73 downto 0);
        read_ack_out  : out std_logic;
        write_req_out : out std_logic;
        write_data_in : in  std_logic_vector(73 downto 0);
        write_ack_in  : in  std_logic;
        read_clk      : in  std_logic;
        write_clk     : in  std_logic;
        reset         : in  std_logic
    );
end entity DualClockedQueue_AFB_req;

architecture Behavioral of DualClockedQueue_AFB_req is
    component fifo_generator_afb_req is
        port(
            rst    : in  std_logic;
            wr_clk : in  std_logic;
            rd_clk : in  std_logic;
            din    : in  std_logic_vector(73 downto 0);
            wr_en  : in  std_logic;
            rd_en  : in  std_logic;
            dout   : out std_logic_vector(73 downto 0);
            full   : out std_logic;
            empty  : out std_logic;
            wr_ack : out std_logic;
            valid  : out std_logic
        );
    end component;

    signal read_reset, write_reset : std_logic;
    signal fifo_din    : std_logic_vector(73 downto 0);
    signal fifo_wr_en  : std_logic;
    signal fifo_rd_en  : std_logic;
    signal fifo_dout   : std_logic_vector(73 downto 0);
    signal fifo_full   : std_logic;
    signal fifo_empty  : std_logic;
    signal fifo_wr_ack : std_logic;
    signal fifo_valid  : std_logic;

    type ReadState is (Empty, Full);
    signal read_state : ReadState;

begin
    process(reset, write_clk)
    begin
        if reset = '1' then write_reset <= '1';
        elsif write_clk'event and write_clk = '1' then write_reset <= '0';
        end if;
    end process;

    process(reset, read_clk)
    begin
        if reset = '1' then read_reset <= '1';
        elsif read_clk'event and read_clk = '1' then read_reset <= '0';
        end if;
    end process;

    READFSM : process(read_state, read_clk, read_reset, read_req_in, fifo_dout, fifo_empty)
        variable next_state       : ReadState;
        variable fifo_rd_en_var   : std_logic;
        variable read_ack_out_var : std_logic;
    begin
        read_ack_out_var := '0';
        next_state       := read_state;
        fifo_rd_en_var   := '0';

        case read_state is
            when Empty =>
                if fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                    next_state := Full;
                end if;
            when Full =>
                read_ack_out_var := '1';
                if read_req_in = '1' and fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                elsif read_req_in = '1' and fifo_empty = '1' then
                    next_state := Empty;
                end if;
        end case;

        read_data_out <= fifo_dout;
        fifo_rd_en    <= fifo_rd_en_var;
        read_ack_out  <= read_ack_out_var;

        if read_clk'event and read_clk = '1' then
            if read_reset = '1' then read_state <= Empty;
            else read_state <= next_state;
            end if;
        end if;
    end process;

    write_req_out <= not fifo_full;
    fifo_wr_en    <= (not fifo_full) and write_ack_in;
    fifo_din      <= write_data_in;

    fifo_inst : fifo_generator_afb_req
        port map(rst=>reset, wr_clk=>write_clk, rd_clk=>read_clk,
                 din=>fifo_din, wr_en=>fifo_wr_en, rd_en=>fifo_rd_en,
                 dout=>fifo_dout, full=>fifo_full, empty=>fifo_empty,
                 wr_ack=>fifo_wr_ack, valid=>fifo_valid);
end Behavioral;


-- =============================================================================
-- 4. DualClockedQueue_AFB_resp  (33-bit)
--    Used for: ETH AFB_CONFIG_RESPONSE (125MHz -> CLK_60)
-- =============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DualClockedQueue_AFB_resp is
    port(
        read_req_in   : in  std_logic;
        read_data_out : out std_logic_vector(32 downto 0);
        read_ack_out  : out std_logic;
        write_req_out : out std_logic;
        write_data_in : in  std_logic_vector(32 downto 0);
        write_ack_in  : in  std_logic;
        read_clk      : in  std_logic;
        write_clk     : in  std_logic;
        reset         : in  std_logic
    );
end entity DualClockedQueue_AFB_resp;

architecture Behavioral of DualClockedQueue_AFB_resp is
    component fifo_generator_afb_resp is
        port(
            rst    : in  std_logic;
            wr_clk : in  std_logic;
            rd_clk : in  std_logic;
            din    : in  std_logic_vector(32 downto 0);
            wr_en  : in  std_logic;
            rd_en  : in  std_logic;
            dout   : out std_logic_vector(32 downto 0);
            full   : out std_logic;
            empty  : out std_logic;
            wr_ack : out std_logic;
            valid  : out std_logic
        );
    end component;

    signal read_reset, write_reset : std_logic;
    signal fifo_din    : std_logic_vector(32 downto 0);
    signal fifo_wr_en  : std_logic;
    signal fifo_rd_en  : std_logic;
    signal fifo_dout   : std_logic_vector(32 downto 0);
    signal fifo_full   : std_logic;
    signal fifo_empty  : std_logic;
    signal fifo_wr_ack : std_logic;
    signal fifo_valid  : std_logic;

    type ReadState is (Empty, Full);
    signal read_state : ReadState;

begin
    process(reset, write_clk)
    begin
        if reset = '1' then write_reset <= '1';
        elsif write_clk'event and write_clk = '1' then write_reset <= '0';
        end if;
    end process;

    process(reset, read_clk)
    begin
        if reset = '1' then read_reset <= '1';
        elsif read_clk'event and read_clk = '1' then read_reset <= '0';
        end if;
    end process;

    READFSM : process(read_state, read_clk, read_reset, read_req_in, fifo_dout, fifo_empty)
        variable next_state       : ReadState;
        variable fifo_rd_en_var   : std_logic;
        variable read_ack_out_var : std_logic;
    begin
        read_ack_out_var := '0';
        next_state       := read_state;
        fifo_rd_en_var   := '0';

        case read_state is
            when Empty =>
                if fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                    next_state := Full;
                end if;
            when Full =>
                read_ack_out_var := '1';
                if read_req_in = '1' and fifo_empty = '0' then
                    fifo_rd_en_var := '1';
                elsif read_req_in = '1' and fifo_empty = '1' then
                    next_state := Empty;
                end if;
        end case;

        read_data_out <= fifo_dout;
        fifo_rd_en    <= fifo_rd_en_var;
        read_ack_out  <= read_ack_out_var;

        if read_clk'event and read_clk = '1' then
            if read_reset = '1' then read_state <= Empty;
            else read_state <= next_state;
            end if;
        end if;
    end process;

    write_req_out <= not fifo_full;
    fifo_wr_en    <= (not fifo_full) and write_ack_in;
    fifo_din      <= write_data_in;

    fifo_inst : fifo_generator_afb_resp
        port map(rst=>reset, wr_clk=>write_clk, rd_clk=>read_clk,
                 din=>fifo_din, wr_en=>fifo_wr_en, rd_en=>fifo_rd_en,
                 dout=>fifo_dout, full=>fifo_full, empty=>fifo_empty,
                 wr_ack=>fifo_wr_ack, valid=>fifo_valid);
end Behavioral;
