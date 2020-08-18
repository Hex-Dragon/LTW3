# 刷新地板
function mini:colormatch/game/generate_floor

# 抽取随机地板值
execute unless data storage ltw:mini colormatch.types[0] run function mini:colormatch/game/newarray
execute store result score $color_match_floor mem run data get storage ltw:mini colormatch.types[0]
data remove storage ltw:mini colormatch.types[0]
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
# 复制要保留的地板
schedule function mini:colormatch/game/get_random_floor 13t replace
