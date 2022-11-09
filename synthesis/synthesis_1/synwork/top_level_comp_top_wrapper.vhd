--
-- Synopsys
-- Vhdl wrapper for top level design, written on Wed Nov  9 12:10:06 2022
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_top_level is
   port (
      clk : in std_logic;
      rstn : in std_logic;
      button1 : in std_logic;
      button2 : in std_logic;
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
      rx : in std_logic;
      tx : out std_logic
   );
end wrapper_for_top_level;

architecture architecture_top_level of wrapper_for_top_level is

component top_level
 port (
   clk : in std_logic;
   rstn : in std_logic;
   button1 : in std_logic;
   button2 : in std_logic;
   LED1 : out std_logic;
   LED2 : out std_logic;
   LED3 : out std_logic;
   LED4 : out std_logic;
   data_out : out std_logic_vector (7 downto 0);
   framing_err_out : out std_logic;
   overflow_err_out : out std_logic;
   parity_err_out : out std_logic;
   rxrdy_out : out std_logic;
   txrdy_out : out std_logic;
   rx : in std_logic;
   tx : out std_logic
 );
end component;

signal tmp_clk : std_logic;
signal tmp_rstn : std_logic;
signal tmp_button1 : std_logic;
signal tmp_button2 : std_logic;
signal tmp_LED1 : std_logic;
signal tmp_LED2 : std_logic;
signal tmp_LED3 : std_logic;
signal tmp_LED4 : std_logic;
signal tmp_data_out : std_logic_vector (7 downto 0);
signal tmp_framing_err_out : std_logic;
signal tmp_overflow_err_out : std_logic;
signal tmp_parity_err_out : std_logic;
signal tmp_rxrdy_out : std_logic;
signal tmp_txrdy_out : std_logic;
signal tmp_rx : std_logic;
signal tmp_tx : std_logic;

begin

tmp_clk <= clk;

tmp_rstn <= rstn;

tmp_button1 <= button1;

tmp_button2 <= button2;

LED1 <= tmp_LED1;

LED2 <= tmp_LED2;

LED3 <= tmp_LED3;

LED4 <= tmp_LED4;

data_out <= tmp_data_out;

framing_err_out <= tmp_framing_err_out;

overflow_err_out <= tmp_overflow_err_out;

parity_err_out <= tmp_parity_err_out;

rxrdy_out <= tmp_rxrdy_out;

txrdy_out <= tmp_txrdy_out;

tmp_rx <= rx;

tx <= tmp_tx;



u1:   top_level port map (
		clk => tmp_clk,
		rstn => tmp_rstn,
		button1 => tmp_button1,
		button2 => tmp_button2,
		LED1 => tmp_LED1,
		LED2 => tmp_LED2,
		LED3 => tmp_LED3,
		LED4 => tmp_LED4,
		data_out => tmp_data_out,
		framing_err_out => tmp_framing_err_out,
		overflow_err_out => tmp_overflow_err_out,
		parity_err_out => tmp_parity_err_out,
		rxrdy_out => tmp_rxrdy_out,
		txrdy_out => tmp_txrdy_out,
		rx => tmp_rx,
		tx => tmp_tx
       );
end architecture_top_level;
