# 观察者限制飞行范围
execute as @a[gamemode=spectator,team=!debugging] at @s unless entity @a[team=playing,distance=..2] run spectate @p[team=playing]