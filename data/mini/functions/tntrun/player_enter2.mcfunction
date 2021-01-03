# spreadplayer 后不能立即传送，所以延迟 1tick
execute as @a[team=!watching,tag=!rejoining] at @s run tp @s[team=!debugging] ~ 34.5 ~