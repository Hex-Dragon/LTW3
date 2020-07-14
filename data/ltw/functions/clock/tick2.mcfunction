# 每秒执行一次
schedule function ltw:clock/tick2 2t replace

# 调用其他模块
function item:tick2
execute if score $state mem matches 3 run function ltw:state/3/tick2
execute if score $state mem matches 4 run function ltw:state/4/tick2
execute if score $state mem matches 5 run function ltw:state/5/tick2
execute if score $state mem matches 6 run function ltw:state/6/tick2
execute if score $state mem matches 7 run function ltw:state/7/tick2

# 全局倒计时
execute if score $countdown_fast mem matches 1.. run scoreboard players remove $countdown_fast mem 1
