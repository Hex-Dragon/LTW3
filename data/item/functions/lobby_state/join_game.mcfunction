# 处理第七格
clear @s gray_dye{lobby_item:1b,lobby_watch:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye",tag:{lobby_item:1b,lobby_watch:1b}}}]
execute if data entity @s Inventory[{Slot:8b}] unless data entity @s Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] at @s run function item:disable_slot/disable_slot_8
replaceitem entity @s hotbar.8 lime_dye{lobby_item:1b,lobby_ready:1b,display:{Name:'{"text":"已准备(Q切换)","color":"white","bold":true,"italic":false}',Lore:['{"text":"你下一局将参与比赛(如果人数超过8人有概率无法参加)","color":"green","bold":true,"italic":false}']}}

# 处理数据
tag @s remove hub_watch
tag @s add hub_ready
