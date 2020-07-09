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
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives remove game_id
scoreboard objectives add game_id dummy "游戏编号"
scoreboard players set $ game_id 0

# 队伍
team remove ltw
team add ltw "龙猫战争3"
team modify ltw color white
team modify ltw collisionRule never


# 时钟
schedule function ltw:clock/tick4 4t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块
function mini:main/init

# 状态
function ltw:state/0/state_enter
