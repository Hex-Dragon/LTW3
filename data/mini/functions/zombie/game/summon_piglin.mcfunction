# 召唤猪灵
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 4
function lib:random

execute if score $random mem matches 0 positioned 1019.0 20.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b}
execute if score $random mem matches 1 positioned 1002.0 19.1 5016.0 unless entity @e[tag=mini_mob,distance=..1] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b}
execute if score $random mem matches 2 positioned 1019.0 13.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b}
execute if score $random mem matches 3 positioned 1002.0 13.1 5024.0 unless entity @e[tag=mini_mob,distance=..1] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b}
execute if score $random mem matches 4 positioned 1002.0 13.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b}
tag @e[type=piglin] add mini_mob

# 提高追踪范围
execute as @e[type=piglin] run attribute @s generic.follow_range base set 35

# 关闭怪物间友伤
team join white @e[tag=mini_mob]