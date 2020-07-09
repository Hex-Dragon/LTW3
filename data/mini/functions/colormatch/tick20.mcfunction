# 每秒函数
# 开新的一轮
execute if score $countdown mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/remove_ground
execute if score $countdown mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/start_new_round

# 显示当前剩余秒数
execute if score $countdown mem matches 1.. run title @a actionbar [{"text":"剩余时间: ","color":"red","bold": true},{"score": { "name": "$countdown","objective": "mem"}}]