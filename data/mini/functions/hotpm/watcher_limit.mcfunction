# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=5,z=3001,dx=29,dy=9,dz=27,team=!debugging] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=5,z=3001,dx=29,dy=9,dz=27,team=!debugging] run tp @s 1029 17.20 3007.77 -290.29 32.65