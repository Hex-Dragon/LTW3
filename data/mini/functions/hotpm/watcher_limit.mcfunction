# 观察者限制飞行范围
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1001.5,y=8,z=3001.5,dx=29,dy=9,dz=27] run spectate
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1001.5,y=8,z=3001.5,dx=29,dy=9,dz=27] run tp @s 1026.52 12.76 3005.59 47.21 22.60