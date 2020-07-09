# 要求系统进入状态 3（主要阶段结束，初始化小游戏）
scoreboard players set $state mem 3
execute as @a run function ltw:state/3/player_enter

# HUD
scoreboard objectives setdisplay sidebar total_score

# 初始化倒计时
scoreboard players set $countdown mem 10

# 小游戏编号
# 1 跑酷；2 TNT Run；3 热土豆
# 优化下一次游戏的选择：生成一个 1~[最大游戏编号] 的 randomarray，每次从其中取下一个数。
# TODO : 如果数组取完了，就生成一个新数组，但是要保证新数组的开头和老数组的结尾不一样，这样就不会连续玩两次相同的游戏了
execute unless data storage ltw:mini types[0] run function ltw:state/3/newarray
execute store result score $mini_type mem run data get storage ltw:mini types[0]
data remove storage ltw:mini types[0]

# 初始化小游戏
function mini:main/game_init
