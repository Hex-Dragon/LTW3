# 当玩家拾取到奖励物品时触发
# as player

# 将玩家拾取到的原物品替换到原点的唱片机里
setblock 0 0 0 jukebox replace
data modify block 0 0 0 RecordItem set from entity @s Inventory[{"tag":{"bonus_new":1b}}]
clear @s #item:bonus{"bonus_new":1b}

# 通知玩家物品被拾取
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"yellow"},{"text":"获得了 "},{"nbt": "RecordItem.tag.item_name","block": "0 0 0","interpret": true}]

# 如果有 return 标签则退回物品
execute if data block 0 0 0 RecordItem.tag{"bonus_return":1b} run function item:bonus_item/return_item

# TODO : [010] 通过判断 RecordItem.tag 里的自定义标签来决定捡起道具之后的事情（如增加积分）
