# 观察者限定范围
execute as @a[gamemode=spectator] unless entity @s[x=1049,y=10,z=3999,dx=22,dy=31,dz=22] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1049,y=10,z=3999,dx=22,dy=31,dz=22] run tp @s[team=!debugging] 1062 22 4012