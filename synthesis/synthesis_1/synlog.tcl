project -load /home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/synthesis/synthesis_1/scratchproject.prs
puts "Generating SRS instrumentation file: /home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/synthesis/synthesis_1/instr_sources/syn_dics.v"
 if { [catch {write instrumentation} err] } {
    puts stderr "write instrumentation failed $err"
    exit 9
}
