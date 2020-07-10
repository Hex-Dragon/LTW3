scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 24
function lib:random

# TODO 更换地板方块-增强对比+辨识度
# 随机选择不消失的方块
execute positioned 1001 10 4000 run fill ~ ~1 ~ ~24 ~1 ~24 air replace
execute positioned 1001 10 4000 if score $random mem matches 1 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered iron_block
execute positioned 1001 10 4000 if score $random mem matches 2 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered white_concrete
execute positioned 1001 10 4000 if score $random mem matches 3 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered quartz_block
execute positioned 1001 10 4000 if score $random mem matches 4 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered snow_block
execute positioned 1001 10 4000 if score $random mem matches 5 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered white_wool
execute positioned 1001 10 4000 if score $random mem matches 6 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered gold_block
execute positioned 1001 10 4000 if score $random mem matches 7 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered sponge
execute positioned 1001 10 4000 if score $random mem matches 8 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered sandstone
execute positioned 1001 10 4000 if score $random mem matches 9 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered yellow_concrete
execute positioned 1001 10 4000 if score $random mem matches 10 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered end_stone
execute positioned 1001 10 4000 if score $random mem matches 11 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered emerald_block
execute positioned 1001 10 4000 if score $random mem matches 12 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered lime_concrete
execute positioned 1001 10 4000 if score $random mem matches 13 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered melon
execute positioned 1001 10 4000 if score $random mem matches 14 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered dark_prismarine
execute positioned 1001 10 4000 if score $random mem matches 15 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered green_wool
execute positioned 1001 10 4000 if score $random mem matches 16 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered diamond_block
execute positioned 1001 10 4000 if score $random mem matches 17 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered prismarine
execute positioned 1001 10 4000 if score $random mem matches 18 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered blue_ice
execute positioned 1001 10 4000 if score $random mem matches 19 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered warped_wart_block
execute positioned 1001 10 4000 if score $random mem matches 20 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered prismarine_bricks
execute positioned 1001 10 4000 if score $random mem matches 21 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered red_wool
execute positioned 1001 10 4000 if score $random mem matches 22 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered red_concrete
execute positioned 1001 10 4000 if score $random mem matches 23 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered netherrack
execute positioned 1001 10 4000 if score $random mem matches 24 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered red_nether_bricks
execute positioned 1001 10 4000 if score $random mem matches 25 run clone ~ ~ ~ ~24 ~ ~24 ~ ~1 ~ filtered bricks

# 存计分板
scoreboard players operation $color_match_floor mem = $random mem

