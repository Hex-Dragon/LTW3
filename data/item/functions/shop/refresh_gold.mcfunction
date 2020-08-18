# 刷新单个玩家背包中的金粒

execute unless entity @s[scores={gold=0..}] run scoreboard players set @s gold 0
clear @s gold_block
clear @s gold_ingot
clear @s gold_nugget

# 获取金块数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp /= #const_81 mem
# 给予金块
execute if score @s temp matches 1.. at @s run function item:shop/summon_block
# 获取金锭数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp %= #const_81 mem
scoreboard players operation @s temp /= #const_9 mem
# 给予金锭
execute if score @s temp matches 1.. at @s run function item:shop/summon_gold
# 获取金粒数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp %= #const_9 mem
# 给予金粒
execute if score @s temp matches 1.. at @s run function item:shop/summon_nugget
