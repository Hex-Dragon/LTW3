execute unless data storage ltw:mini colormatch.types[0] run function mini:colormatch/game/newarray
execute store result score $color_match_floor mem run data get storage ltw:mini colormatch.types[0]
data remove storage ltw:mini colormatch.types[0]

# 随机选择不消失的方块 # prismarine
execute positioned 1001 10 4000 run fill ~ ~1 ~ ~24 ~1 ~24 air replace
execute positioned 1001 10 4000 if score $color_match_floor mem matches 1 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered acacia_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 2 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered birch_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 3 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered bedrock
execute positioned 1001 10 4000 if score $color_match_floor mem matches 4 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered crimson_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 5 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered warped_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 6 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered gold_block
execute positioned 1001 10 4000 if score $color_match_floor mem matches 7 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered bricks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 8 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered mossy_cobblestone
execute positioned 1001 10 4000 if score $color_match_floor mem matches 9 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered purpur_block
execute positioned 1001 10 4000 if score $color_match_floor mem matches 10 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered prismarine
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 11 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered emerald_block
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 12 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered soul_soil
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 13 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered packed_ice
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 14 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered white_wool
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 15 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered diamond_block

# 展示给玩家
execute if score $color_match_floor mem matches 1 run replaceitem entity @a hotbar.8 acacia_planks{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.acacia_planks","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 2 run replaceitem entity @a hotbar.8 birch_planks{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.birch_planks","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 3 run replaceitem entity @a hotbar.8 bedrock{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.bedrock","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 4 run replaceitem entity @a hotbar.8 crimson_planks{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.crimson_planks","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 5 run replaceitem entity @a hotbar.8 warped_planks{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.warped_planks","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 6 run replaceitem entity @a hotbar.8 gold_block{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.gold_block","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 7 run replaceitem entity @a hotbar.8 bricks{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.bricks","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 8 run replaceitem entity @a hotbar.8 mossy_cobblestone{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.mossy_cobblestone","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 9 run replaceitem entity @a hotbar.8 purpur_block{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.purpur_block","bold":true,"color":"gold"}]'}}
execute if score $color_match_floor mem matches 10 run replaceitem entity @a hotbar.8 prismarine{game_item:1b,display:{Name:'[{"text":"下一轮的地板方块为:","color":"white","italic":false},{"translate": "block.minecraft.prismarine","bold":true,"color":"gold"}]'}}
