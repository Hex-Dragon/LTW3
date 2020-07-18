# 切换为派对模式
execute if score $game_type mem matches 0 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},"游戏模式已切换为 ",{"text": "派对模式","color":"aqua"}]
execute if score $game_type mem matches 0 as @a at @s run function lib:sounds/teleport
scoreboard players set $game_type mem 1
function ltw:state/0/refresh_game_type

# 取消倒计时
scoreboard players set $countdown mem 0