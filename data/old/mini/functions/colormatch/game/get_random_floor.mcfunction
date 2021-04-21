# 抽取随机地板值
execute unless data storage ltw:mini colormatch.types[0] run function mini:colormatch/game/newarray
execute store result score $color_match_floor mem run data get storage ltw:mini colormatch.types[0]
data remove storage ltw:mini colormatch.types[0]

# 随机选择不消失的方块 # prismarine
execute positioned 1001 10 4000 run fill ~ ~1 ~ ~20 ~1 ~20 air replace
execute positioned 1001 10 4000 if score $color_match_floor mem matches 1 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered acacia_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 2 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered birch_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 3 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered soul_soil
execute positioned 1001 10 4000 if score $color_match_floor mem matches 4 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered crimson_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 5 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered warped_planks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 6 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered purpur_block
execute positioned 1001 10 4000 if score $color_match_floor mem matches 7 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered bricks
execute positioned 1001 10 4000 if score $color_match_floor mem matches 8 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered mossy_cobblestone
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 9 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered purpur_block
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 10 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered prismarine
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 11 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered emerald_block
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 12 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered soul_soil
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 13 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered packed_ice
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 14 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered white_wool
# execute positioned 1001 10 4000 if score $color_match_floor mem matches 15 run clone ~ ~ ~ ~20 ~ ~20 ~ ~1 ~ filtered diamond_block