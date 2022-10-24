--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Oct 24 13:36:34 2022
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_top_level is
   port (
      clk : in std_logic;
      rstn : in std_logic;
      rx : in std_logic;
      tx : out std_logic
   );
end wrapper_for_top_level;

architecture architecture_top_level of wrapper_for_top_level is

component top_level
 port (
   clk : in std_logic;
   rstn : in std_logic;
   rx : in std_logic;
   tx : out std_logic
 );
end component;

signal tmp_clk : std_logic;
signal tmp_rstn : std_logic;
signal tmp_rx : std_logic;
signal tmp_tx : std_logic;

begin

tmp_clk <= clk;

tmp_rstn <= rstn;

tmp_rx <= rx;

tx <= tmp_tx;



u1:   top_level port map (
		clk => tmp_clk,
		rstn => tmp_rstn,
		rx => tmp_rx,
		tx => tmp_tx
       );
end architecture_top_level;
