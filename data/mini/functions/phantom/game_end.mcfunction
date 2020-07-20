# 游戏结束
forceload remove 1000 6000 1064 6064
gamerule doDaylightCycle false

# 计算得分
execute as @a[tag=!watcher,tag=!debug] run scoreboard players operation @s mini_score = @s kill_phantom