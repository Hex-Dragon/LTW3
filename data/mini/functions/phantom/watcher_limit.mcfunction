# 观察者限制飞行范围
execute as @a[gamemode=spectator] if entity @s[x=1000,y=30,z=6000,distance=100..] run spectate
execute as @a[gamemode=spectator] if entity @s[x=1000,y=30,z=6000,distance=100..] run tp @s[team=!debugging] 1062.34 27.11 6040.84 461.44 28.30
