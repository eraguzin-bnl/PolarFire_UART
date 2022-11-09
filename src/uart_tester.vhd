----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Nov  8 12:49:31 2022
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: uart_tester.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFire> <Die::MPF300T> <Package::FCG1152>
-- Author: <Name>
--
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity uart_tester is
end uart_tester;

architecture behavioral of uart_tester is

    constant SYSCLK_PERIOD : time := 20 ns; -- 50 MHz
    constant BAUD_CLOCK     : time := 104166.7 ns; -- 9.6kHz

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
    
    signal data_out_s : std_logic_vector(7 downto 0);
    signal framing_err_s : std_logic;
    signal overflow_s : std_logic;
    signal parity_err_s : std_logic;
    signal rxrdy_s : std_logic;
    signal txrdy_s : std_logic;
    signal tx_s : std_logic;
    signal rx_s : std_logic;
    
    signal LED1_s : std_logic;
    signal LED2_s : std_logic;
    signal LED3_s : std_logic;
    signal LED4_s : std_logic;
    
    signal start_internal_s : std_logic;
    

    component top_level
        -- ports
        port( 
            -- Inputs
            clk : in std_logic;
            rstn : in std_logic;
            button1 : in std_logic;
            button2 : in std_logic;
            rx : in std_logic;

            -- Outputs
            LED1 : out std_logic;
            LED2 : out std_logic;
            LED3 : out std_logic;
            LED4 : out std_logic;
            data_out : out std_logic_vector(7 downto 0);
            framing_err_out : out std_logic;
            overflow_err_out : out std_logic;
            parity_err_out : out std_logic;
            rxrdy_out : out std_logic;
            txrdy_out : out std_logic;
            tx : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;
        
        --https://stackoverflow.com/questions/48347200/vhdl-2008-cant-drive-a-signal-with-an-alias-of-an-external-name
        --External names need to be defined inside a process block in architecture
        alias start_internal is << signal top_level_0.start_s : std_logic >>;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            rx_s <= '1';
            wait for ( SYSCLK_PERIOD * 10 );
            
            start_internal_s <= '0';
            NSYSRESET <= '1';
            wait until start_internal = '1';
            start_internal_s <= '1';
            
            rx_s <= '0';
            wait for BAUD_CLOCK;
            rx_s <= '0';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            rx_s <= '0';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            rx_s <= '0';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            rx_s <= '0';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            rx_s <= '1';
            wait for BAUD_CLOCK;
            
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );
    
    --start_internal <= .top_level_0.start_s;

    -- Instantiate Unit Under Test:  top_level
    top_level_0 : top_level
        -- port map
        port map( 
            -- Inputs
            clk => SYSCLK,
            rstn => NSYSRESET,
            button1 => '1',
            button2 => '1',
            rx => rx_s,

            -- Outputs
            LED1 =>  LED1_s,
            LED2 =>  LED2_s,
            LED3 =>  LED3_s,
            LED4 =>  LED4_s,
            data_out => data_out_s,
            framing_err_out =>  framing_err_s,
            overflow_err_out =>  overflow_s,
            parity_err_out =>  parity_err_s,
            rxrdy_out =>  rxrdy_s,
            txrdy_out =>  txrdy_s,
            tx =>  tx_s

            -- Inouts

        );

end behavioral;

