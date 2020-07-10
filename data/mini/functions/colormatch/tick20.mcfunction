# 每秒函数
# 开新的一轮
execute if score $countdown mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/game/remove_ground
execute if score $countdown mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/game/start_new_round

# 显示当前剩余秒数
execute if score $countdown mem matches 1.. if score $color_match_type mem matches 0 run title @a actionbar [{"text":"距离地板消失: ","color":"red","bold": true},{"score": { "name": "$countdown","objective": "mem"}}]
execute if score $countdown mem matches 1.. if score $color_match_type mem matches 1 run title @a actionbar [{"text":"距离下一轮开始: ","color":"red","bold": true},{"score": { "name": "$countdown","objective": "mem"}}]