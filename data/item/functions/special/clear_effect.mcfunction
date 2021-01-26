# 重置buff
execute as @a[tag=consume_apple] run function mini:main/give_effect

# 重置 tag
tag @a[tag=consume_apple] remove consume_apple
