# 当玩家加入游戏时触发
team join player @s

advancement revoke @s only lib:damage_dealt
advancement revoke @s only lib:damage_taken
advancement revoke @s only item:container/place
advancement revoke @s only item:special/consume_enchanted_apple
advancement revoke @s only item:special/consume_golden_apple

execute as @a at @s run function lib:sounds/hit

# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 如果是旁观者或局号不对头：开始旁观
execute if entity @s[tag=watcher] run function ltw:main/player_enter_watcher
execute if entity @s[tag=!watcher] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
# 如果不是旁观且局号正确：游戏中掉线
execute if entity @s[tag=!watcher] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

# 更新 Bossbar
bossbar set ltw:notice players @a
function lib:bossbar/show

# TODO: [LTCat] 将开始准备延长到 30s
# FIXME: [LTCat] 旁观者在游戏开局的时候似乎会看到 2 然后 ding
# FIXME: [LTCat] TNT Run 可能出生直接掉到第二层（spread 范围或直接在石头里？
# FIXME: [010] 在 init 的时候也重置随机数组
# FIXME: [010] 已确认确实可以用钓鱼竿获得两个奖励
# FIXME: [HIM] 反馈：色彩迷阵如果正好在切换轮次的时候死亡，就会一直卡在天上不会下来（未验证
# FIXME: [HIM] 反馈：在色彩迷阵中丢出地板方块，物品会一直跟着你（未验证
# FIXME: [HIM] 反馈：在色彩迷阵中按 F 把地板方块拿到副手就不会被清理（未验证