
# 检查玩家是否移出了准备物品
execute as @a[team=hub_watch] unless data entity @s Inventory[{Slot:0b,id:"minecraft:gray_dye",tag:{"lobby_item":1b}}] run function ltw:state/0/sp/join_play
execute as @a[team=hub_play] unless data entity @s Inventory[{Slot:0b,id:"minecraft:lime_dye",tag:{"lobby_item":1b}}] run function ltw:state/0/sp/join_watch


# TODO: 未完成的重构

## 清除互斥的准备物品
#execute as @a[team=hub_watch] if data entity @s Inventory[{tag:{lobby_item:1b,lobby_ready:1b}}] run clear @s lime_dye{lobby_item:1b} 
#execute as @a[team=hub_play] if data entity @s Inventory[{tag:{lobby_item:1b,lobby_watch:1b}}] run clear @s gray_dye{lobby_item:1b}
## 清除临时物品
#clear @a red_dye{LockTempItem:1b}
