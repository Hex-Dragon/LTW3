# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=11,z=1001,dx=11,dy=17,dz=24] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=11,z=1001,dx=11,dy=17,dz=24] run tp @s 1007 24 1005