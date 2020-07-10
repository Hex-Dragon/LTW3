
# 开始新的一轮
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/game/remove_ground
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/game/start_new_round

# 显示当前剩余秒数
execute if score $countdown_fast mem matches 1.. if score $color_match_type mem matches 0 run title @a actionbar [{"text":"地板消失: ","color":"red","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]
execute if score $countdown_fast mem matches 1.. if score $color_match_type mem matches 1 run title @a actionbar [{"text":"下一轮: ","color":"green","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]