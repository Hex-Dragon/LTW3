# 每秒执行一次
schedule function ltw:clock/tick2 2t replace

# 死亡触发
execute as @a[x=-12,y=7,z=-102,distance=..5] at @s run function ltw:main/player_death
execute as @a[x=-12,y=7,z=-102,distance=..5] run tp @s -13 9 -42

# 调用其他模块
function lib:bossbar/tick2
execute if score $state mem matches 0 run function ltw:state/0/tick2
execute if score $state mem matches 3 run function ltw:state/3/tick2
execute if score $state mem matches 4 run function ltw:state/4/tick2
execute if score $state mem matches 5 run function ltw:state/5/tick2
execute if score $state mem matches 6 run function ltw:state/6/tick2
execute if score $state mem matches 7 run function ltw:state/7/tick2

# 特殊方块给予效果
function lib:effect/floating

# 调用节奏方块模块
execute if score $tempo_enable mem matches 1 run function lib:tempo_block/tick2

# 调用粒子模块
function item:particle/show_particle

# 调用物品模块（必须最后调用）
function item:tick2

# 全局倒计时
execute if score $countdown_fast mem matches 1.. run scoreboard players remove $countdown_fast mem 1
scoreboard players remove @e[scores={countdown_fast=1..}] countdown_fast 1
