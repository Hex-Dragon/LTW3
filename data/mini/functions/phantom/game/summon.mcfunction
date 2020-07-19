# 召唤幻翼

summon phantom 1030 255 6030 {Tags:["new_phantom"]}
spreadplayers 1030 6030 20 20 false @e[tag=new_phantom]
execute as @e[tag=new_phantom] at @s run tp @s ~ 35 ~
attribute @e[tag=new_phantom,limit=1] generic.max_health base set 8
tag @e[tag=new_phantom] remove new_phantom
