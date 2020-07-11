# 检查玩家拾取的奖励物品并进行处理

setblock 8 12 2009 jukebox
data modify block 8 12 2009 RecordItem set from entity @s Inventory[{"tag":{"bonus_new":1b}}]
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"yellow"},{"text":"获得了 "},{"nbt": "RecordItem.tag.bonus_name","block": "8 12 2009","interpret": true}]
data modify block 8 12 2009 RecordItem.tag.bonus_new set value 0b
clear @s #item:items{"bonus_new":1b}
fill 8 12 2009 8 12 2009 air destroy
tag @s add bonus_op
execute as @e[tag=!bonus_old,type=minecraft:item,nbt={"Item":{"tag":{"bonus":1b}}},limit=1] run function item:bonus_item_give
tag @s remove bonus_op
# TODO : [010] 将坐标迁移到主大厅