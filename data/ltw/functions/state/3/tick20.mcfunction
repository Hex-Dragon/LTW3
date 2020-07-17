# 显示倒计时
title @a times 3 14 2
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $round mem matches ..5 run title @a title ["第 ",{"score": {"objective": "mem","name": "$round"}},"/6 轮"]
execute if score $round mem matches 6 run title @a title {"text":"最后一轮","color":"gold"}

# 退出状态
execute if score $countdown mem matches 10 run function ltw:state/4/state_enter