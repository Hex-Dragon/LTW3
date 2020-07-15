# 清除buff+隐藏抗性提升图标
effect clear @a[tag=consume_apple] absorption
effect clear @a[tag=consume_apple] regeneration
effect clear @a[tag=consume_apple] fire_resistance
effect give @a[tag=consume_apple] minecraft:resistance 999999 4 true

# 检测是否保留抗性提升
execute if score $t_remove_resistance mem matches 1 run effect clear @a[tag=consume_apple] resistance 

# 重置tag和分数
tag @a[tag=consume_apple] remove consume_apple
scoreboard players reset $t_remove_resistance mem
