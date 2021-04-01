clear @s creeper_spawn_egg{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players set @s item_slot -106
execute if data entity @s Inventory[{Slot:-106b}] at @s run function item:pop_slot/return_item

replaceitem entity @s weapon.offhand creeper_spawn_egg{game_item:1b,display:{Name:'{"text":"苦力怕刷怪蛋","italic":false}'},EntityTag:{CustomName:'',ignited:1b,Fuse:35s,AbsorptionAmount:1000},CanPlaceOn:["#mini:creeper_block"],HideFlags:16} 1
function lib:sounds/hit