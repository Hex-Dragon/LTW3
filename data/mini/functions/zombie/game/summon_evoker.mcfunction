# 召唤唤魔者

scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 4
function lib:random

# 尸壳
execute if score $random mem matches 0 positioned 1019.0 20.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon evoker ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 1 positioned 1002.0 19.1 5016.0 unless entity @e[tag=mini_mob,distance=..1] run summon evoker ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 2 positioned 1019.0 13.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon evoker ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 3 positioned 1002.0 13.1 5024.0 unless entity @e[tag=mini_mob,distance=..1] run summon evoker ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 4 positioned 1002.0 13.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon evoker ~ ~ ~ {Tags:["mini_mob"]}

tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"text": "唤魔者 ","color":"gold"},"已出现!"]