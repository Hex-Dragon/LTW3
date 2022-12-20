
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
fill 1025 251 5025 1029 255 5031 air
fill 1000 319 5000 1032 290 5032 air
fill 1000 289 5000 1032 271 5032 air
fill 1000 270 5000 1032 255 5032 air

schedule function mini:iron/game_init4 1t