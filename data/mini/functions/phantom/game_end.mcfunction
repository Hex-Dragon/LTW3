# 游戏结束
forceload remove 1000 6000 1064 6064
gamerule doDaylightCycle false

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kill_phantom

# 清理锁定格子
execute as @a[team=!debugging] run function item:disable_slot/disable_slot_7
execute as @a[team=!debugging] run function item:disable_slot/disable_slot_8