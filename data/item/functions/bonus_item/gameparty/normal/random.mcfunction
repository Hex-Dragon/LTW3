# 生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation #quality mem = $random mem

# 根据品质生成不同的物品
# 白色：45%
execute if score #quality mem matches ..44 run function item:bonus_item/gameparty/normal/white
# 绿色：30%
execute if score #quality mem matches 45..74 run function item:bonus_item/gameparty/normal/green
# 蓝色：20%
execute if score #quality mem matches 75..94 run function item:bonus_item/gameparty/normal/blue
# 紫色：5%
execute if score #quality mem matches 95.. run function item:bonus_item/gameparty/normal/purple
