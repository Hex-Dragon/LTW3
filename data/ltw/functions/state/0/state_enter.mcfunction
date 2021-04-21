# 在系统进入状态时触发
scoreboard players set $state mem 0

# HUD
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

# 区域
forceload remove all
forceload add 0 0
forceload add 31 -17 -31 -80

# 规则
function ltw:init/gamerule
gamerule naturalRegeneration true

# 队伍
team remove hub_watch
team add hub_watch "旁观"
team modify hub_watch collisionRule never
team modify hub_watch prefix {"text":" ◇ ","color":"white"}
team modify hub_watch suffix " "
team remove hub_play
team add hub_play "准备"
team modify hub_play collisionRule never
team modify hub_play prefix {"text":" ◆ ","color":"green"}
team modify hub_play suffix " "

# 实体
function ltw:init/entity
function ltw:state/0/sp/refresh_entity

# 玩家
execute as @a[team=!debug] run function ltw:state/0/player_enter

# ——————————————————————————————————————————————

# 重置开始倒计时
scoreboard players set $start_countdown mem 9999999





# TODO: 未完成的重构

# 启用节奏跑酷
#scoreboard players set $tempo_enable mem 1
#function ltw:state/0/parkour/tempo_block/marker_spawn
# bossbar
#scoreboard players set $bossbar_type mem 0
#function lib:bossbar/show
