# 生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation #quality mem = $random mem

# 根据品质生成不同的物品
# 白色：40%
execute if score #quality mem matches ..39 run function item:bonus_item/gameparty/mixed/white
# 绿色：30%
execute if score #quality mem matches 40..69 run function item:bonus_item/gameparty/mixed/green
# 蓝色：20%
execute if score #quality mem matches 70..89 run function item:bonus_item/gameparty/mixed/blue
# 紫色：10%
execute if score #quality mem matches 90.. run function item:bonus_item/gameparty/mixed/purple
