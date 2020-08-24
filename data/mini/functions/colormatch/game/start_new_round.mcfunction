# 替换墙壁
function mini:colormatch/game/replace_wall
# 复制地板
execute positioned 1001 10 4000 run clone ~ ~ ~ ~24 ~ ~24 1050 15 4000

# 设置倒计时
execute if score $color_match_time mem matches 37.. run scoreboard players remove $color_match_time mem 5
execute if score $color_match_time mem matches 12..36 run scoreboard players remove $color_match_time mem 1
scoreboard players operation $countdown_fast mem = $color_match_time mem

# 重置分数
scoreboard players set $color_match_type mem 0

# 拉玩家下来
execute as @a[tag=color_match_fall] at @s run tp @s ~ 17 ~
execute if entity @a[tag=color_match_fall] run scoreboard players add $countdown_fast mem 10
tag @a[tag=color_match_fall] remove color_match_fall

# 告知玩家
execute as @a at @s run function lib:sounds/hit

# HUD
scoreboard players set $bossbar_color mem 1
scoreboard players operation $countdown_max mem = $countdown_fast mem
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:red name "地板消失"

# 物品栏显示
execute if score $color_match_floor mem matches 1 run replaceitem entity @a hotbar.8 acacia_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 2 run replaceitem entity @a hotbar.8 birch_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 3 run replaceitem entity @a hotbar.8 bedrock{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 4 run replaceitem entity @a hotbar.8 crimson_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 5 run replaceitem entity @a hotbar.8 warped_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 6 run replaceitem entity @a hotbar.8 gold_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 7 run replaceitem entity @a hotbar.8 bricks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 8 run replaceitem entity @a hotbar.8 mossy_cobblestone{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 9 run replaceitem entity @a hotbar.8 purpur_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}
execute if score $color_match_floor mem matches 10 run replaceitem entity @a hotbar.8 prismarine{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false}]'}}

# execute if score $color_match_floor mem matches 1 run replaceitem entity @a hotbar.8 acacia_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.acacia_planks","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 2 run replaceitem entity @a hotbar.8 birch_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.birch_planks","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 3 run replaceitem entity @a hotbar.8 bedrock{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.bedrock","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 4 run replaceitem entity @a hotbar.8 crimson_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.crimson_planks","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 5 run replaceitem entity @a hotbar.8 warped_planks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.warped_planks","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 6 run replaceitem entity @a hotbar.8 gold_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.gold_block","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 7 run replaceitem entity @a hotbar.8 bricks{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.bricks","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 8 run replaceitem entity @a hotbar.8 mossy_cobblestone{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.mossy_cobblestone","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 9 run replaceitem entity @a hotbar.8 purpur_block{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.purpur_block","bold":true,"color":"gold"}]'}}
# execute if score $color_match_floor mem matches 10 run replaceitem entity @a hotbar.8 prismarine{game_item:1b,display:{Name:'[{"text":"本轮的地板方块","color":"white","italic":false},{"translate": "block.minecraft.prismarine","bold":true,"color":"gold"}]'}}