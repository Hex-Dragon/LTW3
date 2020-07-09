# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
# 1
scoreboard players set $t_score_max total_score -2147483648
execute as @a run function ltw:main/get_max_score
execute as @a unless entity @a[tag=total_rank1] if score @s total_score = $t_score_max total_score run tag @s add total_rank1
# 2
scoreboard players set $t_score_max total_score -2147483648
execute as @a[tag=!total_rank1] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1] unless entity @a[tag=total_rank2] if score @s total_score = $t_score_max total_score run tag @s add total_rank2
# 3
scoreboard players set $t_score_max total_score -2147483648
execute as @a[tag=!total_rank1,tag=!total_rank2] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1,tag=!total_rank2] unless entity @a[tag=total_rank3] if score @s total_score = $t_score_max total_score run tag @s add total_rank3

# 显示排名
tellraw @a [{"text":"\n----- 游戏结束 -----\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=total_rank1]","color":"white","bold": false},{"text": "\n第二名 - ","color":"green","bold": false},{"selector": "@a[tag=total_rank2]","color":"white","bold": false},{"text": "\n第三名 - ","color":"green","bold": false},{"selector": "@a[tag=total_rank3]","color":"white","bold": false},"\n"]

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace