#as player
execute store result score #bonus_add_score mem run data get storage item:bonus item.tag.bonus_add_score

# 正常的加分
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score_disp += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_score","objective": "mem"},"color":"aqua"},{"text": " 积分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]

# 100：普通硬币 / 101：高级硬币
scoreboard players set $random_max mem 1
scoreboard players set $random_min mem 0
function lib:random
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run scoreboard players operation @s total_score *= #2 mem
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run scoreboard players operation @s total_score_disp *= #2 mem
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 的硬币投出了正面, 积分加倍, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"green"},{"text": " 积分", "color":"green"}]
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score /= #2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score_disp /= #2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的硬币投出了反面, 积分减半, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"red"},{"text": " 积分", "color":"red"}]
execute if score #bonus_add_score mem matches 101 if score $random mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的硬币投出了反面, 积分不变, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"red"},{"text": " 积分", "color":"red"}]

# 200：偷分
execute if score #bonus_add_score mem matches 200 run function item:bonus_item/stole_score

# 300：金粒
execute if score #bonus_add_score mem matches 300 run function item:bonus_item/gold

# 给予进度
execute if entity @s[scores={total_score=10..}] run advancement grant @s only ltw:story/score1
execute if entity @s[scores={total_score=18..}] run advancement grant @s only ltw:story/score2
execute if entity @s[scores={total_score=26..}] run advancement grant @s only ltw:story/score3