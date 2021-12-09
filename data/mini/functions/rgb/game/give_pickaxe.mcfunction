clear @s netherite_pickaxe{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with minecraft:netherite_pickaxe{game_item:1b,display:{Name:'{"text":"镐","italic":false}'},Enchantments:[{id:"minecraft:efficiency",lvl:6s}]} 1