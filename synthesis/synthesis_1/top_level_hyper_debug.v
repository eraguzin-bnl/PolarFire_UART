// available hyper connections - for debug and ip models
// timestamp: 1668013808


`ifndef SYN_HYPER_CONNECT
`define SYN_HYPER_CONNECT 1
module syn_hyper_connect(out) /* synthesis syn_black_box=1 syn_noprune=1 */;
parameter w = 1;
parameter tag = "xxx";
parameter dflt = 0;
parameter mustconnect = 1'b1;
output [w-1:0] out;
endmodule
`endif

module top_level_hyper_debug(dummy);
input dummy; /* avoid compiler error for no ports */

wire [12:0] ident_ihs_baud_val_s_0;
syn_hyper_connect ident_ihs_baud_val_s_connect_0(ident_ihs_baud_val_s_0);
defparam ident_ihs_baud_val_s_connect_0.w = 13;
defparam ident_ihs_baud_val_s_connect_0.tag = "ident_ihs_baud_val_s";


wire ident_ihs_bit8_s_0;
syn_hyper_connect ident_ihs_bit8_s_connect_0(ident_ihs_bit8_s_0);
defparam ident_ihs_bit8_s_connect_0.tag = "ident_ihs_bit8_s";


wire ident_ihs_csn_s_0;
syn_hyper_connect ident_ihs_csn_s_connect_0(ident_ihs_csn_s_0);
defparam ident_ihs_csn_s_connect_0.tag = "ident_ihs_csn_s";


wire [7:0] ident_ihs_data_in_s_0;
syn_hyper_connect ident_ihs_data_in_s_connect_0(ident_ihs_data_in_s_0);
defparam ident_ihs_data_in_s_connect_0.w = 8;
defparam ident_ihs_data_in_s_connect_0.tag = "ident_ihs_data_in_s";


wire [7:0] ident_ihs_data_out_s_0;
syn_hyper_connect ident_ihs_data_out_s_connect_0(ident_ihs_data_out_s_0);
defparam ident_ihs_data_out_s_connect_0.w = 8;
defparam ident_ihs_data_out_s_connect_0.tag = "ident_ihs_data_out_s";


wire ident_ihs_framing_err_s_0;
syn_hyper_connect ident_ihs_framing_err_s_connect_0(ident_ihs_framing_err_s_0);
defparam ident_ihs_framing_err_s_connect_0.tag = "ident_ihs_framing_err_s";


wire ident_ihs_odd_n_even_s_0;
syn_hyper_connect ident_ihs_odd_n_even_s_connect_0(ident_ihs_odd_n_even_s_0);
defparam ident_ihs_odd_n_even_s_connect_0.tag = "ident_ihs_odd_n_even_s";


wire ident_ihs_oen_s_0;
syn_hyper_connect ident_ihs_oen_s_connect_0(ident_ihs_oen_s_0);
defparam ident_ihs_oen_s_connect_0.tag = "ident_ihs_oen_s";


wire ident_ihs_overflow_s_0;
syn_hyper_connect ident_ihs_overflow_s_connect_0(ident_ihs_overflow_s_0);
defparam ident_ihs_overflow_s_connect_0.tag = "ident_ihs_overflow_s";


wire ident_ihs_parity_en_s_0;
syn_hyper_connect ident_ihs_parity_en_s_connect_0(ident_ihs_parity_en_s_0);
defparam ident_ihs_parity_en_s_connect_0.tag = "ident_ihs_parity_en_s";


wire ident_ihs_parity_err_s_0;
syn_hyper_connect ident_ihs_parity_err_s_connect_0(ident_ihs_parity_err_s_0);
defparam ident_ihs_parity_err_s_connect_0.tag = "ident_ihs_parity_err_s";


wire ident_ihs_rx_0;
syn_hyper_connect ident_ihs_rx_connect_0(ident_ihs_rx_0);
defparam ident_ihs_rx_connect_0.tag = "ident_ihs_rx";

wire ident_ihs_rx_1;
syn_hyper_connect ident_ihs_rx_connect_1(ident_ihs_rx_1);
defparam ident_ihs_rx_connect_1.tag = "uart_i.ident_ihs_rx";


wire ident_ihs_rxrdy_s_0;
syn_hyper_connect ident_ihs_rxrdy_s_connect_0(ident_ihs_rxrdy_s_0);
defparam ident_ihs_rxrdy_s_connect_0.tag = "ident_ihs_rxrdy_s";


wire ident_ihs_tx_0;
syn_hyper_connect ident_ihs_tx_connect_0(ident_ihs_tx_0);
defparam ident_ihs_tx_connect_0.tag = "ident_ihs_tx";

wire ident_ihs_tx_1;
syn_hyper_connect ident_ihs_tx_connect_1(ident_ihs_tx_1);
defparam ident_ihs_tx_connect_1.tag = "uart_i.ident_ihs_tx";


wire ident_ihs_txrdy_s_0;
syn_hyper_connect ident_ihs_txrdy_s_connect_0(ident_ihs_txrdy_s_0);
defparam ident_ihs_txrdy_s_connect_0.tag = "ident_ihs_txrdy_s";


wire ident_ihs_wen_s_0;
syn_hyper_connect ident_ihs_wen_s_connect_0(ident_ihs_wen_s_0);
defparam ident_ihs_wen_s_connect_0.tag = "ident_ihs_wen_s";


wire ident_ihs_clk_0;
syn_hyper_connect ident_ihs_clk_connect_0(ident_ihs_clk_0);
defparam ident_ihs_clk_connect_0.tag = "uart_i.ident_ihs_clk";


wire ident_ihs_rxrdy_0;
syn_hyper_connect ident_ihs_rxrdy_connect_0(ident_ihs_rxrdy_0);
defparam ident_ihs_rxrdy_connect_0.tag = "uart_i.ident_ihs_rxrdy";

wire ident_ihs_rxrdy_1;
syn_hyper_connect ident_ihs_rxrdy_connect_1(ident_ihs_rxrdy_1);
defparam ident_ihs_rxrdy_connect_1.tag = "uart_reader_i.ident_ihs_rxrdy";


wire [7:0] ident_ihs_data_in_0;
syn_hyper_connect ident_ihs_data_in_connect_0(ident_ihs_data_in_0);
defparam ident_ihs_data_in_connect_0.w = 8;
defparam ident_ihs_data_in_connect_0.tag = "uart_reader_i.ident_ihs_data_in";


wire [7:0] ident_ihs_data_out_0;
syn_hyper_connect ident_ihs_data_out_connect_0(ident_ihs_data_out_0);
defparam ident_ihs_data_out_connect_0.w = 8;
defparam ident_ihs_data_out_connect_0.tag = "uart_reader_i.ident_ihs_data_out";


wire ident_ihs_framing_err_0;
syn_hyper_connect ident_ihs_framing_err_connect_0(ident_ihs_framing_err_0);
defparam ident_ihs_framing_err_connect_0.tag = "uart_reader_i.ident_ihs_framing_err";


wire ident_ihs_led1_0;
syn_hyper_connect ident_ihs_led1_connect_0(ident_ihs_led1_0);
defparam ident_ihs_led1_connect_0.tag = "uart_reader_i.ident_ihs_led1";


wire ident_ihs_led2_0;
syn_hyper_connect ident_ihs_led2_connect_0(ident_ihs_led2_0);
defparam ident_ihs_led2_connect_0.tag = "uart_reader_i.ident_ihs_led2";


wire ident_ihs_led3_0;
syn_hyper_connect ident_ihs_led3_connect_0(ident_ihs_led3_0);
defparam ident_ihs_led3_connect_0.tag = "uart_reader_i.ident_ihs_led3";


wire ident_ihs_led4_0;
syn_hyper_connect ident_ihs_led4_connect_0(ident_ihs_led4_0);
defparam ident_ihs_led4_connect_0.tag = "uart_reader_i.ident_ihs_led4";


wire ident_ihs_oen_0;
syn_hyper_connect ident_ihs_oen_connect_0(ident_ihs_oen_0);
defparam ident_ihs_oen_connect_0.tag = "uart_reader_i.ident_ihs_oen";


wire ident_ihs_overflow_0;
syn_hyper_connect ident_ihs_overflow_connect_0(ident_ihs_overflow_0);
defparam ident_ihs_overflow_connect_0.tag = "uart_reader_i.ident_ihs_overflow";


wire ident_ihs_parity_err_0;
syn_hyper_connect ident_ihs_parity_err_connect_0(ident_ihs_parity_err_0);
defparam ident_ihs_parity_err_connect_0.tag = "uart_reader_i.ident_ihs_parity_err";


wire ident_ihs_rst_0;
syn_hyper_connect ident_ihs_rst_connect_0(ident_ihs_rst_0);
defparam ident_ihs_rst_connect_0.tag = "uart_reader_i.ident_ihs_rst";


wire ident_ihs_txrdy_0;
syn_hyper_connect ident_ihs_txrdy_connect_0(ident_ihs_txrdy_0);
defparam ident_ihs_txrdy_connect_0.tag = "uart_reader_i.ident_ihs_txrdy";


wire ident_ihs_wen_0;
syn_hyper_connect ident_ihs_wen_connect_0(ident_ihs_wen_0);
defparam ident_ihs_wen_connect_0.tag = "uart_reader_i.ident_ihs_wen";


wire ident_ihs_IICE_master_clock_0;
syn_hyper_connect ident_ihs_IICE_master_clock_connect_0(ident_ihs_IICE_master_clock_0);
defparam ident_ihs_IICE_master_clock_connect_0.tag = "ident_coreinst.IICE_INST.ident_ihs_IICE_master_clock";


wire Identify_IICE_trigger_ext_0;
syn_hyper_connect Identify_IICE_trigger_ext_connect_0(Identify_IICE_trigger_ext_0);
defparam Identify_IICE_trigger_ext_connect_0.tag = "ident_coreinst.IICE_INST.Identify_IICE_trigger_ext";


wire identify_sampler_ready_0;
syn_hyper_connect identify_sampler_ready_connect_0(identify_sampler_ready_0);
defparam identify_sampler_ready_connect_0.tag = "ident_coreinst.IICE_INST.b3_SoW.identify_sampler_ready";


wire [7:0] ujtag_wrapper_uireg_0;
syn_hyper_connect ujtag_wrapper_uireg_connect_0(ujtag_wrapper_uireg_0);
defparam ujtag_wrapper_uireg_connect_0.w = 8;
defparam ujtag_wrapper_uireg_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_uireg";


wire ujtag_wrapper_urstb_0;
syn_hyper_connect ujtag_wrapper_urstb_connect_0(ujtag_wrapper_urstb_0);
defparam ujtag_wrapper_urstb_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_urstb";


wire ujtag_wrapper_udrupd_0;
syn_hyper_connect ujtag_wrapper_udrupd_connect_0(ujtag_wrapper_udrupd_0);
defparam ujtag_wrapper_udrupd_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrupd";


wire ujtag_wrapper_udrck_0;
syn_hyper_connect ujtag_wrapper_udrck_connect_0(ujtag_wrapper_udrck_0);
defparam ujtag_wrapper_udrck_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrck";


wire ujtag_wrapper_udrcap_0;
syn_hyper_connect ujtag_wrapper_udrcap_connect_0(ujtag_wrapper_udrcap_0);
defparam ujtag_wrapper_udrcap_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrcap";


wire ujtag_wrapper_udrsh_0;
syn_hyper_connect ujtag_wrapper_udrsh_connect_0(ujtag_wrapper_udrsh_0);
defparam ujtag_wrapper_udrsh_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_udrsh";


wire ujtag_wrapper_utdi_0;
syn_hyper_connect ujtag_wrapper_utdi_connect_0(ujtag_wrapper_utdi_0);
defparam ujtag_wrapper_utdi_connect_0.tag = "ident_coreinst.comm_block_INST.jtagi.ujtag_wrapper_utdi";

endmodule
