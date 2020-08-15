
execute as @e[tag=new_phantom] at @s run tp @s ~ 30 ~

# 随机生命值
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 3
function lib:random
execute if score $random mem matches 1 run attribute @e[tag=new_phantom,limit=1] generic.max_health base set 3
execute if score $random mem matches 2 run attribute @e[tag=new_phantom,limit=1] generic.max_health base set 4
execute if score $random mem matches 3 run attribute @e[tag=new_phantom,limit=1] generic.max_health base set 5

attribute @e[tag=new_phantom,limit=1] generic.attack_damage base set 4
effect give @e[tag=new_phantom] instant_damage
tag @e[tag=new_phantom] remove new_phantom
