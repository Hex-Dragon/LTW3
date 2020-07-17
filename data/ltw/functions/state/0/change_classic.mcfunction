# 切换为经典模式
execute if score $game_type mem matches 1 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},"游戏模式已切换为 ",{"text": "经典模式","color":"aqua"}]
scoreboard players set $game_type mem 0
execute as @a at @s run function lib:sounds/teleport
function ltw:state/0/refresh_game_type

# 取消倒计时
scoreboard players set $countdown mem 0