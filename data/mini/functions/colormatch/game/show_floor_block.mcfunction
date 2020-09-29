# 清理物品
clear @s acacia_planks{game_item:1b}
clear @s birch_planks{game_item:1b}
clear @s bedrock{game_item:1b}
clear @s crimson_planks{game_item:1b}
clear @s warped_planks{game_item:1b}
clear @s gold_block{game_item:1b}
clear @s bricks{game_item:1b}
clear @s mossy_cobblestone{game_item:1b}
clear @s purpur_block{game_item:1b}
clear @s prismarine{game_item:1b}

# 物品栏显示
execute if score $color_match_floor mem matches 1 run replaceitem entity @s hotbar.8 acacia_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 2 run replaceitem entity @s hotbar.8 birch_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 3 run replaceitem entity @s hotbar.8 bedrock{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 4 run replaceitem entity @s hotbar.8 crimson_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 5 run replaceitem entity @s hotbar.8 warped_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 6 run replaceitem entity @s hotbar.8 gold_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 7 run replaceitem entity @s hotbar.8 bricks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 8 run replaceitem entity @s hotbar.8 mossy_cobblestone{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 9 run replaceitem entity @s hotbar.8 purpur_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 10 run replaceitem entity @s hotbar.8 prismarine{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}