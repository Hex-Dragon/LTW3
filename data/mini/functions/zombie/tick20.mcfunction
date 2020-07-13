# 随机召唤僵尸
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 2
function lib:random
execute if score $random mem matches 1 run summon zombie 1006.0 20.5 5013.0
execute if score $random mem matches 2 run summon zombie 1015.0 20.5 5013.0