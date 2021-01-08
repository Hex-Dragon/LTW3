scoreboard players add @s green 2
scoreboard players add @s green_total 2
execute if score $state mem matches 0 run function item:shop/refresh_green
execute at @s run function lib:sounds/levelup