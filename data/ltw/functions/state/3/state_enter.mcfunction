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
team modify playing color reset

# 清理奖励物资
kill @e[tag=bonus_item]

# 小游戏编号：生成一个 1~[最大游戏编号] 的 randomarray，每次从其中取下一个数。
execute unless data storage ltw:mini types[0] run function ltw:state/3/newarray
execute store result score $mini_type mem run data get storage ltw:mini types[0]
execute if score $round mem matches ..4 run data remove storage ltw:mini types[0]

# 前置/后置小游戏
# 如果为第 1 轮，则有一半概率选用刺客，一半概率不变
# 如果为第 5 轮，则有一半概率选用钢铁，一半概率选用贸易
scoreboard players set $random_max mem 1
scoreboard players set $random_min mem 0
function lib:random
execute if score $round mem matches 1 if score $random mem matches 0 run scoreboard players set $mini_type mem 201
execute if score $round mem matches 5 if score $random mem matches 0 run scoreboard players set $mini_type mem 101
execute if score $round mem matches 5 if score $random mem matches 1 run scoreboard players set $mini_type mem 102

# 初始化小游戏
scoreboard players add $ round_id 1
function mini:main/game_init
