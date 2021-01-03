# 游戏结束
forceload remove 1000 5000 1064 5064

# Gamerule 调整
gamerule doDaylightCycle false
gamerule doLimitedCrafting true
gamerule keepInventory true

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s diamond