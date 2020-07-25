# 显示倒计时
# execute if entity @a[tag=selecting] run title @a times 3 14 2
# execute if entity @a[tag=selecting] run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
# execute if entity @a[tag=selecting] run title @a title ""

# 下一状态
execute if score $countdown mem matches 1 run function ltw:state/7/next