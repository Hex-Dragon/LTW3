# 离开次数为不存在，则为第一次加入游戏
# 离开次数不为 0，则离开过游戏
execute as @a unless score @s leave_game matches 0 run function ltw:main/player_enter
execute as @a unless score @s leave_game matches 0 run scoreboard players set @s leave_game 0
