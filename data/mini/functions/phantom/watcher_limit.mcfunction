# 观察者限制飞行范围
execute as @a[gamemode=spectator] if entity @s[x=1000,y=30,z=6000,distance=100..] run spectate
execute as @a[gamemode=spectator] if entity @s[x=1000,y=30,z=6000,distance=100..] run tp @s[team=!debugging] 1036.26 27.11 6041.22 142.84 34.90