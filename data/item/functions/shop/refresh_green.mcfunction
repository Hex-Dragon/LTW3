# 刷新单个玩家背包中的绿宝石

execute unless entity @s[scores={green=0..}] run scoreboard players set @s green 0
execute unless entity @s[scores={green=0..}] run scoreboard players set @s green_total 0
clear @s emerald_block
clear @s emerald

# 获取绿宝石块数，存于 temp
scoreboard players operation @s temp = @s green
scoreboard players operation @s temp /= #const_9 mem
# 给予绿宝石块
execute if score @s temp matches 1.. at @s run function item:shop/summon_emerald_block
# 获取绿宝石数，存于 temp
scoreboard players operation @s temp = @s green
scoreboard players operation @s temp %= #const_9 mem
# 给予绿宝石
execute if score @s temp matches 1.. at @s run function item:shop/summon_emerald
