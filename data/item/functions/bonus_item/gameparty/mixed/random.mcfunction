# 生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation #quality mem = $random mem

# 根据品质生成不同的物品
# 白色：50%
execute if score #quality mem matches ..50 run function item:bonus_item/gameparty/mixed/white
# 绿色：30%
execute if score #quality mem matches 50..79 run function item:bonus_item/gameparty/mixed/green
# 蓝色：15%
execute if score #quality mem matches 80..95 run function item:bonus_item/gameparty/mixed/blue
# 紫色：5%
execute if score #quality mem matches 96.. run function item:bonus_item/gameparty/mixed/purple
