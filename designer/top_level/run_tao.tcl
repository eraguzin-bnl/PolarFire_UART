set_device -family {PolarFire} -die {MPF300T} -speed {-1}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Clock_gen.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Rx_async.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Tx_async.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/fifo_256x8_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/coreuart_pkg.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/CoreUART.vhd}
read_vhdl -mode vhdl_2008 -lib COREUART_LIB {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/components.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/component/work/COREUART_C0/COREUART_C0.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/default_values.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/sys_init.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/uart_reader.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/uart_picture.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/uart_writer.vhd}
read_vhdl -mode vhdl_2008 {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/hdl/top_level.vhd}
set_top_level {top_level}
map_netlist
read_sdc {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/constraint/user.sdc}
check_constraints {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/constraint/synthesis_sdc_errors.log}
write_fdc {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/synthesis.fdc}
