clear @s stick{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

replaceitem entity @s hotbar.8 stick{game_item:1b,display:{Name:'{"text":"击退棒","italic":false}'},Enchantments:[{id:"knockback",lvl:2}]} 1