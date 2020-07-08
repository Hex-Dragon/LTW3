# 每 0.2s 执行一次
schedule function ltw:clock/tick4 4t replace

# 调用其他模块
execute if score $state mem matches 5 run function ltw:state/5/tick4