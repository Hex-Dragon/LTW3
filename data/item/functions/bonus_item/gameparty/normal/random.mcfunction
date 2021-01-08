# 生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation #quality mem = $random mem

# 根据品质生成不同的物品
# 白色：50%
execute if score #quality mem matches ..50 run function item:bonus_item/gameparty/normal/white
# 绿色：30%
execute if score #quality mem matches 51..80 run function item:bonus_item/gameparty/normal/green
# 蓝色：20%
execute if score #quality mem matches 81.. run function item:bonus_item/gameparty/normal/blue
# 紫色：0%
# execute if score #quality mem matches 95.. run function item:bonus_item/gameparty/normal/purple
