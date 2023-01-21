# 设置玩家分数
scoreboard players set @s countdown_fast 20
scoreboard players reset @s creeperUse

# 清除刷怪蛋以防bug
clear @s creeper_spawn_egg{game_item:1b}