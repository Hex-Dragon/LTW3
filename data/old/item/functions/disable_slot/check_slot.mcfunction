# 第八格
# execute unless data entity @s Inventory[{Slot:7b,tag:{game_item:1b}}] unless data entity @s Inventory[{Slot:7b,tag:{LockItem:1b,LockSlot:7b},Count:1b}] run function item:disable_slot/disable_slot_7

# 第九格
execute unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b}}] unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b,LockSlot:8b},Count:1b}] run function item:disable_slot/disable_slot_8

# 清除临时物品
clear @a red_dye{LockTempItem:1b}