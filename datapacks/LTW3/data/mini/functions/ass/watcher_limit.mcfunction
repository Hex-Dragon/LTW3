# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1004.5,y=9,z=7005.5,dx=23,dy=13,dz=23] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1004.5,y=9,z=7005.5,dx=23,dy=13,dz=23] run tp @s[team=!debugging] 1012.33 12.13 7006.82 -28.40 23.85