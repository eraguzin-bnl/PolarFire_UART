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
    
    button1 : IN std_logic;
    button2 : IN std_logic;
    
    LED1 : OUT std_logic;
    LED2 : OUT std_logic;
    LED3 : OUT std_logic;
    LED4 : OUT std_logic;
    
    data_out : OUT std_logic_vector(7 downto 0);
    framing_err_out : OUT std_logic;
    overflow_err_out : OUT std_logic;
    parity_err_out : OUT std_logic;
    rxrdy_out : OUT std_logic;
    txrdy_out : OUT std_logic;
    
    rx : IN  std_logic; -- UART rx
    tx : OUT std_logic  -- UART tx
);
end top_level;
architecture architecture_top_level of top_level is
    signal baud_val_s : std_logic_vector(12 downto 0);
    signal bit8_s : std_logic;
    signal csn_s : std_logic;
    signal data_in_s : std_logic_vector(7 downto 0);
    signal odd_n_even_s : std_logic;
    signal oen_s : std_logic;
    signal parity_en_s : std_logic;
    signal wen_s : std_logic;
    
    signal data_out_s : std_logic_vector(7 downto 0);
    signal framing_err_s : std_logic;
    signal overflow_s : std_logic;
    signal parity_err_s : std_logic;
    signal rxrdy_s : std_logic;
    signal txrdy_s : std_logic;
    
    signal start_s : std_logic;

begin
    process (CLK) begin
        if (rising_edge(CLK)) then
            data_out <= data_out_s;
            framing_err_out <= framing_err_s;
            overflow_err_out <= overflow_s;
            parity_err_out <= parity_err_s;
            rxrdy_out <= rxrdy_s;
            txrdy_out <= txrdy_s;
        end if;
    end process;
    
    --https://www.microsemi.com/document-portal/doc_view/1245307-coreuart-hb
    uart_i : entity work.COREUART_C0
        port map (
            BAUD_VAL => baud_val_s,         --325 in hex, to bring 50 MHz clock to 9600 Baud rate
            --BAUD_VAL_FRACTION => open,    --Not used in this implementation
            BIT8 => bit8_s,
            CLK => clk,
            CSN => csn_s,
            DATA_IN => data_in_s,
            ODD_N_EVEN => odd_n_even_s,
            OEN => oen_s,
            PARITY_EN => parity_en_s,
            RESET_N => button1 or rstn,
            RX => rx,
            WEN => wen_s,
            
            DATA_OUT => data_out_s,
            FRAMING_ERR => framing_err_s,
            OVERFLOW => overflow_s,
            PARITY_ERR => parity_err_s,
            RXRDY => rxrdy_s,
            TX => tx,
            TXRDY => txrdy_s
        );
        
    default_values_i : entity work.default_values
        port map (
            CLK => clk,
            RST => rstn,
            BUTTON => button2,
            
            TX_RDY => txrdy_s,
            
            BAUD_VAL => baud_val_s,
            BIT8 => bit8_s,
            CSN => csn_s,
            DATA_IN => open,
            ODD_N_EVEN => odd_n_even_s,
            PARITY_EN => parity_en_s,
            WEN => open
        );
        
    uart_reader_i : entity work.uart_reader
        port map (
            CLK => clk,
            RST => rstn,
            DATA_OUT => data_out_s,
            
            OEN => oen_s,
            DATA_IN => data_in_s,
            WEN => wen_s,
            FRAMING_ERR => framing_err_s,
            OVERFLOW => overflow_s,
            PARITY_ERR => parity_err_s,
            RXRDY => rxrdy_s,
            TXRDY => txrdy_s,
            
            LED1 => LED1,
            LED2 => LED2,
            LED3 => LED3,
            LED4 => LED4
        );
end architecture_top_level;
