# 测试用：快速开始钻石风暴
team join playing @a[team=watching]
clear @a[team=!debugging]
function ltw:state/0/start_game
scoreboard players set $round mem 5
scoreboard players set $mini_type mem -1
function mini:main/game_init
function ltw:state/4/state_enter
say 已开始单个测试游戏！

schedule function test:countdown/quick 20t