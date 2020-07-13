# 当玩家拾取到奖励物品时触发
# as player

# 将玩家拾取到的原物品替换到原点的唱片机里
setblock 0 0 0 jukebox replace
data modify block 0 0 0 RecordItem set from entity @s Inventory[{"tag":{"bonus_new":1b}}]
clear @s #item:bonus{"bonus_new":1b}

# 通知玩家物品被拾取
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"nbt": "RecordItem.tag.item_name","block": "0 0 0","interpret": true}]

# 如果有 return 标签则退回物品（最先执行）
execute if data block 0 0 0 RecordItem.tag{"bonus_return":1b} run function item:bonus_item/return_item

# 如果有 add_score 标签则增加积分
execute if data block 0 0 0 RecordItem.tag.bonus_add_score run function item:bonus_item/add_score

# 如果有 give_items 标签则给与物品
execute if data block 0 0 0 RecordItem.tag.bonus_give_items[0] run function item:bonus_item/give_items
