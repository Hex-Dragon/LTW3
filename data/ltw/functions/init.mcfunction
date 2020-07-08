# 全局初始化

# 游戏数据
time set noon
weather clear
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doWeatherCycle false

# 全局变量
scoreboard objectives remove mem
scoreboard objectives add mem dummy ["全局变量"]

# 时钟
schedule function ltw:clock/tick4 4t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块
function mini:main/init
