
# 传送回背景生成点
#execute as @e[type=item,x=-1,y=12,z=1999,dx=3,dy=2,dz=50] at @s run tp @s ~-1.5 ~0.5 ~
#execute as @e[type=item,x=12,y=12,z=1999,dx=3,dy=2,dz=50] at @s run tp @s ~1.5 ~0.5 ~
#execute as @e[type=item,x=-1,y=12,z=1999,dx=50,dy=2,dz=3] at @s run tp @s ~ ~0.5 ~-1.5
#execute as @e[type=item,x=-1,y=12,z=2012,dx=50,dy=2,dz=3] at @s run tp @s ~ ~0.5 ~1.5

# 生成奖励物品背景
#execute as @e[type=item,tag=item_white] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 white_concrete_powder
#execute as @e[type=item,tag=item_green] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 lime_concrete_powder
#execute as @e[type=item,tag=item_blue] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_concrete_powder
#execute as @e[type=item,tag=item_purple] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 purple_concrete_powder

execute positioned 17.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1960.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1962.0 run function ltw:state/6/generate_background
execute positioned 31.0 10.0 1967.0 run function ltw:state/6/generate_background
execute positioned 29.0 10.0 1972.0 run function ltw:state/6/generate_background
execute positioned 24.0 10.0 1974.0 run function ltw:state/6/generate_background
execute positioned 19.0 10.0 1972.0 run function ltw:state/6/generate_background

# 传送回原位
#execute as @e[type=item,x=-1,y=12,z=1999,dx=2,dy=2,dz=50] at @s run tp @s ~1.5 ~-0.5 ~
#execute as @e[type=item,x=13,y=12,z=1999,dx=2,dy=2,dz=50] at @s run tp @s ~-1.5 ~-0.5 ~
#execute as @e[type=item,x=-1,y=12,z=1999,dx=50,dy=2,dz=2] at @s run tp @s ~ ~-0.5 ~1.5
#execute as @e[type=item,x=-1,y=12,z=2013,dx=50,dy=2,dz=2] at @s run tp @s ~ ~-0.5 ~-1.5
