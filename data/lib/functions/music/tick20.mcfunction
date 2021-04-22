# 计算倒计时并触发 BGM 刷新

execute as @a[scores={music_time=0}] at @s run function lib:music/refresh
scoreboard players remove @a music_time 1
