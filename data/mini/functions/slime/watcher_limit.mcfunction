# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=7001,dx=30,dz=4,dy=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=7001,dx=30,dz=4,dy=30] run tp @s[tag=!debug] 1008.54 7.69 7003.91 332.38 9.83
