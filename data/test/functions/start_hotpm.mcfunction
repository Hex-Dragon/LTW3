# 测试用：快速开始 Hot Potato

tag @a remove watcher
function ltw:state/0/start_gameparty
scoreboard players set $round mem 100
scoreboard players set $mini_type mem 3
function mini:main/game_init
function ltw:state/4/state_enter
scoreboard players set $countdown mem 5
say 已开始热土豆！