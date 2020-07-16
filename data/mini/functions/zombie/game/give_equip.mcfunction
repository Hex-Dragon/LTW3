# 将无装备猪灵变为有装备猪灵

tag @s remove empty_pig

# 生成随机数
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 4
function lib:random

# 给予装备
execute if score $random mem matches 1..2 run replaceitem entity @s weapon.mainhand minecraft:crossbow
execute if score $random mem matches 3..4 run replaceitem entity @s weapon.mainhand minecraft:golden_sword
execute if score $random mem matches 2..3 run replaceitem entity @s armor.legs minecraft:golden_leggings

# TODO : [HIM] 被猪灵打了之后给予 2 秒无敌和速度