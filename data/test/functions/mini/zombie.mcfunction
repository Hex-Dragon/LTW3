# 测试用：快速开始僵尸
tag @a add hub_gameparty
tag @a remove hub_watch
function ltw:state/0/start_gameparty
scoreboard players set $round mem 5
scoreboard players set $mini_type mem 5
function mini:main/game_init
function ltw:state/4/state_enter
scoreboard players set $countdown mem 5
say 已开始猪海寻路！