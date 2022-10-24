open_project -project {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level_fp/top_level.pro}
enable_device -name {MPF300T} -enable 1
set_programming_file -name {MPF300T} -file {/home/eraguzin/nextcloud/LuSEE/Libero/projects/uart/designer/top_level/top_level.ppd}
set_programming_action -action {PROGRAM} -name {MPF300T} 
run_selected_actions
save_project
close_project
