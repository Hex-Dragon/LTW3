
execute as @e[tag=new_phantom] at @s run tp @s ~ 35 ~
attribute @e[tag=new_phantom,limit=1] generic.max_health base set 8
tag @e[tag=new_phantom] remove new_phantom