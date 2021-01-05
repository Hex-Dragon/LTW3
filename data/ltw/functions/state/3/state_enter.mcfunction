# 要求系统进入状态 3（主要阶段结束，初始化小游戏）
scoreboard players set $state mem 3
execute as @a[team=!debugging] run function ltw:state/3/player_enter

# HUD
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 修改时间
time set midnight

# 初始化倒计时
scoreboard players set $countdown mem 3

# 禁用 tempo_block
scoreboard players set $tempo_enable mem 0

# 修改队伍颜色
team modify playing color white

# 小游戏编号
# 优化下一次游戏的选择：生成一个 1~[最大游戏编号] 的 randomarray，每次从其中取下一个数。
execute unless data storage ltw:mini types[0] run function ltw:state/3/newarray
execute store result score $mini_type mem run data get storage ltw:mini types[0]
data remove storage ltw:mini types[0]

# 初始化小游戏
function mini:main/game_init