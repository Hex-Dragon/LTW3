execute if score $countdown mem matches 61.. as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 3
execute if score $countdown mem matches 31..60 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 5
execute if score $countdown mem matches ..30 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 7
