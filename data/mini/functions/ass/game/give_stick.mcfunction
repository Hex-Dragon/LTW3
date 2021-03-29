clear @s stick{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot:7b}] at @s run function item:pop_slot/return_item

replaceitem entity @s hotbar.7 stick{game_item:1b,display:{Name:'{"text":"击退棒","italic":false}'},Enchantments:[{id:"knockback",lvl:2}]} 1