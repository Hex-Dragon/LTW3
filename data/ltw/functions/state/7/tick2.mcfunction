# 观察者限制
execute as @a[gamemode=spectator] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=12,y=9,z=1955,dx=24,dy=14,dz=24] run tp @s[tag=!debug] 24.5 12.0 1967.5
