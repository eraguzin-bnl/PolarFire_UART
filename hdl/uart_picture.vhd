--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: uart_picture.vhd
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
use IEEE.std_logic_1164.all;

package uart_picture is

    constant message_length : integer := 11; 
    constant lines : integer := 2;
    
    type message_type is array (integer range 0 to message_length) of character;
    type full_message is array (integer range 0 to lines) of message_type;
    
    constant starting_message : message_type := "Hello World!";
    constant starting_message2 : message_type := "Jello Firld!";
    
    constant full_message_array : full_message := (starting_message, starting_message2);

end package;