# 要求系统进入状态 4（展示小游戏）
scoreboard players set $state mem 4
execute as @a run function ltw:state/4/player_enter

# HUD
scoreboard objectives setdisplay sidebar

# 初始化倒计时
scoreboard players set $countdown mem 10
