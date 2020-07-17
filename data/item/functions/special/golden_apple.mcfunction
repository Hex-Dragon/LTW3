# 去除进度
advancement revoke @s only item:special/consume_golden_apple

# 有生命计数：增加生命数
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run scoreboard players add @s mini_heart 1
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了生命果, 生命 +1!"]

# 无生命计数：恢复生命
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run effect give @s instant_health 1 1 true
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了生命果, 生命恢复 4 颗心!"]

## 归还苹果
#execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你只能在存在生命计数的小游戏中食用生命果!","color":"aqua"}]
#execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run give @s minecraft:golden_apple{display:{Name:'{"text":"生命果","italic":false}',Lore:['{"text":"恢复 4 颗心或生命 +1","italic":false,"color":"gray"}']},bonus_new:0b,bonus_return:1b,is_bonus:1b,item_name:'{"text":"生命果","color":"green"}'}

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
execute if score $state mem matches 5 run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace
