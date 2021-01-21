give @s emerald
scoreboard players remove #emerald_count temp 1
execute if score #emerald_count temp matches 1.. run function mini:trade/game/give_emerald
