# 玩家获胜判断
execute as @a[tag=mini_running,x=1005,y=11,z=1018,dx=2,dy=3,dz=2] run function mini:parkour/player_finished

# 开门判断
execute if score $parkour_door mem matches 0 as @a[tag=mini_running] at @s if block ~ ~-1 ~ redstone_lamp run function mini:parkour/open_the_door