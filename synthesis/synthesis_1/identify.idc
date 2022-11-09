device jtagport builtin
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -depth 128
iice clock -iice {IICE} -edge positive {/architecture_top_level/uart_i/clk}
breakpoints add -iice {IICE} -silent {/architecture_top_level/uart_reader_i/architecture_uart_reader/process_52/if_53/if_71/case_79/if_94/uart_reader.vhd:95}
breakpoints add -iice {IICE} -silent {/architecture_top_level/uart_reader_i/architecture_uart_reader/process_52/if_53/if_71/case_79/if_94/uart_reader.vhd:97}
signals add -iice {IICE} -silent -sample {/architecture_top_level/uart_i/tx}\
{/architecture_top_level/uart_i/rxrdy}\
{/architecture_top_level/uart_i/rx}\
{/architecture_top_level/uart_reader_i/led4}\
{/architecture_top_level/uart_reader_i/led3}\
{/architecture_top_level/uart_reader_i/led2}\
{/architecture_top_level/uart_reader_i/led1}\
{/architecture_top_level/uart_reader_i/oen}\
{/architecture_top_level/uart_reader_i/data_in}\
{/architecture_top_level/uart_reader_i/parity_err}\
{/architecture_top_level/uart_reader_i/overflow}\
{/architecture_top_level/uart_reader_i/framing_err}\
{/architecture_top_level/uart_reader_i/data_out}\
{/architecture_top_level/txrdy_s}\
{/architecture_top_level/rxrdy_s}\
{/architecture_top_level/parity_err_s}\
{/architecture_top_level/overflow_s}\
{/architecture_top_level/framing_err_s}\
{/architecture_top_level/data_out_s}\
{/architecture_top_level/wen_s}\
{/architecture_top_level/parity_en_s}\
{/architecture_top_level/oen_s}\
{/architecture_top_level/odd_n_even_s}\
{/architecture_top_level/data_in_s}\
{/architecture_top_level/csn_s}\
{/architecture_top_level/bit8_s}\
{/architecture_top_level/baud_val_s}\
{/tx}\
{/rx}\
{/architecture_top_level/uart_reader_i/wen}
signals add -iice {IICE} -silent -sample -trigger {/architecture_top_level/uart_reader_i/rxrdy}\
{/architecture_top_level/uart_reader_i/rst}
signals add -iice {IICE} -silent -trigger {/architecture_top_level/uart_reader_i/txrdy}
signals group -iice {IICE} {s1}\
{/architecture_top_level/uart_i/rxrdy}\
{/architecture_top_level/uart_reader_i/led4}\
{/architecture_top_level/parity_en_s}\
{/architecture_top_level/odd_n_even_s}\
{/architecture_top_level/baud_val_s}\
{/architecture_top_level/parity_err_s}\
{/tx}\
{/rx}\
{/architecture_top_level/csn_s}\
{/architecture_top_level/overflow_s}\
{/architecture_top_level/bit8_s}\
{/architecture_top_level/framing_err_s}\
{/architecture_top_level/data_in_s}\
{/architecture_top_level/wen_s}\
{/architecture_top_level/uart_reader_i/led2}\
{/architecture_top_level/data_out_s}\
{/architecture_top_level/uart_reader_i/led1}\
{/architecture_top_level/uart_reader_i/led3}\
{/architecture_top_level/txrdy_s}\
{/architecture_top_level/oen_s}\
{/architecture_top_level/rxrdy_s}\
{/architecture_top_level/uart_i/rx}\
{/architecture_top_level/uart_i/tx}

