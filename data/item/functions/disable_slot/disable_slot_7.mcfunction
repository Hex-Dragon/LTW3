clear @s crimson_button{LockItem:1b,LockSlot:7b}
execute if data entity @s Inventory[{Slot:7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot:7b}] at @s run function item:pop_slot/return_item
item replace entity @s hotbar.7 with crimson_button{LockItem:1b,LockSlot:7b,display:{Name:'{"text":"已锁定","color":"red","italic":false}'}}