# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
# 1
scoreboard players set #score_max mem -2147483648
execute as @a run function ltw:main/get_max_score
execute as @a unless entity @a[tag=total_rank1] if score @s total_score = #score_max mem run tag @s add total_rank1
# 2
scoreboard players set #score_max mem -2147483648
execute as @a[tag=!total_rank1] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1] unless entity @a[tag=total_rank2] if score @s total_score = #score_max mem run tag @s add total_rank2
# 3
scoreboard players set #score_max mem -2147483648
execute as @a[tag=!total_rank1,tag=!total_rank2] run function ltw:main/get_max_score
execute as @a[tag=!total_rank1,tag=!total_rank2] unless entity @a[tag=total_rank3] if score @s total_score = #score_max mem run tag @s add total_rank3

# 计算金粒奖励
scoreboard players set #total_gold mem 0
execute as @a[tag=!watcher] run scoreboard players add #total_gold mem 900
# 无名次
execute as @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,tag=!watcher] run scoreboard players remove #total_gold mem 100
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
# 如果因为掉线强制结束则无奖励
execute store result score #count mem if entity @a[tag=!watcher]
execute if score #count mem matches ..2 run scoreboard players set #rank1_gold mem 0
execute if score #count mem matches ..2 run scoreboard players set #rank2_gold mem 0
execute if score #count mem matches ..2 run scoreboard players set #rank3_gold mem 0

# 显示排名
tellraw @a ["",{"text":"\n\n\n\n----- 游戏结束 -----\n","color":"green","bold":true}]
tellraw @a ["",{"text": "第一名 - ","color":"green"},{"selector": "@a[tag=total_rank1]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":", +","color":"gray"},{"score":{"name": "#rank1_gold","objective": "mem"},"color":"gray"},{"text":"g)","color":"gray"}]
execute if entity @a[tag=total_rank2] run tellraw @a ["",{"text": "第二名 - ","color":"green"},{"selector": "@a[tag=total_rank2]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":", +","color":"gray"},{"score":{"name": "#rank2_gold","objective": "mem"},"color":"gray"},{"text":"g)","color":"gray"}]
execute if entity @a[tag=total_rank3] run tellraw @a ["",{"text": "第三名 - ","color":"green"},{"selector": "@a[tag=total_rank3]","color":"white"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "total_score"},"color":"gray"},{"text":", +","color":"gray"},{"score":{"name": "#rank3_gold","objective": "mem"},"color":"gray"},{"text":"g)","color":"gray"}]
tellraw @a ["\n"]

# 给予金粒奖励
execute as @a[tag=total_rank1] run scoreboard players operation @s gold += #rank1_gold mem
execute as @a[tag=total_rank1] run scoreboard players operation @s gold_total += #rank1_gold mem
tellraw @a[tag=total_rank1] ["",{"text": ">> ","color":"green","bold": true},"由于获得第一名, 你得到了 ",{"score":{"name": "#rank1_gold","objective": "mem"},"color":"green"},{"text": " 金粒","color":"green"}]
execute as @a[tag=total_rank2] run scoreboard players operation @s gold += #rank2_gold mem
execute as @a[tag=total_rank2] run scoreboard players operation @s gold_total += #rank2_gold mem
tellraw @a[tag=total_rank2] ["",{"text": ">> ","color":"green","bold": true},"由于获得第二名, 你得到了 ",{"score":{"name": "#rank2_gold","objective": "mem"},"color":"green"},{"text": " 金粒","color":"green"}]
execute as @a[tag=total_rank3] run scoreboard players operation @s gold += #rank3_gold mem
execute as @a[tag=total_rank3] run scoreboard players operation @s gold_total += #rank3_gold mem
tellraw @a[tag=total_rank3] ["",{"text": ">> ","color":"green","bold": true},"由于获得第三名, 你得到了 ",{"score":{"name": "#rank3_gold","objective": "mem"},"color":"green"},{"text": " 金粒","color":"green"}]
scoreboard players add @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,tag=!watcher] gold 1
scoreboard players add @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,tag=!watcher] gold_total 1
tellraw @a[tag=!total_rank1,tag=!total_rank2,tag=!total_rank3,tag=!watcher] ["",{"text": ">> ","color":"aqua","bold": true},"由于没有获得名次, 你得到了 ",{"text": "1 金粒","color":"aqua"}]

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace
execute as @a at @s run function lib:sounds/theend
forceload remove all

# TODO: [010] 给奖励选择阶段添加上层罩子
# TODO: [LTCat/HIM] 新主大厅添加商店，用trigger实现购买
# TODO: [LTCat] 主大厅时，玩家锁定栏添加选择是否加入游戏以及是否旁观
# TODO: [LTCat] 增加一个tag来实现玩家在主大厅时不会受到游戏系统的消息（音效/Bossbar/tellraw）
# TODO: [LTCat] 更新大厅后，新加入的玩家优先扔进主大厅，除非手动选择加入旁观
# TODO: [HIM] 重构大厅跑酷系统，在hotbar增加用时提示，增加adv来给与奖励，并开启跑酷的最佳用时榜单
# TODO: [HIM/LTCat] 在大厅框选跑酷区域来判定玩家是否在跑酷，离开时触发相应函数
