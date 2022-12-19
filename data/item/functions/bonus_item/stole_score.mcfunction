# as player
execute store result score #bonus_stole_score mem run data get storage item:bonus item.tag.bonus_stole_score

# 获取有效的最高分玩家
function ltw:main/get_max_score
tag @a remove highest
tag @a remove may_highest
execute as @a if score @s total_score = #score_max mem if score @s total_score >= #bonus_stole_score mem run tag @s add may_highest
tag @s remove may_highest
execute as @a[tag=may_highest,limit=1,sort=random,team=playing] run tag @s add highest
execute unless entity @a[tag=highest] run tag @s add highest

# 更改积分
scoreboard players operation @s total_score += #bonus_stole_score mem
scoreboard players operation @s total_score_disp += #bonus_stole_score mem
scoreboard players operation @a[tag=highest] total_score -= #bonus_stole_score mem
scoreboard players operation @a[tag=highest] total_score_disp -= #bonus_stole_score mem

# 显示提示
execute if entity @s[tag=highest] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 没能偷到任何人的分数……"]
execute if entity @s[tag=!highest] run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@a[tag=highest]","color":"red"}," 被偷取了 ",{"score": {"name": "#bonus_stole_score","objective": "mem"},"color":"red"},{"text": " 积分","color":"red"},", 当前共有 ",{"score": {"name": "@a[tag=highest,limit=1]","objective": "total_score"}}, " 积分"]
execute if entity @s[tag=!highest] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 偷取了 ",{"score": {"name": "#bonus_stole_score","objective": "mem"},"color":"green"},{"text": " 积分","color":"green"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]
