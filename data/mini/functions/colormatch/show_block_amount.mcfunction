# 创建计分板
scoreboard objectives add block_count dummy

# 获取分数
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered iron_block
tellraw @a [{"text":"iron_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered white_concrete
tellraw @a [{"text":"white_concrete数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered quartz_block
tellraw @a [{"text":"quartz_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered snow_block
tellraw @a [{"text":"snow_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered white_wool
tellraw @a [{"text":"white_wool数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered gold_block
tellraw @a [{"text":"gold_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered sponge
tellraw @a [{"text":"sponge数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered sandstone
tellraw @a [{"text":"sandstone数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered yellow_concrete
tellraw @a [{"text":"yellow_concrete数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered end_stone
tellraw @a [{"text":"end_stone数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered emerald_block
tellraw @a [{"text":"emerald_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered lime_concrete
tellraw @a [{"text":"lime_concrete数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered melon
tellraw @a [{"text":"melon数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered dark_prismarine
tellraw @a [{"text":"dark_prismarine数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered green_wool
tellraw @a [{"text":"green_wool数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered diamond_block
tellraw @a [{"text":"diamond_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered prismarine
tellraw @a [{"text":"prismarine数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered blue_ice
tellraw @a [{"text":"blue_ice数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered warped_wart_block
tellraw @a [{"text":"warped_wart_block数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered prismarine_bricks
tellraw @a [{"text":"prismarine_bricks数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered red_wool
tellraw @a [{"text":"red_wool数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered red_concrete
tellraw @a [{"text":"red_concrete数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered netherrack
tellraw @a [{"text":"netherrack数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered red_nether_bricks
tellraw @a [{"text":"red_nether_bricks数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]
execute store result score block_count block_count at @e[tag=color_match_floor] run clone ~1 ~ ~ ~26 ~ ~25 ~1 ~1 ~ filtered bricks
tellraw @a [{"text":"bricks数量: ","color":"green"},{"score": {"objective": "block_count","name": "block_count"}}]

# 删除方块
execute at @e[tag=color_match_floor] run fill ~1 ~1 ~ ~26 ~1 ~25 air replace

# 删除计分板
scoreboard objectives remove block_count