# 去除进度
advancement revoke @s only item:special/consume_totem

# 有生命计数
execute if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 使用了不死图腾, 抵挡了一次死亡！"]

# 无生命计数
execute unless score @s mini_heart matches 1.. run effect give @s instant_health 1 0 true
execute unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 使用了不死图腾！"]

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
execute unless score @s mini_heart matches 1.. run tag @s add have_totem
schedule function mini:special/clear_totem_effect 2t replace