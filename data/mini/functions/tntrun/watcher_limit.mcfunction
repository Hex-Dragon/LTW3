# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1005.5,y=15,z=2007.5,dx=26,dy=30,dz=25] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1005.5,y=15,z=2007.5,dx=26,dy=30,dz=25] run tp @s[team=!debugging] 1021.30 36.04 2012.92 18.81 38.79