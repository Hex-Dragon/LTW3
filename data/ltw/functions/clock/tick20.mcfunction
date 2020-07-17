# 每秒执行一次
schedule function ltw:clock/tick20 20t replace

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick20
execute if score $state mem matches 3 run function ltw:state/3/tick20
execute if score $state mem matches 4 run function ltw:state/4/tick20
execute if score $state mem matches 5 run function ltw:state/5/tick20
execute if score $state mem matches 6 run function ltw:state/6/tick20
execute if score $state mem matches 7 run function ltw:state/7/tick20

# 全局倒计时
execute if score $countdown mem matches 1.. run scoreboard players remove $countdown mem 1

# 掐死原版 BGM
stopsound @a music music.game
stopsound @a music music.creative