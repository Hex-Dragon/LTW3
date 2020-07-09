# 要求系统进入状态 3（主要阶段结束，初始化小游戏）
scoreboard players set $state mem 3
execute as @a run function ltw:state/3/player_enter

# HUD
scoreboard objectives setdisplay sidebar total_score

# 初始化倒计时
scoreboard players set $countdown mem 3

# 决定进行哪个小游戏
# 1 跑酷；2 TNT Run；3 热土豆
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 3
function lib:random
scoreboard players operation $mini_type mem = $random mem
# TODO 优化下一次游戏的选择：生成一个 1~[最大游戏编号] 的 randomarray，每次从其中取下一个数。如果数组取完了，就生成一个新数组，但是要保证新数组的开头和老数组的结尾不一样，这样就不会连续玩两次相同的游戏了

# 初始化小游戏
function mini:main/game_init
