# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=10,z=2001,dx=37,dy=37,dz=37] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=10,z=2001,dx=37,dy=37,dz=37] run tp @s[team=!debug] 1023.65 20.29 2006.59 -345.99 17.34
