# 清理残余实体
kill @e[type=falling_block,tag=parkour_block]
kill @e[tag=treasure_item]
function mini:main/kill_entity

# 结束跑酷
forceload remove 1000 1000 1064 1064

# 关闭节奏块
scoreboard players set $tempo_enable mem 0

# 计算得分
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s treasure