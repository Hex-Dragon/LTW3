# 去除进度
advancement revoke @s only item:special/consume_golden_apple

# 计算生命值
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run scoreboard players add @s mini_heart 1
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run function mini:main/player_max_health

# 去除buff
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run tag @s add consume_apple
schedule function item:special/clear_effect 1t replace
