# 根据当前轮数生成随机品质的物品

# 品质 = d100
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 100
function lib:random
scoreboard players operation $t_quality mem = $random mem

# 根据品质生成不同的物品
execute if score $t_quality mem matches ..24 run function item:bonus_item/gameparty/last/white
# 绿色：35%
execute if score $t_quality mem matches 25..59 run function item:bonus_item/gameparty/last/green
# 蓝色：25%
execute if score $t_quality mem matches 60..84 run function item:bonus_item/gameparty/last/blue
# 紫色：15%
execute if score $t_quality mem matches 85.. run function item:bonus_item/gameparty/last/purple