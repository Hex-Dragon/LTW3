scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 15
function lib:random

# 随机选择不消失的方块
execute positioned 1001 10 4000 run fill ~ ~1 ~ ~24 ~1 ~24 air replace
execute positioned 1001 10 4000 if score $random mem matches 1 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered acacia_planks
execute positioned 1001 10 4000 if score $random mem matches 2 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered birch_planks
execute positioned 1001 10 4000 if score $random mem matches 3 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered bedrock
execute positioned 1001 10 4000 if score $random mem matches 4 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered crimson_planks
execute positioned 1001 10 4000 if score $random mem matches 5 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered warped_planks
execute positioned 1001 10 4000 if score $random mem matches 6 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered gold_block
execute positioned 1001 10 4000 if score $random mem matches 7 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered bricks
execute positioned 1001 10 4000 if score $random mem matches 8 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered mossy_cobblestone
execute positioned 1001 10 4000 if score $random mem matches 9 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered purpur_block
execute positioned 1001 10 4000 if score $random mem matches 10 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered emerald_block
execute positioned 1001 10 4000 if score $random mem matches 11 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered prismarine
execute positioned 1001 10 4000 if score $random mem matches 12 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered soul_soil
execute positioned 1001 10 4000 if score $random mem matches 13 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered packed_ice
execute positioned 1001 10 4000 if score $random mem matches 14 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered white_wool
execute positioned 1001 10 4000 if score $random mem matches 15 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered diamond_block

# 存计分板
scoreboard players operation $color_match_floor mem = $random mem

# TODO : 让连续两次方块不一样（不一定需要随机数列）