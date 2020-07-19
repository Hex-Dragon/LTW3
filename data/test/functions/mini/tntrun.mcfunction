# 测试用：快速开始 TNT Run
tag @a add hub_ready
tag @a remove hub_watch
function ltw:state/0/start_gameparty
scoreboard players set $round mem 6
scoreboard players set $mini_type mem 2
function mini:main/game_init
function ltw:state/4/state_enter
say 已开始单个测试游戏！