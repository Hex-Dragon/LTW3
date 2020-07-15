# 随机召唤怪物

# 生成随机数
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random

# 赋予缓慢效果
execute if score $countdown mem matches 61.. run effect give @e[tag=mini_mob,limit=3,sort=random] slowness 2 0
execute if score $countdown mem matches 91.. run effect give @e[tag=mini_mob,limit=1,sort=random] slowness 2 1

# 召唤猪灵
execute if score $random mem matches 1..9 if score $countdown mem matches 1.. run function mini:zombie/game/summon_empty
execute if score $random mem matches 1..15 if score $countdown mem matches ..0 as @e[tag=empty_pig,limit=1,sort=random] run function mini:zombie/game/give_equip
execute if score $random mem matches 1..9 if score $countdown mem matches ..0 unless entity @e[tag=empty_pig] run function mini:zombie/game/summon_equip

# 显示提示
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "猪灵摆脱了缓慢的束缚!","color":"red"}]
execute if score $countdown mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "猪灵取回了他们的装备!","color":"red"}]
