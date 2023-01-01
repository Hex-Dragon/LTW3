clear @s creeper_spawn_egg{game_item:1b}
scoreboard players set @s countdown_fast -1

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players set @s item_slot -106
execute if data entity @s Inventory[{Slot:-106b}] at @s run function item:pop_slot/return_item

item replace entity @s weapon.offhand with creeper_spawn_egg{game_item:1b,display:{Name:'{"text":"苦力怕刷怪蛋","color":"aqua","italic":false}'},EntityTag:{CustomName:'',ignited:1b,Fuse:34s,AbsorptionAmount:1000},CanPlaceOn:["#mini:creeper_block"],HideFlags:16} 1
