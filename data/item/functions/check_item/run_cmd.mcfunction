#as player
#with forceload 0 0
setblock 0 0 0 jukebox replace
data modify block 0 0 0 RecordItem set from entity @s Inventory[{"tag":{"item_new":1b}}]
#清除原物品
clear @s #item:items{"item_new":1b}

#通知玩家物品被拾取
tellraw @a [{"selector": "@s"},{"text":"获得了道具："},{"nbt": "RecordItem.tag.item_name","block": "0 0 0","interpret": true}]

# TODO 通过判断RecordItem.tag里的自定义标签来决定捡起道具之后的事情（如增加积分）



#如果有return标签则退回物品
execute if data block 0 0 0 RecordItem.tag{"item_return":1b} run function item:check_item/return_item