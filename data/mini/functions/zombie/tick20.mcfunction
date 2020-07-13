# 随机召唤僵尸
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 4
function lib:random
execute if score $random mem matches 1 run summon zombie 1006.0 20.5 5013.0 {Tags:["new_zombie"]}
execute if score $random mem matches 2 run summon zombie 1015.0 20.5 5013.0 {Tags:["new_zombie"]}
team leave @e[type=zombie]
team join ltw @e[type=zombie,tag=new_zombie]
tag @e remove new_zombie