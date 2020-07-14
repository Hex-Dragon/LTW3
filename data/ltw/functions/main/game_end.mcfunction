# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
# 1
scoreboard players set $t_score_max mem -2147483648
execute as @a run function ltw:main/get_max_score
execute as @a unless entity @a[tag=total_rank1] if score @s total_score = $t_score_max mem run tag @s add total_rank1
# 2
scoreboard players set $t_score_max mem -2147483648
execute as @a[tag=!total_rank1] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1] unless entity @a[tag=total_rank2] if score @s total_score = $t_score_max mem run tag @s add total_rank2
# 3
scoreboard players set $t_score_max mem -2147483648
execute as @a[tag=!total_rank1,tag=!total_rank2] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1,tag=!total_rank2] unless entity @a[tag=total_rank3] if score @s total_score = $t_score_max mem run tag @s add total_rank3

# 显示排名
execute if entity @a[tag=total_rank2] if entity @a[tag=total_rank3] run tellraw @a ["",{"text":"\n\n----- 游戏结束 -----\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green"},{"selector": "@a[tag=total_rank1]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},{"text": "\n第二名 - ","color":"green"},{"selector": "@a[tag=total_rank2]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},{"text": "\n第三名 - ","color":"green"},{"selector": "@a[tag=total_rank3]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},"\n\n"]
execute if entity @a[tag=total_rank2] unless entity @a[tag=total_rank3] run tellraw @a ["",{"text":"\n\n\n----- 游戏结束 -----\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green"},{"selector": "@a[tag=total_rank1]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},{"text": "\n第二名 - ","color":"green"},{"selector": "@a[tag=total_rank2]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},"\n\n\n"]
execute unless entity @a[tag=total_rank2] run tellraw @a ["",{"text":"\n\n\n\n----- 游戏结束 -----\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green"},{"selector": "@a[tag=total_rank1]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"},"\n\n\n"]

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace
execute as @a at @s run function lib:sounds/theend
forceload remove all