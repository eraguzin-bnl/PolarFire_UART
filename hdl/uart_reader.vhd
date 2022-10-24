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
	DATA_OUT : IN  std_logic_vector(7 downto 0); -- example
    FRAMING_ERR : IN  std_logic; -- example
    OVERFLOW : IN  std_logic; -- example
    PARITY_ERR : IN  std_logic; -- example
    RXRDY : IN  std_logic; -- example
    TXRDY : IN  std_logic; -- example
    
    LED1 : OUT std_logic;
    LED2 : OUT std_logic;
    LED3 : OUT std_logic;
    LED4 : OUT std_logic
);
end uart_reader;
architecture architecture_uart_reader of uart_reader is
   -- signal, component etc. declarations
	--signal signal_name1 : std_logic; -- example
	--signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin
    process (CLK) begin
        if (rising_edge(CLK)) then
            if (FRAMING_ERR or OVERFLOW or PARITY_ERR) then
                LED1 <= '1';
            else
                LED1 <= '0';
            end if;
            
            if (RXRDY) then
                LED2 <= '1';
            else
                LED2 <= '0';
            end if;
            
            if (TXRDY) then
                LED3 <= '1';
            else
                LED3 <= '0';
            end if;
            
            if (DATA_OUT > x"A0") then
                LED4 <= '1';
            else
                LED4 <= '0';
            end if;
        end if;
   end process;
end architecture_uart_reader;
