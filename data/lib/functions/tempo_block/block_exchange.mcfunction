# 切换节奏方块状态
scoreboard players add $tempo_block mem 1
execute if score $tempo_block mem matches 2.. run scoreboard players set $tempo_block mem 0

# 调用对应颜色方块 0:blue 1:red
execute if score $tempo_block mem matches 0 run function lib:tempo_block/tempo_blue
execute if score $tempo_block mem matches 1 run function lib:tempo_block/tempo_red