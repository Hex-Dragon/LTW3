# 要求系统进入状态 0（等待大厅）
scoreboard players set $state mem 0
execute as @a run function ltw:state/0/player_enter

# HUD
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

# 关闭伤害
gamerule fallDamage false

# 清理加载区域
forceload remove all