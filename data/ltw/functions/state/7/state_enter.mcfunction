# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a[team=!debugging] run function ltw:state/7/player_enter

# 世界边界
worldborder set 1000000

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 清理残留实体
function mini:main/kill_remaining_entity

# 初始化倒计时
scoreboard players set $countdown mem 5

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule always
gamerule fallDamage false
