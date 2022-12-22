clear @s crimson_button{LockItem:1b,LockSlot:8b}
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item
item replace entity @s hotbar.8 with crimson_button{LockItem:1b,LockSlot:8b,display:{Name:'{"text":"已锁定","color":"red","italic":false}'}}