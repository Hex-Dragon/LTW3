# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 给予tnt显示
replaceitem entity @s hotbar.8 tnt{game_item:1b,display:{Name:'[{"text":"你是TNT的持有者","color":"white","italic":false}]'}} 1