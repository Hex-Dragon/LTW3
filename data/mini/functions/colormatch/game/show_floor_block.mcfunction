# 清理物品
clear @s #mini:game_item{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 物品栏显示
execute if score $color_match_current mem matches 1 run replaceitem entity @s hotbar.8 acacia_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 2 run replaceitem entity @s hotbar.8 birch_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 3 run replaceitem entity @s hotbar.8 bedrock{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 4 run replaceitem entity @s hotbar.8 crimson_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 5 run replaceitem entity @s hotbar.8 warped_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 6 run replaceitem entity @s hotbar.8 gold_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 7 run replaceitem entity @s hotbar.8 bricks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 8 run replaceitem entity @s hotbar.8 mossy_cobblestone{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 9 run replaceitem entity @s hotbar.8 purpur_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_current mem matches 10 run replaceitem entity @s hotbar.8 prismarine{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}