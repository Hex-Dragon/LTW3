# 观察者限定范围
execute as @a[gamemode=spectator] unless entity @s[x=1049,y=10,z=3999,dx=26,dy=30,dz=26] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1049,y=10,z=3999,dx=26,dy=30,dz=26] run tp @s[tag=!debug] 1062 22 4012