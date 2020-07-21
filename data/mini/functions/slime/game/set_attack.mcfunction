execute if score $countdown mem matches 91.. as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 2.5
execute if score $countdown mem matches 31..90 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 4
execute if score $countdown mem matches ..30 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 6
