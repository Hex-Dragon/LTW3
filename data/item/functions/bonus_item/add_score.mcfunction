#as player
execute store result score #bonus_add_score mem run data get block 0 0 0 RecordItem.tag.bonus_add_score

# 正常的加分
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run scoreboard players operation @s total_score_disp += #bonus_add_score mem
execute if score #bonus_add_score mem matches ..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_score","objective": "mem"},"color":"aqua"},{"text": " 分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 分"]

# 100：普通硬币 / 101：高级硬币
scoreboard players set $random_max mem 1
scoreboard players set $random_min mem 0
function lib:random
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run scoreboard players operation @s total_score *= #const_2 mem
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run scoreboard players operation @s total_score_disp *= #const_2 mem
execute if score #bonus_add_score mem matches 100..101 if score $random mem matches 1 run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"}," 的硬币投出了正面, 得分加倍, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"green"},{"text": " 分", "color":"green"}]
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score /= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run scoreboard players operation @s total_score_disp /= #const_2 mem
execute if score #bonus_add_score mem matches 100 if score $random mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的硬币投出了反面, 得分减半, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"red"},{"text": " 分", "color":"red"}]
execute if score #bonus_add_score mem matches 101 if score $random mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的硬币投出了反面, 得分不变, 当前共有 ",{"score": {"name": "@s","objective": "total_score"},"color":"red"},{"text": " 分", "color":"red"}]

# 200：偷分
execute if score #bonus_add_score mem matches 200 run function item:bonus_item/stole_score

# 300：金粒 +3
execute if score #bonus_add_score mem matches 300 run scoreboard players add @s gold 3
execute if score #bonus_add_score mem matches 300 run scoreboard players add @s gold_total 3
execute if score #bonus_add_score mem matches 300 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 3 金粒"]

# 给予进度
execute if entity @s[scores={total_score=10..}] run advancement grant @s only ltw:story/score1
execute if entity @s[scores={total_score=25..}] run advancement grant @s only ltw:story/score2
execute if entity @s[scores={total_score=40..}] run advancement grant @s only ltw:story/score3