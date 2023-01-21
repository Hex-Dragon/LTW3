# 每 1 Tick 执行一次

# 检查系统重置情况
scoreboard objectives add mem dummy "全局变量"
execute unless score #10 mem matches 10 run function ltw:init

# 调用其他模块
execute if score $state mem matches 5 run function ltw:state/5/tick1