# 每秒执行一次
schedule function ltw:clock/tick20 20t replace

# 调用其他模块
execute if score $state mem matches 3 run function ltw:state/3/tick20
execute if score $state mem matches 4 run function ltw:state/4/tick20
execute if score $state mem matches 6 run function ltw:state/6/tick20

# 全局倒计时
scoreboard players remove $countdown mem 1
