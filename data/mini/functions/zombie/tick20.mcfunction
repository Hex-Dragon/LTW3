# 随机召唤怪物

# 生成随机数
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random

# 赋予缓慢效果
execute if score $countdown mem matches ..30 run effect give @e[tag=mini_mob,limit=1,sort=random] speed 2 1
execute if score $countdown mem matches ..80 run effect give @e[tag=mini_mob,limit=1,sort=random] resistance 2 1
execute if score $countdown mem matches ..105 run effect give @e[tag=mini_mob,limit=1,sort=random] speed 2 0
execute if score $countdown mem matches 131..180 run effect give @e[tag=mini_mob,limit=3,sort=random] slowness 2 0
execute if score $countdown mem matches 156..180 run effect give @e[tag=mini_mob,limit=1,sort=random] slowness 2 1

# 显示提示
execute if score $countdown mem matches 155 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "补给物资已经送达!","color":"aqua"}]
execute if score $countdown mem matches 130 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "猪灵开始摆脱缓慢的束缚了!","color":"red"}]
execute if score $countdown mem matches 105 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "补给物资已经送达!","color":"aqua"}]
execute if score $countdown mem matches 80 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "猪灵开始取回他们的装备了!","color":"red"}]
execute if score $countdown mem matches 80 run scoreboard players set $random mem 1
execute if score $countdown mem matches 55 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "补给物资已经送达!","color":"aqua"}]

# 召唤猪灵
execute if score $random mem matches ..10 if score $countdown mem matches 81.. run function mini:zombie/game/summon_empty
execute if score $random mem matches ..20 if score $countdown mem matches ..80 unless entity @e[tag=empty_pig] run function mini:zombie/game/summon_equip
execute if score $random mem matches ..20 if score $countdown mem matches ..80 as @e[tag=empty_pig,limit=1,sort=random] run function mini:zombie/game/give_equip

# 生成奖励
execute if score $countdown mem matches 155 run execute positioned 1015.5 11.0 5022.0 run function item:bonus_item/rank/white
execute if score $countdown mem matches 105 run execute positioned 1005.5 11.0 5004.0 run function item:bonus_item/rank/white
execute if score $countdown mem matches 55 run execute positioned 1015.5 11.0 5022.0 run function item:bonus_item/rank/white
