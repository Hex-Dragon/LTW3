# 处理第七格
clear @s lime_dye{lobby_item:1b,lobby_ready:1b}
clear @s gray_dye{lobby_item:1b,lobby_watch:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{lobby_item:1b,lobby_ready:1b}}}]
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item
replaceitem entity @s hotbar.8 gray_dye{lobby_item:1b,lobby_watch:1b,display:{Name:'[{"text":"旁观 (按 ","color":"white","italic":false},{"keybind":"key.drop","color":"white","italic":false},{"text":" 切换)","color":"white","italic":false}]',Lore:['{"text":"你将在下一局旁观游戏","color":"gray","italic":false}']}}
execute at @s run function lib:sounds/hit2

# 处理数据
team join watching @s