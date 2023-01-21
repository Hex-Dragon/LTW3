#as player
execute store result score #bonus_add_score mem run data get storage item:bonus item.tag.bonus_add_score

# 正常的加分
execute if score #bonus_add_score mem matches 1..10 run scoreboard players operation @s total_score += #bonus_add_score mem
execute if score #bonus_add_score mem matches 1..10 run scoreboard players operation @s total_score_disp += #bonus_add_score mem
execute if score #bonus_add_score mem matches 1..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_score","objective": "mem"},"color":"aqua"},{"text": " 积分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]

# 没有加分
execute if score #bonus_add_score mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 没能获得积分……"]

# 清零
execute if score #bonus_add_score mem matches ..-1 if score @s total_score matches 0 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 没能获得积分……"]
execute if score #bonus_add_score mem matches ..-1 if score @s total_score matches 1.. run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 的 ",{"score": {"name": "@s","objective": "total_score"}}," 积分惨遭清零……"]
execute if score #bonus_add_score mem matches ..-1 run scoreboard players set @s total_score 0
execute if score #bonus_add_score mem matches ..-1 run scoreboard players set @s total_score_disp 0

# 刷新显示
function item:refresh_level

# 给予进度
execute if entity @s[scores={total_score=10..}] run advancement grant @s only ltw:story/score1
execute if entity @s[scores={total_score=18..}] run advancement grant @s only ltw:story/score2
execute if entity @s[scores={total_score=26..}] run advancement grant @s only ltw:story/score3
execute if entity @s[scores={total_score=34..}] run advancement grant @s only ltw:story/score4