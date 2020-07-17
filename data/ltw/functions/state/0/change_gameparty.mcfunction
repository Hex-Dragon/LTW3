# 切换为小游戏模式
execute if score $game_type mem matches 0 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "已切换为小游戏模式!","color":"aqua"}]
scoreboard players set $game_type mem 1
function ltw:state/0/refresh_state