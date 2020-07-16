# 似乎不需要播放音效，方块破坏的时候自带音效了
# 顺带一提，下次放音效记得 execute as @a at @s，给服务器放 rap 没什么卵用
# function lib:sounds/error

scoreboard players add $parkour_block mem 1
execute if score $parkour_block mem matches 1 run setblock 1009 9 1036 air destroy
execute if score $parkour_block mem matches 1 run setblock 1013 9 1032 air destroy
execute if score $parkour_block mem matches 1 run setblock 1010 11 1033 air destroy
execute if score $parkour_block mem matches 1 run setblock 1010 13 1030 air destroy
execute if score $parkour_block mem matches 1 run setblock 1013 10 1032 minecraft:crimson_hyphae
execute if score $parkour_block mem matches 1 run setblock 1012 8 1035 minecraft:crimson_hyphae
execute if score $parkour_block mem matches 1 run setblock 1009 10 1036 minecraft:crimson_hyphae
execute if score $parkour_block mem matches 1 run setblock 1010 10 1033 minecraft:crimson_hyphae
execute if score $parkour_block mem matches 1 run setblock 1010 12 1030 minecraft:crimson_hyphae
execute if score $parkour_block mem matches 2.. run scoreboard players set $parkour_block mem 0
execute if score $parkour_block mem matches 0 run setblock 1012 8 1035 air destroy
execute if score $parkour_block mem matches 0 run setblock 1009 10 1036 air destroy
execute if score $parkour_block mem matches 0 run setblock 1010 10 1033 air destroy
execute if score $parkour_block mem matches 0 run setblock 1013 10 1032 air destroy
execute if score $parkour_block mem matches 0 run setblock 1010 12 1030 air destroy
execute if score $parkour_block mem matches 0 run setblock 1009 9 1036 minecraft:warped_hyphae
execute if score $parkour_block mem matches 0 run setblock 1013 9 1032 minecraft:warped_hyphae
execute if score $parkour_block mem matches 0 run setblock 1010 11 1033 minecraft:warped_hyphae
execute if score $parkour_block mem matches 0 run setblock 1010 13 1030 minecraft:warped_hyphae

# TODO : [HIM] 使用 $countdown_fast 进行计时，在 tick2 触发，每 1.5s ($countdown_fast=15) 轮换一次方块