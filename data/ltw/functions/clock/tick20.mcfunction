# 每秒执行一次
schedule function ltw:clock/tick20 20t replace

# 调用其他模块
function item:tick20
function lib:bossbar/tick20
execute if score $state mem matches 3 run function ltw:state/3/tick20
execute if score $state mem matches 4 run function ltw:state/4/tick20
execute if score $state mem matches 5 run function ltw:state/5/tick20
execute if score $state mem matches 6 run function ltw:state/6/tick20
execute if score $state mem matches 7 run function ltw:state/7/tick20
function lib:sounds/music/tick20

# 特殊方块给予效果
function lib:effect/regen

# 全局倒计时
execute if score $countdown mem matches 1.. run scoreboard players remove $countdown mem 1
scoreboard players remove @e[scores={countdown=1..}] countdown 1
# 4 秒一次
scoreboard players add $foursec mem 1
execute if score $foursec mem matches 4.. run scoreboard players set $foursec mem 0

# 掐死原版 BGM
stopsound @a music music.game
stopsound @a music music.creative
