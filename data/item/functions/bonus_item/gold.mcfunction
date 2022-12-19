# as player
execute store result score #bonus_gold mem run data get storage item:bonus item.tag.bonus_gold

# 更改积分
scoreboard players operation @s gold += #bonus_gold mem
scoreboard players operation @s gold_total += #bonus_gold mem

# 显示提示
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name": "#bonus_gold","objective": "mem"},"color":"aqua"},{"text": " 金粒","color":"aqua"}]
