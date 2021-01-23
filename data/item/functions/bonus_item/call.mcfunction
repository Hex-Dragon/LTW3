# 当玩家拾取到奖励物品时触发
# as player

# 获取玩家待处理奖励物品列表
data modify storage item:bouns item_buff set value []
data modify storage item:bouns item_buff append from entity @s Inventory[{"tag":{"bonus_new":1b}}]
clear @s #item:bonus{"bonus_new":1b}

execute unless data storage item:bouns item_buff[0] run function item:bonus_item/call_each
