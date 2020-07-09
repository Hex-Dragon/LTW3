# 每 0.2s 执行一次
schedule function ltw:clock/tick4 4t replace

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick4
execute if score $state mem matches 4 run function ltw:state/4/tick4
execute if score $state mem matches 5 run function ltw:state/5/tick4
execute if score $state mem matches 6 run function ltw:state/6/tick4
function ltw:main/tick4
