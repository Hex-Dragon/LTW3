#as player
execute store result score #bonus_add_score mem run data get block 0 0 0 RecordItem.tag.bonus_add_score

# 正常的加分
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score_disp += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_score","objective": "mem"},"color":"aqua"},{"text": " 分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 分"]

# 100：硬币
scoreboard players set $random_max mem 1
scoreboard players set $random_min mem 0
function lib:random
execute if score #bonus_add_score mem matches 100 if score $random mem matches 1 run scoreboard players operation @s total_score *= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 1 run scoreboard players operation @s total_score_disp *= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 1 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 的硬币投出了正面, 得分加倍, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"green"},{"text": " 分", "color":"green"}]
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score /= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score_disp /= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的硬币投出了反面, 得分减半, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"red"},{"text": " 分", "color":"red"}]

# 200：偷分
scoreboard players set #score_max mem -2147483648
execute as @a run function ltw:main/get_max_score
tag @a remove highest
tag @a remove may_highest
execute as @a if score @s total_score = #score_max mem run tag @s add may_highest
execute at @s run tag @a[tag=may_highest,limit=1,sort=furthest] add highest

execute if score #bonus_add_score mem matches 200 run scoreboard players add @s total_score 1
execute if score #bonus_add_score mem matches 200 run scoreboard players add @s total_score_disp 1
execute if score #bonus_add_score mem matches 200 run scoreboard players remove @a[tag=highest] total_score 1
execute if score #bonus_add_score mem matches 200 run scoreboard players remove @a[tag=highest] total_score_disp 1

execute if score #bonus_add_score mem matches 200 if entity @s[tag=highest] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 试图偷取自己的分数……"]
execute if score #bonus_add_score mem matches 200 if entity @s[tag=!highest] run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@p[tag=highest]","color":"red"}," 被偷取了 ",{"text": "1 分","color":"red"},", 当前共有 ",{"score": {"name": "@p[tag=highest]","objective": "total_score"}}, " 分"]
execute if score #bonus_add_score mem matches 200 if entity @s[tag=!highest] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 偷取了 ",{"text": "1 分","color":"green"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 分"]

# 300：金粒 +1
execute if score #bonus_add_score mem matches 300 run scoreboard players add @s gold 1
execute if score #bonus_add_score mem matches 300 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 1 金粒"]