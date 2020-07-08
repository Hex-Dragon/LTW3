# 要求系统进入状态 6（小游戏结束）
scoreboard players set $state mem 6
execute as @a run function ltw:state/6/player_enter

# 初始化倒计时
scoreboard players set $countdown mem 5
