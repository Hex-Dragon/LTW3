# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a run function ltw:state/7/player_enter

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp

# 初始化倒计时
scoreboard players set $countdown mem 7

# 伤害管理
team modify player friendlyFire false
team modify player collisionRule always
gamerule fallDamage false
