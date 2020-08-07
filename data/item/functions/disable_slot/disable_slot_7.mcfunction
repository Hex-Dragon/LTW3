clear @s barrier{LockItem:1b,LockSlot:7b}
execute if data entity @s Inventory[{Slot:7b}] unless data entity @s Inventory[{Slot:7b,tag:{LockItem:1b}}] at @s run function item:return_slot/return_slot_7
replaceitem entity @s hotbar.7 barrier{LockItem:1b,LockSlot:7b,display:{Name:'{"text":"已锁定","color":"red","italic":false}'}}