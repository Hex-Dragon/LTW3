# 清理物品
clear @s flower_banner_pattern{game_item:1b}

# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 设置最后一格的物品
item replace entity @s hotbar.8 with flower_banner_pattern{game_item:1b,display:{Name:'[{"text":"交易契约","color":"white","italic":false}]',Lore:['[{"text":"当你手持该契约时，村民将会出现在你的面前","italic":false,"color":"gray"}]']},HideFlags:32767}