
# 物品
clear @s lime_dye{lobby_item:1b}
clear @s gray_dye{lobby_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye",tag:{lobby_item:1b}}}]
# execute if data entity @s Inventory[{Slot:0b}] run scoreboard players set @s item_slot 0
# execute if data entity @s Inventory[{Slot:0b}] at @s run function item:pop_slot/return_item
replaceitem entity @s hotbar.0 lime_dye{lobby_item:1b,display:{Name:'[{"text":"","color":"green","italic":false},"准备模式 (按 ",{"keybind":"key.drop"}," 旁观)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局参与游戏"]']}}
execute at @s run function lib:sounds/hit2

# 队伍
team join hub_play @s
