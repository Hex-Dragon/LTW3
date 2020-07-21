# 刷新单个玩家背包中的金粒

clear @s gold_ingot
clear @s gold_nugget

# 获取金锭数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp /= #const_9 mem
# 给予金锭
execute if score @s temp matches 1.. at @s run function ltw:shop/summon_gold
# 获取金粒数，存于 temp
scoreboard players operation @s temp = @s gold
scoreboard players operation @s temp %= #const_9 mem
# 给予金粒
execute if score @s temp matches 1.. at @s run function ltw:shop/summon_nugget
