# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a run function ltw:state/7/player_enter

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp

# 初始化地图
forceload add 0 2000 50 2050
kill @e[type=item]

# 生成地图
setblock 0 10 2000 minecraft:structure_block{mode:"LOAD",name:"ltw:select"}
setblock 0 11 2000 minecraft:redstone_block

# 生成奖励物品
execute store result score $t_player_count mem if entity @a[tag=!watcher]
# scoreboard players set $t_player_count mem 8
execute if score $t_player_count mem matches 1.. positioned 9.0 12.5 2012.5 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 2.. positioned 5.0 12.5 2012.5 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 3.. positioned 1.5 12.5 2009.0 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 4.. positioned 1.5 12.5 2005.0 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 5.. positioned 5.0 12.5 2001.5 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 6.. positioned 9.0 12.5 2001.5 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 7.. positioned 12.5 12.5 2005.0 run function item:bonus_item/rank/random
execute if score $t_player_count mem matches 8.. positioned 12.5 12.5 2009.0 run function item:bonus_item/rank/random

# 生成拾取窗口
execute as @e[type=item] at @s run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 air
execute as @e[type=item] at @s run fill ~-0.2 ~1 ~-0.2 ~0.2 ~1 ~0.2 barrier

# 防止幽灵实体，分 tick 执行
schedule function ltw:state/8/state_enter2 1t

# 判断进入下一轮小游戏或结束
# execute if score $game_type mem matches 1 if score $round mem matches ..5 run function ltw:state/7/continue_gameparty
# execute if score $game_type mem matches 1 if score $round mem matches 6.. run function ltw:main/game_end