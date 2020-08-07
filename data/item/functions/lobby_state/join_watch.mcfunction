# 处理第七格
clear @s lime_dye{lobby_item:1b,lobby_ready:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye",tag:{lobby_item:1b,lobby_ready:1b}}}]
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] at @s run function item:disable_slot/disable_slot_8
replaceitem entity @s hotbar.8 gray_dye{lobby_item:1b,lobby_watch:1b,display:{Name:'{"text":"未准备(Q切换)","color":"white","bold":true,"italic":false}',Lore:['{"text":"你下一局将旁观比赛","color":"gray","bold":true,"italic":false}']}}

# 处理数据
tag @s remove lobby_ready
tag @s add lobby_watch