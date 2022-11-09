--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: uart_writer.vhd
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
use ieee.numeric_std.all;
use IEEE.std_logic_1164.all;

library work;
use work.uart_picture.all;

entity uart_writer is
port (
    CLK : IN std_logic;
    RST : IN std_logic;
    
    START : IN std_logic;
    TXRDY : IN  std_logic; -- example
    
    UART_CONTROL : OUT std_logic;
    
    DATA_IN: OUT std_logic_vector(7 downto 0);
    WEN : OUT std_logic
);
end uart_writer;
architecture architecture_uart_writer of uart_writer is
    signal start_prev : std_logic;
    signal start_curr : std_logic;
    
    signal message_index : integer range 0 to message_length - 1;
    signal line_index : integer range 0 to lines - 1;
    
    type sequence_state_type is (s_idle, s_first, s_wait, s_new_line, s_carriage_return, s_wait2, s_line_feed, s_wait3, s_finish);
    signal sequence_wr_state : sequence_state_type;

begin

    process (CLK) 
        variable current_char : character;
        variable current_line : message_type;
        begin
        if rising_edge(CLK) then
            if (RST = '0') then
                start_prev <= '0';
                start_curr <= '0';
                UART_CONTROL <= '0';
                sequence_wr_state <= s_idle;
                WEN <= '1';
                message_index <= 0;
                line_index <= 0;
            else
                start_curr <= START;
                start_prev <= start_curr;
                
                case sequence_wr_state is
                    when s_idle =>
                        if (start_curr = '1' and start_prev = '0') then
                            sequence_wr_state <= s_first;
                            UART_CONTROL <= '1';
                        end if;
                        
                    when s_first =>
                        WEN <= '1';
                        if (TXRDY = '1') then
                            WEN <= '0';
                            current_line := full_message_array(line_index);
                            current_char := current_line(message_index);
                            DATA_IN <= std_logic_vector(to_unsigned(character'pos(current_char), 8));
                            sequence_wr_state <= s_wait;
                            if (message_index = message_length - 1) then
                                sequence_wr_state <= s_new_line;
                            end if;
                        end if;
                        
                    when s_wait =>
                        message_index <= message_index + 1;
                        WEN <= '1';
                        sequence_wr_state <= s_first;
                        
                    when s_new_line =>
                        message_index <= 0;
                        WEN <= '1';
                        sequence_wr_state <= s_carriage_return;
                        
                    when s_carriage_return =>
                        WEN <= '1';
                        if (TXRDY = '1') then
                            WEN <= '0';
                            DATA_IN <= x"0D";
                            sequence_wr_state <= s_wait2;
                        end if;
                        
                    when s_wait2 =>
                        WEN <= '1';
                        sequence_wr_state <= s_line_feed;
                        
                    when s_line_feed =>
                        WEN <= '1';
                        if (TXRDY = '1') then
                            WEN <= '0';
                            DATA_IN <= x"0A";
                            sequence_wr_state <= s_wait3;
                        end if;
                        
                    when s_wait3 =>
                        WEN <= '1';
                        
                        if (line_index = lines - 1) then
                            sequence_wr_state <= s_finish;
                        else
                            line_index <= line_index + 1;
                            sequence_wr_state <= s_first;
                        end if;
                    
                    when s_finish =>
                        WEN <= '1';
                        UART_CONTROL <= '0';
                        line_index <= 0;
                        sequence_wr_state <= s_idle;
                        
                    when others =>
                        WEN <= '1';
                        UART_CONTROL <= '0';
                        sequence_wr_state <= s_idle;
                end case;
            end if;
        
        end if;
    end process;
end architecture_uart_writer;
