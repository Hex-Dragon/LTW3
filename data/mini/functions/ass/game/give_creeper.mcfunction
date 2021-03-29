clear @s creeper_spawn_egg{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

replaceitem entity @s hotbar.8 creeper_spawn_egg{game_item:1b,display:{Name:'{"text":"苦力怕刷怪蛋","italic":false}'},EntityTag:{ignited:1b,Fuse:30s,AbsorptionAmount:1000},CanPlaceOn:["#mini:creeper_block"]} 1