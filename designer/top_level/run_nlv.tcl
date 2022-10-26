# Netlist Viewer TCL File
set_family -name PolarFire
top_module -name top_level
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Clock_gen.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Rx_async.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Tx_async.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/fifo_256x8_g5.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/coreuart_pkg.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/CoreUART.vhd}
addfile -view RTL -lib COREUART_LIB -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/components.vhd}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0.vhd}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/default_values.vhd}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/uart_reader.vhd}
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/top_level.vhd}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/synthesis/top_level.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/COMPILE/top_level.afl}