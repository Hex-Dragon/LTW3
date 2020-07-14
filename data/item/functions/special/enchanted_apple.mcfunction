# 去除进度
advancement revoke @s only item:special/consume_enchanted_apple

# 计算生命值
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run scoreboard players operation @s mini_heart += @s mini_heart

# 去除buff
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run effect clear @s absorption
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run effect clear @s fire_resistance
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run effect clear @s regeneration
execute if score $state mem matches 1.. if score @s mini_heart matches 1.. run effect give @s minecraft:resistance 999999 4 true
