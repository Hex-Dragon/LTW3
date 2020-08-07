clear @s red_dye{LockItem:1b,LockSlot:8b}
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,tag:{LockItem:1b}}] at @s run function item:return_slot/return_slot_8
replaceitem entity @s hotbar.8 red_dye{LockItem:1b,LockSlot:8b,display:{Name:'{"text":"已锁定","color":"red","bold":true,"italic":false}'}}