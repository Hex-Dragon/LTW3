# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]

# 游戏结束
forceload remove 1000 5000 1064 5064
worldborder set 1000000

# Gamerule 调整
gamerule doDaylightCycle false
gamerule doLimitedCrafting true
gamerule keepInventory true
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule fireDamage false
gamerule drowningDamage false

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s diamond

# 清理物品栏
clear @a[team=playing]
