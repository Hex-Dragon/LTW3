give @s diamond
scoreboard players remove #diamond_count temp 1
execute if score #diamond_count temp matches 1.. run function mini:diamond/game/give_diamond
