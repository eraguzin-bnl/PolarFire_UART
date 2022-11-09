quietly set ACTELLIBNAME PolarFire
quietly set PROJECT_DIR "/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap PolarFire "/usr/local/microchip/Libero_SoC_v2022.2/Libero/lib/modelsimpro/precompiled/vlog/polarfire"
if {[file exists COREUART_LIB/_info]} {
   echo "INFO: Simulation library COREUART_LIB already exists"
} else {
   file delete -force COREUART_LIB 
   vlib COREUART_LIB
}
vmap COREUART_LIB "COREUART_LIB"

vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Clock_gen.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Rx_async.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/Tx_async.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/fifo_256x8_g5.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/coreuart_pkg.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/CoreUART.vhd"
vcom -2008 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0_0/rtl/vhdl/core/components.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/component/work/COREUART_C0/COREUART_C0.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/default_values.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/sys_init.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/uart_reader.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/uart_writer.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/top_level.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/stimulus/uart_tester.vhd"

vsim -L PolarFire -L presynth -L COREUART_LIB  -t 1ps -pli /usr/local/microchip/Libero_SoC_v2022.2/Libero/lib/modelsimpro/pli/pf_crypto_lin_me_pli.so presynth.uart_tester
add wave /uart_tester/*
run 1000ns
