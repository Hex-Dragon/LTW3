# 测试用：快速开始跑酷

scoreboard players set $mini_type mem 1
function mini:main/game_init
function ltw:state/4/state_enter
scoreboard players set $countdown mem 6
say 已开始跑酷！