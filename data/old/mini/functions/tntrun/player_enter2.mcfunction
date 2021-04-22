# spreadplayer 后不能立即传送，所以延迟 1tick
execute as @a[team=playing,tag=!rejoining] at @s run tp @s[team=!debug] ~ 34.5 ~