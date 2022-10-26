--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: default_values.vhd
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

library IEEE;

use IEEE.std_logic_1164.all;

entity default_values is
port (
    CLK : IN std_logic;
    RST : IN std_logic;
    BUTTON : IN std_logic;
    
    TX_RDY : IN std_logic;
    
	BAUD_VAL : OUT  std_logic_vector(12 downto 0);
    BIT8 : OUT std_logic;
    CSN : OUT std_logic;
    DATA_IN : OUT std_logic_vector(7 downto 0);
    ODD_N_EVEN : OUT std_logic;
    OEN : OUT std_logic;
    PARITY_EN : OUT std_logic;
    WEN : OUT std_logic
);
end default_values;
architecture architecture_default_values of default_values is
    type uart_state_type is (s_idle, s_start, s_send);
    signal uart_wr_state : uart_state_type;

begin
    process (CLK) begin
        if (rising_edge(CLK)) then
            if (RST = '0') then
                BAUD_VAL <= '0' & x"145";
                BIT8 <= '1';
                CSN <= '0';
                DATA_IN <= x"AB";
                ODD_N_EVEN <= '1';
                PARITY_EN <= '1';
                WEN <= '1';
                uart_wr_state <= s_idle;
            elsif (BUTTON = '0') then
                case uart_wr_state is
                    when s_idle =>
                        if (TX_RDY = '1') then
                            DATA_IN <= x"4A";
                            WEN <= '0';
                            uart_wr_state <= s_send;
                        else
                            WEN <= '1';
                            uart_wr_state <= s_idle;
                        end if;
                    when s_send =>
                        DATA_IN <= x"6A";
                        WEN <= '1';
                        uart_wr_state <= s_idle;
                    when others =>
                        uart_wr_state <= s_idle;
                end case;
            end if;
        end if;
   end process;
end architecture_default_values;
