# 根据当前轮数生成随机品质的物品

# 品质 = d100 + (轮数 - 5) x 10
scoreboard players set $random_min mem -49
scoreboard players set $random_max mem 50
function lib:random
scoreboard players operation #quality mem = $round mem
scoreboard players operation #quality mem *= $c_10 mem
scoreboard players operation #quality mem += $random mem

# 根据品质生成不同的物品
execute if score #quality mem matches ..24 run function item:bonus_item/gameparty/normal/white
# 绿色：35%
execute if score #quality mem matches 25..59 run function item:bonus_item/gameparty/normal/green
# 蓝色：25%
execute if score #quality mem matches 60..84 run function item:bonus_item/gameparty/normal/blue
# 紫色：15%
execute if score #quality mem matches 85.. run function item:bonus_item/gameparty/normal/purple