# 测试用：快速开始幻翼
tag @a add lobby_ready
tag @a remove lobby_watch
tag @a remove watcher
function ltw:state/0/start_gameparty
scoreboard players set $round mem 6
scoreboard players set $mini_type mem 5
function mini:main/game_init
function ltw:state/4/state_enter
say 已开始单个测试游戏！