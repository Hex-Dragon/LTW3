clear @s trident{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with trident{Damage:248,game_item:1b,display:{Name:'{"text":"补给用三叉戟","italic":false}'}} 1
scoreboard players set @s countdown_fast -1