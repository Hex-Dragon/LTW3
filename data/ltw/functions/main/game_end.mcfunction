# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
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

# 给予进度
scoreboard players add @a[team=playing] stat_total 1
scoreboard players add @a[tag=total_rank1] stat_win 1
advancement grant @a[scores={stat_win=1..}] only ltw:story/win1
advancement grant @a[scores={stat_win=5..}] only ltw:story/win2
advancement grant @a[scores={stat_win=20..}] only ltw:story/win3

# 计算金粒奖励
scoreboard players set #total_gold mem 0
execute as @a[team=playing] run scoreboard players add #total_gold mem 400
# 无名次
execute as @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,team=playing] run scoreboard players remove #total_gold mem 100
# 计算总权重与单份奖励
scoreboard players set #total_weight mem 0
execute as @a[tag=total_rank1] run scoreboard players add #total_weight mem 3
execute as @a[tag=total_rank2] run scoreboard players add #total_weight mem 2
execute as @a[tag=total_rank3] run scoreboard players add #total_weight mem 1
scoreboard players operation #total_gold mem /= #total_weight mem
# 计算名次奖励
scoreboard players set #rank1_gold mem 3
scoreboard players operation #rank1_gold mem *= #total_gold mem
scoreboard players operation #rank1_gold mem /= #const_100 mem
scoreboard players set #rank2_gold mem 2
scoreboard players operation #rank2_gold mem *= #total_gold mem
scoreboard players operation #rank2_gold mem /= #const_100 mem
scoreboard players set #rank3_gold mem 1
scoreboard players operation #rank3_gold mem *= #total_gold mem
scoreboard players operation #rank3_gold mem /= #const_100 mem
# 如果因为掉线强制结束则无名次奖励
execute store result score #count mem if entity @a[team=playing]
execute if score #count mem matches ..2 run scoreboard players set #rank1_gold mem 0
execute if score #count mem matches ..2 run scoreboard players set #rank2_gold mem 0
execute if score #count mem matches ..2 run scoreboard players set #rank3_gold mem 0

# 显示排名
tellraw @a [" ",{"text":"\n----- 游戏结束 -----\n","color":"green","bold":true}]
tellraw @a [" ",{"text": "第一名 - ","color":"green"},{"selector": "@a[tag=total_rank1]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank2] run tellraw @a [" ",{"text": "第二名 - ","color":"green"},{"selector": "@a[tag=total_rank2]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank3] run tellraw @a [" ",{"text": "第三名 - ","color":"green"},{"selector": "@a[tag=total_rank3]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @a ""

# 积分金粒奖励
execute as @a[team=playing] run scoreboard players operation @s temp2 = @s total_score
execute as @a[team=playing] run scoreboard players operation @s temp2 /= #const_2 mem
execute as @a[team=playing] run scoreboard players operation @s gold += @s temp2
execute as @a[team=playing] run scoreboard players operation @s gold_total += @s temp2
tellraw @a[team=playing] [" ",{"text": "积分奖励: ","color":"gold"},{"score":{"name": "*","objective": "temp2"}}," 金粒"]

# 名次金粒奖励
scoreboard players set @a temp 0
execute as @a[tag=total_rank1] run scoreboard players operation @s temp = #rank1_gold mem
execute as @a[tag=total_rank2] run scoreboard players operation @s temp = #rank2_gold mem
execute as @a[tag=total_rank3] run scoreboard players operation @s temp = #rank3_gold mem
scoreboard players set @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,team=playing] temp 1
execute as @a run scoreboard players operation @s gold += @s temp
execute as @a run scoreboard players operation @s gold_total += @s temp
tellraw @a[team=playing] [" ",{"text": "名次奖励: ","color":"gold"},{"score":{"name": "*","objective": "temp"}}," 金粒"]

# 奖励结束
tellraw @a[team=playing] ""

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace
execute as @a at @s run function lib:sounds/theend
forceload remove all
forceload add 0 0
