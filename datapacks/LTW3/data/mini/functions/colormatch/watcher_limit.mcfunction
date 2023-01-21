# 观察者限定范围
execute as @a[gamemode=spectator] at @s anchored eyes unless block ~ ~ ~ air run spectate
execute as @a[gamemode=spectator] at @s anchored eyes unless block ~ ~ ~ air run tp @s[team=!debugging] 1062.43 22.00 4012.88 136.56 30.58