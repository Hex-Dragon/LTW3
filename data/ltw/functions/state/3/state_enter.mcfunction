# 要求系统进入状态 3（主要阶段结束，初始化小游戏）
scoreboard players set $state mem 3
execute as @a run function ltw:state/3/player_enter

# 初始化倒计时
scoreboard players set $countdown mem 3

# 决定进行哪个小游戏
# 1 跑酷；2 TNT Run；3 热土豆
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 2
function lib:random
scoreboard players operation $mini_type mem = $random mem

# 初始化小游戏
function mini:main/game_init
