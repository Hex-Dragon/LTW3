
# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起
execute as @e[type=item] if data entity @s Thrower run function item:disable_throw

# 检查玩家拾取奖励物品
execute as @a if data entity @s Inventory[{"tag":{"bonus_new":1b}}] run function item:bonus_item/call

# 检测玩家第九格锁定
execute as @a unless data entity @s Inventory[{Slot:8b,tag:{GameItem:1b}}] unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b},Count:1b}] run function item:disable_slot

# 清除临时物品
clear @a red_dye{LockTempItem:1b}
kill @e[type=item,tag=LockTempItem]