# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=7,z=7001,dx=30,dy=30,dz=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=7,z=7001,dx=30,dy=30,dz=30] run tp @s[team=!debugging] 1016 18 7016