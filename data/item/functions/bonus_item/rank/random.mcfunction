# 根据当前轮数生成随机品质的物品

# 品质 = d100 + (轮数 - 5) x 10
scoreboard players set $random_min mem -49
scoreboard players set $random_max mem 50
function lib:random
scoreboard players operation $t_quality mem = $round mem
scoreboard players operation $t_quality mem *= $c_10 mem
scoreboard players operation $t_quality mem += $random mem

# 根据品质生成不同的物品
execute if score $t_quality mem matches ..24 run function item:bonus_item/rank/white
execute if score $t_quality mem matches 25..54 run function item:bonus_item/rank/green
execute if score $t_quality mem matches 55..79 run function item:bonus_item/rank/blue
execute if score $t_quality mem matches 80.. run function item:bonus_item/rank/purple