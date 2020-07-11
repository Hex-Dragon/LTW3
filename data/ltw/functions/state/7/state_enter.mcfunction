# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a run function ltw:state/7/player_enter

# HUD
# scoreboard objectives setdisplay belowName total_score
scoreboard objectives setdisplay sidebar total_score
# scoreboard objectives setdisplay list total_score

# 初始化跑酷地图
forceload add 0 2000 50 2050

# 生成地图
setblock 0 10 2000 minecraft:structure_block{mode:"LOAD",name:"ltw:select"}
setblock 0 11 2000 minecraft:redstone_block

# 判断进入下一轮小游戏或结束
execute if score $game_type mem matches 1 if score $round mem matches ..3 run function ltw:state/7/continue_gameparty
execute if score $game_type mem matches 1 if score $round mem matches 4.. run function ltw:main/game_end
