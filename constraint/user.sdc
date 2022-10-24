# Setting the frequency of this clock
create_clock -name {clk_main} -period 20 -waveform {0 10 } [ get_ports { clk } ]