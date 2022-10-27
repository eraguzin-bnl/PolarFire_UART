# Written by Synplify Pro version map202109actsp1, Build 056R. Synopsys Run ID: sid1666893399 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {clk_main} [get_ports {clk}] 
create_clock -period 1000.000 -waveform {0.000 500.000} -name {ident_coreinst.comm_block_INST.dr2_tck} [get_pins {ident_coreinst/comm_block_INST/jtagi/jtag_clkint_prim/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|identify_clk_int_inferred_clock} [get_pins {ident_coreinst/comm_block_INST/jtagi/b9_Rcmi_KsDw/UDRCK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|b10_8Kz_rKlrtX} [get_pins {ident_coreinst/comm_block_INST/jtagi/b10_8Kz_rKlrtX_3/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {jtag_interface_x|b9_nv_oQwfYF} [get_pins {ident_coreinst/comm_block_INST/jtagi/b9_nv_oQwfYF_3/Y}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {ident_coreinst.comm_block_INST.dr2_tck}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|identify_clk_int_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|b10_8Kz_rKlrtX}]
set_clock_groups -asynchronous -group [get_clocks {jtag_interface_x|b9_nv_oQwfYF}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 
# create_clock -name ident_coreinst.comm_block_INST.dr2_tck n:ident_coreinst.comm_block_INST.dr2_tck -period 1000.0 -waveform {0 500.0}


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

