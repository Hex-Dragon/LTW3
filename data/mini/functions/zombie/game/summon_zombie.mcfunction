# 随机召唤僵尸或尸壳

scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 14
function lib:random

# 尸壳
execute if score $random mem matches 0 positioned 1019.0 20.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 1 positioned 1002.0 19.1 5016.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 2 positioned 1019.0 13.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 3 positioned 1002.0 13.1 5024.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 4 positioned 1002.0 13.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon husk ~ ~ ~ {Tags:["mini_mob"]}
# 僵尸
execute if score $random mem matches 5..6 positioned 1019.0 20.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 7..8 positioned 1002.0 19.1 5016.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 9..10 positioned 1019.0 13.1 5013.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 11..12 positioned 1002.0 13.1 5024.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}
execute if score $random mem matches 13..14 positioned 1002.0 13.1 5002.0 unless entity @e[tag=mini_mob,distance=..1] run summon zombie ~ ~ ~ {Tags:["mini_mob"]}

# 关闭怪物间友伤
team join white @e[tag=mini_mob]