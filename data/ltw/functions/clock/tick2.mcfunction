# 每 2 Tick 执行一次
schedule function ltw:clock/tick2 2t replace

# 死亡检测
execute as @a[x=-29,y=39,z=-78,distance=..3] at @s run function ltw:main/player_death

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick2
# execute if score $state mem matches 3 run function ltw:state/3/tick2
# execute if score $state mem matches 4 run function ltw:state/4/tick2
# execute if score $state mem matches 5 run function ltw:state/5/tick2
# execute if score $state mem matches 6 run function ltw:state/6/tick2
# execute if score $state mem matches 7 run function ltw:state/7/tick2
# function lib:bossbar/tick2
# 物品模块必须最后调用，以清理弹出的临时物品
function item:tick2

# TODO: 未完成的重构

# # 特殊方块给予效果
# function lib:effect/floating

# # 调用粒子模块
# function item:particle/show_particle

# # 全局倒计时
# execute if score $countdown_fast mem matches 1.. run scoreboard players remove $countdown_fast mem 1
# scoreboard players remove @e[scores={countdown_fast=1..}] countdown_fast 1
