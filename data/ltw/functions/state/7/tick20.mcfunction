# 显示倒计时
title @a times 3 14 2
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
title @a title "选择奖励"

# 退出状态
execute if score $countdown mem matches 7 run function ltw:state/8/state_enter