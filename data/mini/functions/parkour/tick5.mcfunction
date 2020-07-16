# 玩家获胜判断
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] run function mini:parkour/player_finished

# 掉落方块保持
execute as @e[type=falling_block,tag=parkour_block] run data modify entity @s Time set value 1

# 传送门粒子
execute if score $parkour_door mem matches 1 run particle minecraft:portal 1014.5 21.5 1057.0 0 1.5 1 1 30

# 标记是否通过传送门
tag @a[x=1015.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] remove parkour_portal
tag @a[x=1012.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] add parkour_portal