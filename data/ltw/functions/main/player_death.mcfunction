# 当玩家死亡后触发
scoreboard players reset @s death
say DEBUG: 触发ltw:main/player_death
execute if score $state mem matches 5 run function ltw:state/5/player_death
