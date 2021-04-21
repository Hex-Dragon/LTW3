
# 检查玩家是否移出了准备物品
execute as @a[team=hub_watch] unless data entity @s Inventory[{Slot:0b,id:"minecraft:gray_dye",tag:{"lobby_item":1b}}] run function ltw:state/0/sp/join_play
execute as @a[team=hub_play] unless data entity @s Inventory[{Slot:0b,id:"minecraft:lime_dye",tag:{"lobby_item":1b}}] run function ltw:state/0/sp/join_watch
