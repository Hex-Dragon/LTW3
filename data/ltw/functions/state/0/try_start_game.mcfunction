# 尝试开始任意游戏

# 进行条件判断
execute if score $countdown mem matches 0 run scoreboard players set $countdown mem 11
execute if score $game_type mem matches 0 run function ltw:state/0/try_start_classic
execute if score $game_type mem matches 1 run function ltw:state/0/try_start_gameparty

# 进行提示
execute if score $countdown mem matches 11 run tellraw @a [{"text":"","color":"green"},{"text": ">> ","bold": true},"游戏即将开始, 请到准备区域准备, 若想旁观则请离开准备区域!"]
execute if score $countdown mem matches 11 as @a at @s run function lib:sounds/levelup
execute if score $countdown mem matches 11 run scoreboard players set $countdown mem 10