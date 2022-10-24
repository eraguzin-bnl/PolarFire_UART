set_device -family {PolarFire} -die {MPF300T} -speed {-1}
read_adl {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level.adl}
read_afl {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level.afl}
map_netlist
read_sdc {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/constraint/user.sdc}
check_constraints {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/constraint/placer_sdc_errors.log}
estimate_jitter -report {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/place_and_route_jitter_report.txt}
write_sdc -mode layout {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/place_route.sdc}
