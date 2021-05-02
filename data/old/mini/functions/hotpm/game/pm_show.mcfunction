# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 给予tnt显示
item entity @s hotbar.8 replace tnt{game_item:1b,display:{Name:'[{"text":"炸弹","color":"red","italic":false}]'}} 1