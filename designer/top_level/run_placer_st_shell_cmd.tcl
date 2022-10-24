read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level_layout_combinational_loops.xml}
report -type slack {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level_place_and_route_constraint_coverage.xml}]
set reportfile {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp