
# 清理残余实体
function mini:main/kill_entity
tp @e[type=phantom] 1000 -100 6000
kill @e[type=phantom]

# 游戏结束
forceload remove 1000 6000 1064 6064
gamerule doDaylightCycle false

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kill_phantom