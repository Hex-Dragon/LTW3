
execute as @e[tag=new_phantom] at @s run tp @s ~ 35 ~
attribute @e[tag=new_phantom,limit=1] generic.max_health base set 6
attribute @e[tag=new_phantom,limit=1] generic.attack_damage base set 1.5
effect give @e[tag=new_phantom] instant_damage
tag @e[tag=new_phantom] remove new_phantom
