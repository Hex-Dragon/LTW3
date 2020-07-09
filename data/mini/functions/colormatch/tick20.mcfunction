# 每秒函数
# 开新的一轮
execute if score $countdown mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/remove_ground
execute if score $countdown mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/start_new_round

# TODO 显示当前剩余秒数
