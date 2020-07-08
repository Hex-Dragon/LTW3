# 全局初始化

# 状态机初始化
scoreboard objectives remove ltw_state
scoreboard objectives add ltw_state dummy ["主状态"]

# 时钟初始化
schedule function ltw:clock/tick4 4t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块的初始化
function mini:main/init
