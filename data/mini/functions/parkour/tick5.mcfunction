# 玩家获胜判断
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] run function mini:parkour/player_finished

# 掉落方块保持
execute as @e[type=falling_block,tag=parkour_block] run data modify entity @s Time set value 1

# 开门判断
execute positioned 1009 28 1031 if score $parkour_door mem matches 0 as @p[tag=mini_running,distance=..4] run function mini:parkour/game/open_the_door

# 标记是否通过传送门
tag @a[x=1015.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] remove parkour_portal
tag @a[x=1011.0,y=20.0,z=1055.0,dx=2,dy=4,dz=4,gamemode=!spectator] add parkour_portal