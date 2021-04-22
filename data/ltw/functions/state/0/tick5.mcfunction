
## 隐藏/显示 骰子房老板的名片
#execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s if entity @a[distance=..5] run data modify entity @s CustomNameVisible set value true
#execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s unless entity @a[distance=..5] run data modify entity @s CustomNameVisible set value false

# 调用节奏方块
function lib:tempo_block/tick5

# ————————————————————————————————————————————————————————————————————————————
#  游戏开始倒计时
# ————————————————————————————————————————————————————————————————————————————

# 检查人数
execute store result score #ready_count mem if entity @a[team=hub_play]
execute store result score #total_count mem if entity @a

# 人数足够，开始倒计时
execute if score #ready_count mem matches 3.. if score $start_countdown mem matches 999.. run tellraw @a [{"text":" ❇ ","color":"green"}," 游戏即将开始， 请使用第一格的物品确定自己是否参与！"]
execute if score #ready_count mem matches 3.. if score $start_countdown mem matches 999.. as @a at @s run function lib:sounds/levelup
execute if score #ready_count mem matches 3.. if score $start_countdown mem matches 999.. run scoreboard players set $start_countdown mem 121

# 人数不足，取消倒计时
execute if score #ready_count mem matches ..2 if score $start_countdown mem matches ..999 run tellraw @a [{"text":" ✖ ","color":"red"}," 准备人数不足， 开始倒计时已取消！"]
execute if score #ready_count mem matches ..2 if score $start_countdown mem matches ..999 as @a at @s run function lib:sounds/error
execute if score #ready_count mem matches ..2 if score $start_countdown mem matches ..999 run scoreboard players set $start_countdown mem 9999999

# 减少倒计时
scoreboard players remove $start_countdown mem 1

# 15s：提示未准备
execute if score $start_countdown mem matches 60 run tellraw @a[team=hub_watch] [{"text":" ❇ ","color":"gold"}," 如果要加入游戏， 请丢出第一格的灰色染料， 否则将会进入旁观模式！"]

# 10s：播放倒计时音效
scoreboard players operation #start_sec mem = $start_countdown mem
scoreboard players operation #start_sec mem /= #4 mem
scoreboard players operation #start_div mem = $start_countdown mem
scoreboard players operation #start_div mem %= #4 mem
execute if score #start_sec mem matches 1..10 if score #start_div mem matches 3 run execute as @a at @s run function lib:sounds/hit2

# 0s：开始游戏
execute if score $start_countdown mem matches 0 run function ltw:state/0/sp/start_game

# 显示 ActionBar 信息
execute if score $start_countdown mem matches 999.. run title @a actionbar [{"text":"","color":"red"},{"score":{"name":"#ready_count","objective":"mem"}},"/",{"score":{"name":"#total_count","objective":"mem"}}," 人已准备 | 需要 3 人以开始游戏"]
execute if score $start_countdown mem matches 1..998 run title @a actionbar [{"text":"","color":"green"},{"score":{"name":"#ready_count","objective":"mem"}},"/",{"score":{"name":"#total_count","objective":"mem"}}," 人已准备 | 游戏将在 ",{"score":{"name":"#start_sec","objective":"mem"}}," 秒后开始"]

# 替换人数过多的警告
scoreboard players operation #start_div mem = $start_countdown mem
scoreboard players operation #start_div mem %= #20 mem
execute if score $start_countdown mem matches 1..998 if score #start_div mem matches 12.. if score #ready_count mem matches 9.. run title @a actionbar {"text":"人数过多， 将随机抽取 8 人进行游戏","color":"yellow"}
