# 游戏结束
forceload remove 1000 5000 1064 5064

# Gamerule 调整
gamerule doLimitedCrafting true
gamerule keepInventory true
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule fireDamage false
gamerule drowningDamage false

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s emerald

# 清理物品栏
clear @a[team=playing]
