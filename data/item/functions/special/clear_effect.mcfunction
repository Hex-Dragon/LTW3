# 清除buff
effect clear @a[tag=consume_apple] absorption
effect clear @a[tag=consume_apple] regeneration
effect clear @a[tag=consume_apple] fire_resistance

# 返还buff
execute as @a[tag=consume_apple] run function mini:main/give_effect

# 重置 tag
tag @a[tag=consume_apple] remove consume_apple
