# Microsemi Corp.
# Date: 2022-Nov-09 12:10:17
# This file was generated based on the following SDC source files:
#   /home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/constraint/user.sdc
#

create_clock -name {clk_main} -period 20 -waveform {0 10 } [ get_ports { clk } ]
set_clock_uncertainty 0.000338915 [ get_clocks { clk_main } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk_main } ] -rise_to [ get_clocks { clk_main } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk_main } ] -fall_to [ get_clocks { clk_main } ]
