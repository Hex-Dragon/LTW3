
# 地牢 1 生成
scoreboard players set $random_max mem 4
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 1028 254 5030 redstone_block
execute if score $random mem matches 2 run setblock 1028 254 5029 redstone_block
execute if score $random mem matches 3 run setblock 1028 254 5028 redstone_block
execute if score $random mem matches 4 run setblock 1028 254 5027 redstone_block

# 地牢 2 生成
scoreboard players set $random_max mem 4
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 1 run setblock 1027 254 5030 redstone_block
execute if score $random mem matches 2 run setblock 1027 254 5029 redstone_block
execute if score $random mem matches 3 run setblock 1027 254 5028 redstone_block
execute if score $random mem matches 4 run setblock 1027 254 5027 redstone_block

# 清理区域
fill 1025 255 5031 1029 251 5025 air

# 清理箱子重叠时产生的物品
kill @e[type=item]