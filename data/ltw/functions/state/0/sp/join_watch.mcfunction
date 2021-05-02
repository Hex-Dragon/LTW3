
# 清理现有选择物品
clear @s lime_wool{lobby_item:1b}
clear @s light_gray_wool{lobby_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool",tag:{lobby_item:1b}}}]
# 弹出玩家放在第一格上的物品
execute if data entity @s Inventory[{Slot:0b}] run scoreboard players set @s temp 0
execute if data entity @s Inventory[{Slot:0b}] at @s run function lib:pop_slot/return_item
# 设置新的选择物品
item entity @s hotbar.0 replace light_gray_wool{lobby_item:1b,display:{Name:'[{"text":"","color":"white","italic":false},"旁观模式 (按 ",{"keybind":"key.drop"}," 以准备)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局旁观游戏"]']}}

# 设置队伍
team join hub_watch @s
# 播放音效
execute at @s run function lib:sounds/hit2
