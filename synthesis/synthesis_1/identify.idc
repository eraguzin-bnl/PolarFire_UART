device jtagport builtin
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -depth 128
breakpoints add -iice {IICE} -silent {/architecture_top_level/uart_reader_i/architecture_uart_reader/process_52/if_53/if_71/case_79/if_94/uart_reader.vhd:97}
iice clock -iice {IICE} -edge positive {/architecture_top_level/uart_reader_i/clk}
breakpoints add -iice {IICE} -silent {/architecture_top_level/uart_reader_i/architecture_uart_reader/process_52/if_53/if_71/case_79/if_94/uart_reader.vhd:95}
signals add -iice {IICE} -silent -sample {/architecture_top_level/uart_reader_i/parity_err}\
{/architecture_top_level/uart_reader_i/data_in}\
{/architecture_top_level/uart_reader_i/led1}\
{/architecture_top_level/uart_reader_i/oen}\
{/architecture_top_level/uart_reader_i/led3}\
{/architecture_top_level/uart_reader_i/led4}\
{/architecture_top_level/uart_reader_i/led2}\
{/architecture_top_level/uart_reader_i/overflow}\
{/architecture_top_level/uart_reader_i/wen}\
{/architecture_top_level/uart_reader_i/data_out}\
{/architecture_top_level/uart_reader_i/framing_err}
signals add -iice {IICE} -silent -sample -trigger {/architecture_top_level/uart_reader_i/rst}\
{/architecture_top_level/uart_reader_i/rxrdy}
signals add -iice {IICE} -silent -trigger {/architecture_top_level/uart_reader_i/txrdy}
signals group -iice {IICE} {s1}\
{/architecture_top_level/uart_reader_i/led1}\
{/architecture_top_level/uart_reader_i/led3}\
{/architecture_top_level/uart_reader_i/led4}\
{/architecture_top_level/uart_reader_i/led2}

