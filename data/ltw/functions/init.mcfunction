# 全局初始化

# 游戏数据
setworldspawn -12 7 -102
forceload remove all
time set midnight
weather clear
difficulty normal
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule reducedDebugInfo true
gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule fireDamage false
gamerule doTileDrops false
gamerule doMobLoot false
gamerule doTraderSpawning false
gamerule drowningDamage false
gamerule doLimitedCrafting true
gamerule announceAdvancements true
gamerule fallDamage false

# 主寄存区块：将所有需要不卸载的都放里面
#   已占用：(0,0,0) (0,0,1) (0,1,0) (0,1,1)
forceload add 0 0
forceload add 0 1900 50 2000
forceload add -32 -17 45 -80
setblock 0 0 0 jukebox
setblock 0 0 1 shulker_box
setblock 0 1 0 minecraft:acacia_wall_sign[facing=north]
setblock 0 1 1 stone

# 记分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard objectives remove temp2
scoreboard objectives add temp2 dummy
scoreboard objectives remove countdown
scoreboard objectives add countdown dummy "倒计时"
scoreboard objectives remove countdown_fast
scoreboard objectives add countdown_fast dummy "快速倒计时"
scoreboard objectives remove health
scoreboard objectives add health health "生命值"
scoreboard objectives remove health_disp
scoreboard objectives add health_disp dummy "生命值"
scoreboard objectives modify health_disp rendertype hearts
scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard objectives remove total_score
scoreboard objectives add total_score dummy "积分"
scoreboard objectives remove total_score_disp
scoreboard objectives add total_score_disp dummy "积分"
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives remove effect_floating
scoreboard objectives add effect_floating dummy "悬浮计时"
scoreboard objectives remove game_id
scoreboard objectives add game_id dummy "游戏编号"
scoreboard objectives remove round_id
scoreboard objectives add round_id dummy "小游戏编号"
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家编号"
scoreboard objectives remove music_time
scoreboard objectives add music_time dummy "BGM 时间"
scoreboard objectives add stat_total dummy "总场次"
scoreboard objectives add stat_win dummy "总胜场"
scoreboard objectives remove setup_trigger
scoreboard objectives add setup_trigger trigger "触发器_视频设置"
scoreboard players set $ game_id 0
scoreboard players set $ round_id 0

# 常量与变量初始化
scoreboard players set #mini_total mem 5
scoreboard players set #-1 mem -1
scoreboard players set #0 mem 0
scoreboard players set #1 mem 1
scoreboard players set #2 mem 2
scoreboard players set #3 mem 3
scoreboard players set #4 mem 4
scoreboard players set #5 mem 5
scoreboard players set #6 mem 6
scoreboard players set #7 mem 7
scoreboard players set #8 mem 8
scoreboard players set #9 mem 9
scoreboard players set #10 mem 10
scoreboard players set #81 mem 81
scoreboard players set #100 mem 100

# 玩家队伍
# team remove debugging
team add debugging "调试者"
team modify debugging color red
team modify debugging collisionRule never
team modify debugging deathMessageVisibility never
team modify debugging seeFriendlyInvisibles false
team remove playing
team add playing "玩家"
team modify playing color green
team modify playing collisionRule never
team modify playing deathMessageVisibility never
team modify playing seeFriendlyInvisibles false
team remove watching
team add watching "旁观者"
team modify watching color gray
team modify watching collisionRule never
team modify watching deathMessageVisibility never
team modify watching seeFriendlyInvisibles false

# 非玩家队伍
team remove white
team add white "白色"
team modify white friendlyFire false
team remove green
team add green "绿色"
team modify green color green
team modify green friendlyFire false
team remove blue
team add blue "蓝色"
team modify blue color aqua
team modify blue friendlyFire false
team remove purple
team add purple "紫色"
team modify purple color light_purple
team modify purple friendlyFire false
team remove gold
team add gold "金色"
team modify gold color gold
team modify gold friendlyFire false
team add red "红色（幻翼用）"
team modify red color red
team add green_test "绿色（显示测试用）"
team modify green_test color green
team add orange_test "橙色（显示测试用）"
team modify orange_test color gold

# 世界边界
worldborder warning distance 0
worldborder set 1000000

# 进度
advancement revoke @a only lib:damage_dealt
advancement revoke @a only lib:damage_taken
advancement revoke @a only item:container/place
advancement revoke @a only item:special/consume_enchanted_apple
advancement revoke @a only item:special/consume_golden_apple

# 时钟
schedule function ltw:clock/tick2 2t replace
schedule function ltw:clock/tick5 5t replace
schedule function ltw:clock/tick20 20t replace

# 其他模块
function mini:main/init
function item:init
function lib:bossbar/init

# 状态
function ltw:state/0/state_enter

# 重置随机数组
data modify storage ltw:mini types set value []
data modify storage ltw:mini qualities set value []
data modify storage ltw:mini colormatch.types set value []

# 显示提示
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true}, {"text": "管理员已手动重置游戏!","color": "aqua"}]