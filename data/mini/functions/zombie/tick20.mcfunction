# 随机召唤僵尸
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 10
function lib:random

execute if score $random mem matches 1..2 positioned 1019.0 18.1 5013.0 unless entity @e[type=zombie,distance=..1] run summon zombie ~ ~ ~
execute if score $random mem matches 3..4 positioned 1002.0 18.1 5013.0 unless entity @e[type=zombie,distance=..1] run summon zombie ~ ~ ~
execute if score $random mem matches 5 positioned 1002.5 13.1 5002.5 unless entity @e[type=zombie,distance=..1] run summon zombie ~ ~ ~
execute if score $random mem matches 6 positioned 1018.5 13.1 5023.5 unless entity @e[type=zombie,distance=..1] run summon zombie ~ ~ ~

# team leave @e[type=zombie]
# team join ltw @e[type=zombie,tag=new_zombie]
# tag @e remove new_zombie