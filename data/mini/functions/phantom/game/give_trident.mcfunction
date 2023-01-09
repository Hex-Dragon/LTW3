clear @s trident{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with trident{game_item:1b,HideFlags:63,display:{Name:'{"text":"一次性三叉戟","italic":false}'},Damage:248} 1
scoreboard players set @s countdown_fast -1