# 去除进度
advancement revoke @s only item:special/consume_golden_apple

# 有生命计数：增加生命数
execute if score @s mini_heart matches 1.. run scoreboard players add @s mini_heart 1
execute if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了金苹果, 生命 +1！"]

# 无生命计数：恢复生命
execute unless score @s mini_heart matches 1.. run effect give @s instant_health 1 0 true
execute unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了金苹果！"]

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
tag @s add consume_apple
schedule function item:special/clear_apple_effect 2t replace
