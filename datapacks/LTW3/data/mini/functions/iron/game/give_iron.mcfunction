give @s iron_ingot
scoreboard players remove #iron_count temp 1
execute if score #iron_count temp matches 1.. run function mini:iron/game/give_iron
