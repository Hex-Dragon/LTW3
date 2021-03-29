# 测试用：快速开始 Assassinate
team join playing @a[team=watching]
function ltw:state/0/start_game
scoreboard players set $round mem 5
scoreboard players set $mini_type mem 6
function mini:main/game_init
function ltw:state/4/state_enter
say 已开始单个测试游戏！

schedule function test:countdown/quick 20t