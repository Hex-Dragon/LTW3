# 清除 Bossbar
scoreboard players set $bossbar_type mem 0

# 继续下一轮小游戏
scoreboard players add $round mem 1
schedule function ltw:state/3/state_enter 2t replace
forceload remove 0 1900 50 2000