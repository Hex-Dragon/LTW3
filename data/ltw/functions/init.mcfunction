# 全局初始化

# 全局变量初始化
scoreboard objectives remove mem
scoreboard objectives add mem dummy ["全局变量"]

# 时钟初始化
schedule function ltw:clock/tick4 4t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块的初始化
function mini:main/init
