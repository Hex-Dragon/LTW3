clear @s trident{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item entity @s hotbar.8 replace trident{Damage:248,game_item:1b,display:{Name:'{"text":"补给用三叉戟","italic":false}'}} 1