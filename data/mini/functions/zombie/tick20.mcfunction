# 随机召唤僵尸
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 50
function lib:random

effect clear @a hunger

execute if score $random mem matches 1..2 positioned 1019.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 4 positioned 1019.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 5..6 positioned 1002.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 8 positioned 1002.0 18.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 9..10 positioned 1002.5 13.1 5002.5 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 12 positioned 1002.5 13.1 5002.5 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 13..14 positioned 1018.5 13.1 5023.5 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 16 positioned 1018.5 13.1 5023.5 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}

attribute @e[tag=mini_mob,limit=1,sort=random] generic.movement_speed modifier remove 3d2ff588-63bb-458f-b5b7-a533169db5d9
attribute @e[tag=mini_mob,limit=1,sort=random] generic.movement_speed modifier remove 3d2ff588-63bb-458f-b5b7-a533169db5d9
attribute @e[type=husk,limit=1,sort=random] generic.movement_speed modifier add 3d2ff588-63bb-458f-b5b7-a533169db5d9 mob_speed 0.15 add
attribute @e[type=zombie,limit=1,sort=random] generic.movement_speed modifier add 3d2ff588-63bb-458f-b5b7-a533169db5d9 mob_speed -0.15 add