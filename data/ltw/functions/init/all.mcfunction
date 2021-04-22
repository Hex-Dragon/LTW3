# 全局初始化

datapack enable "file/LTW3"
datapack disable "vanilla"
tellraw @a [{"text":"\n ❇ ","color":"aqua"}," 管理员已手动重置游戏！\n"]

# ---------------------------------------------
#  时钟
# ---------------------------------------------
schedule function ltw:clock/tick1 1t replace
schedule function ltw:clock/tick2 2t replace
schedule function ltw:clock/tick5 5t replace
# 为了让时钟略有间隔地触发，这里略微修改了初相
schedule function ltw:clock/tick20 17t replace
schedule function ltw:clock/tick100 98t replace

# ---------------------------------------------
#  全局记分板
# ---------------------------------------------
scoreboard objectives remove mem
scoreboard objectives add mem dummy "全局变量"
scoreboard objectives remove temp
scoreboard objectives add temp dummy "缓存"
scoreboard objectives remove temp2
scoreboard objectives add temp2 dummy "缓存 2"
scoreboard objectives remove UUID
scoreboard objectives add UUID dummy "UUID"
scoreboard objectives remove music_time
scoreboard objectives add music_time dummy "音乐倒计时"
scoreboard objectives remove music
scoreboard objectives add music dummy "音乐曲目"
scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家编号"
scoreboard objectives remove game_id
scoreboard objectives add game_id dummy "游戏局号"
scoreboard players set $ game_id 0
# 无需移除的全局记分板
scoreboard objectives add leave_game minecraft.custom:leave_game "离开游戏计数"

# ---------------------------------------------
#  数字常量
# ---------------------------------------------
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
scoreboard players set #16 mem 16
scoreboard players set #64 mem 64
scoreboard players set #81 mem 81
scoreboard players set #100 mem 100

# ---------------------------------------------
#  通用的玩家队伍
# ---------------------------------------------
# 若玩家不在以下两个队伍之一，那就代表他是游戏中的玩家
team add debug "调试者"
team modify debug color dark_gray
team add watch "旁观者"
team modify watch color gray

# ---------------------------------------------
#  非玩家队伍
# ---------------------------------------------
team remove npc_white
team add npc_white "白色"
team modify npc_white color white
team remove npc_green
team add npc_green "绿色"
team modify npc_green color green
team remove npc_blue
team add npc_blue "蓝色"
team modify npc_blue color aqua
team remove npc_purple
team add npc_purple "紫色"
team modify npc_purple color light_purple
team remove npc_gold
team add npc_gold "橙色"
team modify npc_gold color gold

# ---------------------------------------------
#  不常修改的游戏规则
# ---------------------------------------------
difficulty normal
time set day
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doTileDrops false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule mobGriefing false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doFireTick false
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
weather clear
gamerule doWeatherCycle false
gamerule forgiveDeadPlayers false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule maxEntityCramming 10
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages false
setworldspawn -12 7 -102
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger true
worldborder warning distance 0

# ---------------------------------------------
#  切换状态（其中会调用其他 init 函数）
# ---------------------------------------------
function ltw:state/0/state_enter


# TODO: 未完成的重构

# # 主寄存区块：将所有需要不卸载的都放里面
# #   已占用：(0,0,0) (0,0,1) (0,1,0) (0,1,1)
# forceload remove all
# forceload add 0 0
# setblock 0 0 0 jukebox
# setblock 0 0 1 shulker_box
# setblock 0 1 0 minecraft:acacia_wall_sign[facing=north]
# setblock 0 1 1 stone

# # 记分板
# scoreboard objectives remove countdown
# scoreboard objectives add countdown dummy "倒计时"
# scoreboard objectives remove countdown_fast
# scoreboard objectives add countdown_fast dummy "快速倒计时"
# scoreboard objectives remove health
# scoreboard objectives add health health "生命值"
# scoreboard objectives remove health_disp
# scoreboard objectives add health_disp dummy "生命值"
# scoreboard objectives modify health_disp rendertype hearts
# scoreboard objectives remove total_score
# scoreboard objectives add total_score dummy "得分"
# scoreboard objectives remove total_score_disp
# scoreboard objectives add total_score_disp dummy "得分"
# scoreboard objectives remove effect_floating
# scoreboard objectives add effect_floating dummy "悬浮计时"

# # 商店系统记分板
# scoreboard objectives add gold dummy "金粒"
# scoreboard objectives add gold_total dummy "总金粒"
# scoreboard objectives add green dummy "绿宝石"
# scoreboard objectives add green_total dummy "总绿宝石"
# scoreboard objectives add buy_trigger trigger "触发器_购买物品"
# scoreboard objectives add shop_arrow dummy "箭升级"
# scoreboard objectives add shop_potion dummy "药水升级"
# scoreboard objectives add shop_apple dummy "苹果升级"
# scoreboard objectives add shop_armor dummy "护甲升级"
# scoreboard objectives add shop_weapon dummy "武器升级"
# scoreboard objectives add shop_orange dummy "活跃橙升级"
# scoreboard objectives add shop_potion_spd dummy "速度药水升级"
# scoreboard objectives add shop_potion_rst dummy "抗性药水升级"
# scoreboard objectives add shop_bow dummy "弓升级"
# scoreboard objectives add shop_firework dummy "烟花"
# scoreboard objectives add shop_bgm dummy "BGM"
# scoreboard objectives add shop_pig dummy "猪叫"
# scoreboard objectives add shop_easter_egg dummy "臭彩蛋"
# scoreboard objectives add shop_particle_s dummy "粒子效果系统"
# scoreboard objectives add shop_particle_2 dummy "粒子效果2"
# scoreboard objectives add shop_particle_3 dummy "粒子效果3"
# scoreboard objectives add shop_particle_4 dummy "粒子效果4"
# scoreboard objectives add shop_particle_5 dummy "粒子效果5"
# scoreboard objectives add shop_particle_6 dummy "粒子效果6"
# scoreboard objectives add particle_type dummy "粒子种类"
# scoreboard objectives add shop_dice dummy "骰子"
# scoreboard objectives add stat_total dummy "总场次"
# scoreboard objectives add stat_win dummy "总胜场"

# scoreboard players set #mini_total mem 5

# # 进度
# advancement revoke @a only lib:damage_dealt
# advancement revoke @a only lib:damage_taken
# advancement revoke @a only item:special/consume_enchanted_apple
# advancement revoke @a only item:special/consume_golden_apple

# # 其他模块
# function mini:main/init
# function lib:bossbar/init

# # 重置随机数组
# data modify storage ltw:mini types set value []
# data modify storage ltw:mini qualities set value []
# data modify storage ltw:mini colormatch.types set value []
