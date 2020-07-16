# 去除进度
advancement revoke @s only item:special/consume_enchanted_apple

# 计算生命值
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run scoreboard players operation @s mini_heart += @s mini_heart
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了附魔生命果, 生命值加倍!"]

# 归还苹果
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你只能在存在生命计数的小游戏中食用生命果!","color":"aqua"}]
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run give @s minecraft:enchanted_golden_apple{display:{Name:'{"text":"附魔生命果","italic":false}',Lore:['{"text":"小游戏中生命值加倍","italic":false,"color":"gray"}']},bonus_new:0b,bonus_return:1b,is_bonus:1b,item_name:'{"text":"附魔生命果","color":"aqua"}'}

# 检测小游戏是否去除特殊效果
execute if score $state mem matches 5 if score $mini_type mem matches 5 run scoreboard players set $t_remove_resistance mem 1 

# 去除buff
execute if score $state mem matches 5 run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace