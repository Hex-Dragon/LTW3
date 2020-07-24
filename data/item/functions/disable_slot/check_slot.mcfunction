# 第八格
execute unless data entity @s Inventory[{Slot:7b,tag:{game_item:1b}}] unless data entity @s Inventory[{Slot:7b,tag:{LockItem:1b,LockSlot:7b},Count:1b}] run function item:disable_slot/disable_slot_7
execute unless data entity @s Inventory[{Slot:7b,tag:{LockItem:1b,LockSlot:7b},Count:1b}] if data entity @s Inventory[{tag:{LockItem:1b,LockSlot:7b},Count:1b}] run clear @s red_dye{LockItem:1b,LockSlot:7b}

# 第九格
execute unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b}}] unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b,LockSlot:8b},Count:1b}] run function item:disable_slot/disable_slot_8
execute unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b,LockSlot:8b},Count:1b}] if data entity @s Inventory[{tag:{LockItem:1b,LockSlot:8b},Count:1b}] run clear @s red_dye{LockItem:1b,LockSlot:8b}

# 清除临时物品
clear @a red_dye{LockTempItem:1b}
kill @e[type=item,tag=LockTempItem,nbt={Item:{tag:{LockTempItem:1b}}}]
