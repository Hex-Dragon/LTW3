# 切换为经典模式
execute if score $game_type mem matches 1 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "已切换为经典模式!","color":"aqua"}]
scoreboard players set $game_type mem 0
function ltw:state/0/refresh_state