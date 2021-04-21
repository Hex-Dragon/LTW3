# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=7,z=1001,dx=30,dy=30,dz=62] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=7,z=1001,dx=30,dy=30,dz=62] run tp @s[team=!debugging] 1027.56 18.03 1046.89 13.48 4.84