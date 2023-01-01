# 清理加载区域
forceload remove all
forceload add 0 0
forceload add 0 1900 50 2000
forceload add -32 -17 45 -80

# 世界边界
worldborder set 1000000

# 要求系统进入状态 0（等待大厅）
scoreboard players set $state mem 0
execute as @a[team=!debugging] run function ltw:state/0/player_enter

# HUD
scoreboard objectives setdisplay belowName green_total
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list green_total
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule never
gamerule doMobLoot false
gamerule doTileDrops false

# 修改队伍颜色
team modify playing color green

# 重置开始倒计时
scoreboard players set #start_countdown mem 9999999

schedule function ltw:state/0/state_enter_2 10t replace