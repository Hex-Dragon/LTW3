# 全局初始化

# 游戏数据
setworldspawn 10 13 10
forceload remove all
time set midnight
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
gamerule doMobLoot false
gamerule doTraderSpawning false
gamerule drowningDamage false
gamerule doLimitedCrafting true
gamerule announceAdvancements false

# 主寄存区块：将所有需要不卸载的都放里面
#   已占用：(0,0,0) (0,0,1)
forceload add 0 0
setblock 0 0 0 jukebox

# 记分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard objectives remove countdown
scoreboard objectives add countdown dummy "倒计时"
scoreboard objectives remove countdown_fast
scoreboard objectives add countdown_fast dummy "快速倒计时"
scoreboard objectives remove health
scoreboard objectives add health health "生命值"
scoreboard objectives remove health_disp
scoreboard objectives add health_disp dummy "生命值"
scoreboard objectives modify health_disp rendertype hearts
scoreboard objectives remove death
scoreboard objectives add death deathCount "死亡触发"
scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard objectives remove total_score
scoreboard objectives add total_score dummy "得分"
scoreboard objectives remove total_score_disp
scoreboard objectives add total_score_disp dummy "得分"
scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏"
scoreboard objectives remove effect_floating
scoreboard objectives add effect_floating dummy "悬浮计时"
# scoreboard objectives remove effect_regen
# scoreboard objectives add effect_regen dummy "恢复计时"
scoreboard objectives remove game_id
scoreboard objectives add game_id dummy "游戏编号"
scoreboard players set $ game_id 0

# 商店系统记分板
scoreboard objectives add buy_trigger trigger "触发器_购买物品"
scoreboard objectives add gold dummy "金粒"
scoreboard objectives add gold_total dummy "金粒总计"
scoreboard objectives add shop_arrow dummy "箭升级"
scoreboard objectives add shop_potion dummy "药水升级"
scoreboard objectives add shop_apple dummy "苹果升级"
scoreboard objectives add shop_armor dummy "护甲升级"
scoreboard objectives add shop_weapon dummy "武器升级"
scoreboard objectives add shop_orange dummy "活跃橙升级"
scoreboard objectives add shop_potion_spd dummy "速度药水升级"
scoreboard objectives add shop_potion_rst dummy "抗性药水升级"
scoreboard objectives add shop_bow dummy "弓升级"
scoreboard objectives add shop_firework dummy "烟花"
scoreboard objectives add shop_bgm dummy "BGM"
scoreboard objectives add shop_pig dummy "猪叫"
scoreboard objectives add shop_easter_egg dummy "臭彩蛋"

# 常量与变量初始化
scoreboard players set #mini_total mem 5
scoreboard players set #const_2 mem 2
scoreboard players set #const_5 mem 5
scoreboard players set #const_9 mem 9
scoreboard players set #const_10 mem 10
scoreboard players set #const_81 mem 81
scoreboard players set #const_100 mem 100
scoreboard players set $game_type mem 1

# 队伍
team remove player
team add player "玩家"
team modify player color white
team modify player collisionRule never
team modify player deathMessageVisibility never
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
