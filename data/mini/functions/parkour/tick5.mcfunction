# 回城营火
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] at @s run tag @s remove parkour_portal
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] at @s run function lib:sounds/teleport
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] at @s run tp ~5 ~-4 ~-12

# 掉落方块保持
execute as @e[type=falling_block,tag=parkour_block] run data modify entity @s Time set value 1

# 标记是否通过传送门
tag @a[x=1015.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] remove parkour_portal
tag @a[x=1011.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] add parkour_portal