# 去除进度
advancement revoke @s only item:special/consume_golden_apple

# 计算生命值
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run scoreboard players add @s mini_heart 1
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score $state mem matches 5 if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了生命果, 生命值 +1!"]

# 归还苹果
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你只能在存在生命计数的小游戏中食用生命果!","color":"aqua"}]
execute if score $state mem matches 5 unless score @s mini_heart matches 1.. run give @s golden_apple

# 检测小游戏是否去除特殊效果
execute if score $state mem matches 5 if score $mini_type mem matches 5 run scoreboard players set $t_remove_resistance mem 1 

# 去除buff
execute if score $state mem matches 5 run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace
