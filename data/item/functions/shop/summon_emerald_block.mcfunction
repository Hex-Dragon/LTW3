# 给予绿宝石块
summon item ~ ~ ~ {Item:{id:"emerald_block",Count:1b},Tags:["score_item"],PickupDelay:0}
execute if score @s temp matches 1..64 store result entity @e[type=item,tag=score_item,limit=1] Item.Count byte 1 run scoreboard players get @s temp
execute if score @s temp matches 65.. run data modify entity @e[type=item,tag=score_item,limit=1] Item.Count set value 64b 
data modify entity @e[type=item,tag=score_item,limit=1] Owner set from entity @s UUID
tag @e[type=item,tag=score_item] remove score_item
scoreboard players remove @s temp 64
execute if score @s temp matches 1.. run function item:shop/summon_emerald_block


