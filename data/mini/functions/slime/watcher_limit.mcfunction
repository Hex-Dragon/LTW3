# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=7001,dx=30,dy=4,dz=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=7001,dx=30,dy=4,dz=30] run tp @s[tag=!debug] 1004.13 7.86 7003.00 -2922.38 12.84
