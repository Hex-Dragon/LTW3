# 全局初始化

# 游戏数据
forceload remove all
time set noon
weather clear
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule doImmediateRespawn true

# 记分板
scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard objectives remove total_score
scoreboard objectives add total_score dummy "得分"

# 时钟
schedule function ltw:clock/tick4 4t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块
function mini:main/init

# 状态
function ltw:state/0/state_enter

# TODO 关闭玩家碰撞箱