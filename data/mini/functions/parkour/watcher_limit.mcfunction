# 观察者限制飞行范围
execute as @a[gamemode=spectator] at @s unless entity @a[team=playing,distance=..0.1] run spectate @r[team=playing]