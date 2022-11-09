--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: uart_reader.vhd
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
use IEEE.NUMERIC_STD.ALL;

entity uart_reader is
port (
    CLK : IN std_logic;
    RST : IN std_logic;
    
    START : IN std_logic;
    
	DATA_OUT : IN  std_logic_vector(7 downto 0); -- example
    FRAMING_ERR : IN  std_logic; -- example
    OVERFLOW : IN  std_logic; -- example
    PARITY_ERR : IN  std_logic; -- example
    RXRDY : IN  std_logic; -- example
    TXRDY : IN  std_logic; -- example
    
    DATA_IN: OUT std_logic_vector(7 downto 0);
    WEN : OUT std_logic;
    OEN : OUT std_logic;
    LED1 : OUT std_logic;
    LED2 : OUT std_logic;
    LED3 : OUT std_logic;
    LED4 : OUT std_logic
);
end uart_reader;
architecture architecture_uart_reader of uart_reader is
    type uart_state_type is (s_idle, s_start, s_send);
    signal uart_wr_state : uart_state_type;
    
begin
    process (CLK) begin
        if (rising_edge(CLK)) then
            
            if ((FRAMING_ERR or OVERFLOW or PARITY_ERR) = '1') then
                LED1 <= '0';
            end if;
            
            if (RXRDY = '1') then
                LED2 <= '0';
            end if;
            
            if (TXRDY = '1') then
                LED3 <= '0';
            end if;
            
            --if (DATA_OUT > x"A0") then
                --LED4 <= '0';
            --end if;
            
            if (RST = '0') then
                LED1 <= '1';
                LED2 <= '1';
                LED3 <= '1';
                LED4 <= '1';
                OEN <= '1';
                WEN <= '1';
                uart_wr_state <= s_idle;
            else
                case uart_wr_state is
                    when s_idle =>
                        if (RXRDY = '1' and TXRDY = '1') then
                            OEN <= '0';
                            WEN <= '0';
                            DATA_IN <= DATA_OUT;
                            uart_wr_state <= s_start;
                        else
                            OEN <= '1';
                            WEN <= '1';
                        end if;
                        
                    when s_start =>
                        OEN <= '1';
                        WEN <= '1';
                        if (RXRDY = '1') then
                            uart_wr_state <= s_send;
                        else
                            uart_wr_state <= s_idle;
                        end if;
                        
                    when s_send =>
                        uart_wr_state <= s_idle;
                        
                    when others =>
                        uart_wr_state <= s_idle;
                end case;
            end if;
        end if;
    end process;

end architecture_uart_reader;
