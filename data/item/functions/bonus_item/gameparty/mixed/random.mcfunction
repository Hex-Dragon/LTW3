# 生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation #quality mem = $random mem

# 根据品质生成不同的物品
# 白色：55%
execute if score #quality mem matches ..55 run function item:bonus_item/gameparty/mixed/white
# 绿色：30%
execute if score #quality mem matches 56..85 run function item:bonus_item/gameparty/mixed/green
# 蓝色：10%
execute if score #quality mem matches 86..98 run function item:bonus_item/gameparty/mixed/blue
# 紫色：2%
execute if score #quality mem matches 99.. run function item:bonus_item/gameparty/mixed/purple
