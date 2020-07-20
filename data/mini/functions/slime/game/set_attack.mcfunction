execute if score $countdown mem matches 61.. as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 2
execute if score $countdown mem matches 2..60 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 3.5
execute if score $countdown mem matches ..1 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 5
