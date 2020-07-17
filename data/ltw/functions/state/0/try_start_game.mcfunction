# 尝试开始任意游戏

execute if score $countdown mem matches 0 run scoreboard players set $countdown mem 11

execute if score $game_type mem matches 0 run function ltw:state/0/try_start_classic
execute if score $game_type mem matches 1 run function ltw:state/0/try_start_gameparty

execute if score $countdown mem matches 11 run scoreboard players set $countdown mem 10