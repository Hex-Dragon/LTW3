# 第八格
execute unless data entity @s[tag=lobby_watch] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] run function ltw:state/0/state/join_game
execute if data entity @s[tag=lobby_watch] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] unless data entity @s[tag=lobby_watch] Inventory[{Count:1b,Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] run function ltw:state/0/state/join_watch
execute if data entity @s[tag=lobby_watch] Inventory[{tag:{lobby_item:1b,lobby_ready:1b}}] run clear @s lime_dye{lobby_item:1b,lobby_ready:1b} 
execute unless data entity @s[tag=lobby_ready] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] run function ltw:state/0/state/join_watch
execute if data entity @s[tag=lobby_ready] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] unless data entity @s[tag=lobby_ready] Inventory[{Count:1b,Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] run function ltw:state/0/state/join_game
execute if data entity @s[tag=lobby_ready] Inventory[{tag:{lobby_item:1b,lobby_watch:1b}}] run clear @s gray_dye{lobby_item:1b,lobby_watch:1b}

# 清除临时物品
clear @s barrier{LockTempItem:1b}
