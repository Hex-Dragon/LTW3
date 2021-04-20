
# 物品
clear @s lime_dye{lobby_item:1b}
clear @s gray_dye{lobby_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{lobby_item:1b}}}]
execute if data entity @s Inventory[{Slot:1b}] run scoreboard players set @s item_slot 1
execute if data entity @s Inventory[{Slot:1b}] at @s run function item:pop_slot/return_item
replaceitem entity @s hotbar.1 gray_dye{lobby_item:1b,display:{Name:'[{"text":"","color":"white","italic":false},"旁观模式 (按 ",{"keybind":"key.drop"}," 准备)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局旁观游戏"]']}}
execute at @s run function lib:sounds/hit2

# 队伍
team join hub_watch @s
