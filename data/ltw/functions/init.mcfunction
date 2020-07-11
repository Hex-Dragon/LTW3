# 全局初始化

# 游戏数据
forceload remove all
time set noon
weather clear
difficulty normal
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule fireDamage false
gamerule doTileDrops false

# 主寄存区块
forceload add 0 0
#   0,0,0 唱片机：玩家拾取奖励物品 item:check_item

# 记分板
scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard objectives remove total_score
scoreboard objectives add total_score dummy "得分"
scoreboard objectives remove total_score_disp
scoreboard objectives add total_score_disp dummy "得分"
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives remove game_id
scoreboard objectives add game_id dummy "游戏编号"
scoreboard players set $ game_id 0

# 常量
scoreboard players set $global_mini_count mem 4

# 队伍
team remove ltw
team add ltw "玩家"
team modify ltw color white
team modify ltw collisionRule never
team remove green
team add green "绿色"
team modify green color green
team remove blue
team add blue "蓝色"
team modify blue color aqua
team remove purple
team add purple "紫色"
team modify purple color light_purple

# 进度
advancement revoke @a everything

# 时钟
schedule function ltw:clock/tick2 2t replace
schedule function ltw:clock/tick5 5t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块
function mini:main/init
function item:init

# 状态
function ltw:state/0/state_enter
