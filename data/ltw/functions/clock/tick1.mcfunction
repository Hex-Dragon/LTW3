# 每 1 Tick 执行一次
schedule function ltw:clock/tick1 1t replace

# # 调用其他模块
# execute if score $state mem matches 5 run function ltw:state/5/tick1
