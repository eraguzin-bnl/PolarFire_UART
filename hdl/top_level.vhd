--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: top_level.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- UART test for PolarFire eval board - 
--
-- Targeted device: <Family::PolarFire> <Die::MPF300T> <Package::FCG1152>
-- Author: Eric Raguzin
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity top_level is
port (
    --<port_name> : <direction> <type>;
	clk : IN  std_logic; -- 50 MHz clock in
    rstn : IN  std_logic; -- Active low Reset clock
    rx : IN  std_logic; -- UART rx
    tx : OUT std_logic  -- UART tx
);
end top_level;
architecture architecture_top_level of top_level is
   -- signal, component etc. declarations
	--signal signal_name1 : std_logic; -- example
	--signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin
    --https://www.microsemi.com/document-portal/doc_view/1245307-coreuart-hb
    UART : entity work.COREUART_C0
        port map (
            BAUD_VAL => '0' & x"145",         --325 in hex, to bring 50 MHz clock to 9600 Baud rate
            --BAUD_VAL_FRACTION => open,
            BIT8 => '1',
            CLK => clk,
            CSN => '0',
            DATA_IN => open,
            ODD_N_EVEN => '1',
            OEN => '1',
            PARITY_EN => '1',
            RESET_N => rstn,
            RX => rx,
            WEN => '1',
            
            DATA_OUT => open,
            FRAMING_ERR => open,
            OVERFLOW => open,
            PARITY_ERR => open,
            RXRDY => open,
            TX => tx,
            TXRDY => open
        );
end architecture_top_level;
