# 显示倒计时
title @a times 3 14 2
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
title @a title "准备选择奖励"

# 退出状态
execute if score $countdown mem matches ..6 run function ltw:state/7/state_enter