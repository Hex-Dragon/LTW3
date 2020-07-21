# 刷新单个玩家背包中的金粒

clear @s gold_ingot
clear @s gold_nugget

# 获取金锭数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp /= #count_9 mem
# 给予金锭
execute if score @s temp matches 1.. at @s run summon item ~ ~ ~ {Item:{id:"gold_ingot",Count:1b},Tags:["score_item_ingot"],PickupDelay:0}
execute if score @s temp matches 1.. store result entity @e[type=item,tag=score_item_ingot,limit=1] Item.Count byte 1 run scoreboard players get @s temp
execute if score @s temp matches 1.. run data modify entity @e[type=item,tag=score_item_ingot,limit=1] Owner set from entity @s UUID
# 获取金粒数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp %= #count_9 mem
# 给予金粒
execute if score @s temp matches 1.. at @s run summon item ~ ~ ~ {Item:{id:"gold_nugget",Count:1b},Tags:["score_item_nugget"],PickupDelay:0}
execute if score @s temp matches 1.. store result entity @e[type=item,tag=score_item_nugget,limit=1] Item.Count byte 1 run scoreboard players get @s temp
execute if score @s temp matches 1.. run data modify entity @e[type=item,tag=score_item_nugget,limit=1] Owner set from entity @s UUID
# TODO : 给予指定数量的物品