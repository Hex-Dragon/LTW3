# 去除进度
advancement revoke @s only item:special/consume_enchanted_apple

# 计算生命值
execute if score @s mini_heart matches 1.. run scoreboard players operation @s mini_heart += @s mini_heart
execute if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了附魔生命果, 生命加倍!"]

# 无生命计数：恢复生命
execute unless score @s mini_heart matches 1.. run effect give @s instant_health 1 10 true
execute unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了附魔生命果, 生命恢复到满血!"]

# 归还苹果
#execute unless score @s mini_heart matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你只能在存在生命计数的小游戏中食用生命果!","color":"aqua"}]
#execute unless score @s mini_heart matches 1.. run give @s minecraft:enchanted_golden_apple{display:{Name:'{"text":"附魔生命果","italic":false}',Lore:['{"text":"恢复到满血或生命加倍","italic":false,"color":"gray"}']},bonus_new:0b,bonus_return:1b,is_bonus:1b,item_name:'{"text":"附魔生命果","color":"aqua"}'}

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
execute run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace
