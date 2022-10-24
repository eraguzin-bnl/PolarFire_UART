new_project \
         -name {top_level} \
         -location {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300T} \
         -name {MPF300T}
enable_device \
         -name {MPF300T} \
         -enable {TRUE}
save_project
close_project
