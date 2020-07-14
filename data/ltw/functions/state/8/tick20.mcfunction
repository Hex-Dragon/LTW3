# 显示倒计时
title @a times 3 14 2
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
title @a title ""

# 下一状态
execute if score $countdown mem matches 1 run function ltw:state/8/next