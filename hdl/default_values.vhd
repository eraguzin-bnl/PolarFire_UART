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
   -- signal, component etc. declarations
	--signal signal_name1 : std_logic; -- example
	--signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin
    process (CLK) begin
        if (rising_edge(CLK)) then
            if (RST = '0') then
                BAUD_VAL <= '0' & x"145";
                BIT8 <= '1';
                CSN <= '0';
                DATA_IN <= x"AB";
                ODD_N_EVEN <= '1';
                OEN <= '1';
                PARITY_EN <= '1';
                WEN <= '1';
            end if;
        end if;
   end process;
end architecture_default_values;
