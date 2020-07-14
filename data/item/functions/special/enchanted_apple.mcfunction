# 去除进度
advancement revoke @s only item:special/consume_enchanted_apple

# 计算生命值
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run scoreboard players operation @s mini_heart += @s mini_heart
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run function mini:main/player_max_health
# 去除buff
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace
