# 随机召唤僵尸或尸壳

scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 11
function lib:random

# 尸壳
execute if score $random mem matches 0 positioned 1019.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 1 positioned 1002.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 2 positioned 1002.5 13.1 5002.5 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 3 positioned 1018.5 13.1 5023.5 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
# 僵尸
execute if score $random mem matches 4..5 positioned 1019.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 6..7 positioned 1002.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 8..9 positioned 1002.5 13.1 5002.5 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 10..11 positioned 1018.5 13.1 5023.5 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}