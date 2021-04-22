# 观察者限制飞行范围
execute as @a[gamemode=spectator,team=!debug] run spectate
execute as @a[gamemode=spectator,team=!debug] unless entity @s[x=1001,y=5,z=3001,dx=29,dy=11,dz=27] run tp @s 1029 15 3007.77 -290.29 32.65