execute if score $countdown mem matches 101.. as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 2.5
execute if score $countdown mem matches 61..100 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 4.5
execute if score $countdown mem matches 2..60 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 6.5
execute if score $countdown mem matches ..1 as @e[type=slime] run attribute @s minecraft:generic.attack_damage base set 8.5
