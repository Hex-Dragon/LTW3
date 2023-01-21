# 观察者限制飞行范围
execute unless score $state mem matches 5 run tp @a[gamemode=spectator,team=!debugging] 1010.96 26.83 1032.37 -385.24 16.67
execute if score $state mem matches 5 as @a[gamemode=spectator,team=!debugging] at @s unless entity @a[team=playing,gamemode=!spectator,distance=..2] run spectate @p[team=playing,gamemode=!spectator]
execute if score $state mem matches 5 run title @a[gamemode=spectator] actionbar {"text":"按数字键旁观其他玩家"}