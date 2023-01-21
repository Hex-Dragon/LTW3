# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
tag @a remove total_rankl
# 1
function ltw:main/get_max_score
execute as @a if score @s total_score = #score_max mem run tag @s add total_rank1
tag @a[tag=total_rank1] add max_uncounted
# 2
function ltw:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s total_score = #score_max mem run tag @s add total_rank2
tag @a[tag=total_rank2] add max_uncounted
# 3
function ltw:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s total_score = #score_max mem run tag @s add total_rank3
tag @a[tag=max_uncounted] remove max_uncounted
# 最低分
scoreboard players set #score_min mem 2147483647
scoreboard players operation #score_min mem < @a[team=playing] total_score
execute as @a if score @s total_score = #score_min mem run tag @s add total_rankl
# 没有名次
tag @a[team=playing,tag=!total_rank1,tag=!total_rank2,tag=!total_rank3] add total_rankl

# 给予进度
scoreboard players add @a[team=playing] stat_total 1
scoreboard players add @a[tag=total_rank1] stat_win 1

# 显示排名
tellraw @a ["",{"text":"\n------  全场游戏结束！ ------\n","color":"light_purple","bold":true}]
tellraw @a ["  ",{"text": "第一名 >  ","color":"red"},{"selector": "@a[tag=total_rank1]","color":"red"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank2] run tellraw @a ["  ",{"text": "第二名 >  ","color":"gold"},{"selector": "@a[tag=total_rank2]","color":"gold"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank3] run tellraw @a ["  ",{"text": "第三名 >  ","color":"yellow"},{"selector": "@a[tag=total_rank3]","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @a ""

# 积分金粒奖励
execute as @a[team=playing] run scoreboard players operation @s gold += @s total_score
execute as @a[team=playing] run scoreboard players operation @s gold_total += @s total_score
tellraw @a[team=playing,scores={total_score=1..}] [" 你得到的 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},{"text": " 积分","color":"gold"}," 已转换为 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},{"text": " 金粒","color":"gold"},"！"]

# 局中金粒
tellraw @a[team=playing,scores={gold_extra=1..}] [" 在游戏过程中，你拿到了额外的 ",{"score":{"name": "*","objective": "gold_extra"},"color":"gold"},{"text": " 金粒","color":"gold"},"！"]

# 局中绿宝石
tellraw @a[team=playing,scores={green_extra=1..}] [" 由于达成了进度，你得到了 ",{"score":{"name": "*","objective": "green_extra"},"color":"green"},{"text": " 绿宝石","color":"green"}," 完成奖励！"]

# 如果因为掉线强制结束则无安慰奖
execute store result score #count mem if entity @a[team=playing]
execute if score #count mem matches ..2 run tag @a remove total_rankl
# 安慰奖
execute as @a[tag=total_rankl] run scoreboard players add @s gold 5
execute as @a[tag=total_rankl] run scoreboard players add @s gold_total 5
tellraw @a[tag=total_rankl] [" 不要气馁，收下 ",{"text": "5 金粒","color":"gold"}," 奖励，继续加油吧！"]

# 奖励结束
tellraw @a[team=playing] ""

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace
execute as @a at @s run function lib:sounds/theend
forceload remove all
forceload add 0 0
forceload add 0 1900 50 2000
forceload add -32 -17 45 -80
