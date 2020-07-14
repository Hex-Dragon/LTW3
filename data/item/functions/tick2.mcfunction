
# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起
execute as @e[type=item] if data entity @s Thrower run function item:disable_throw

# 检查玩家拾取奖励物品
execute as @a if predicate item:bonus/is_new_bonus_holder run function item:bonus_item/call

# 检测玩家第九格锁定
execute as @a unless data entity @s Inventory[{Slot:8b,tag:{GameItem:1b}}] unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b},Count:1b}] run function item:disable_slot
execute as @a unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b},Count:1b}] if data entity @s Inventory[{tag:{LockItem:1b},Count:1b}] run clear @s red_dye{LockItem:1b}

# 清除临时物品
clear @a red_dye{LockTempItem:1b}
kill @e[type=item,tag=LockTempItem,nbt={Item:{tag:{LockTempItem:1b}}}]