# 显示倒计时
title @a times 3 14 2
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
title @a title ["第 ",{"score": {"objective": "mem","name": "$round"}},"/5 轮"]

# 退出状态
execute if score $countdown mem matches 8 run function ltw:state/4/state_enter