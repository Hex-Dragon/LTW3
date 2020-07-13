# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=11,z=5001,dx=18,dz=11,dy=23] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=11,z=5001,dx=18,dz=11,dy=23] run tp @s 1010.5 20 5006.0 0 25
