# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

advancement revoke @s only lib:damage_dealt
advancement revoke @s only lib:damage_taken
advancement revoke @s only item:container/place
advancement revoke @s only item:special/consume_enchanted_apple
advancement revoke @s only item:special/consume_golden_apple

execute as @a at @s run function lib:sounds/hit

# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 如果是旁观者或局号不对头：开始旁观
execute if entity @s[team=!playing] run function ltw:main/player_enter_watcher
execute if entity @s[team=playing] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
# 如果不是旁观且局号正确：游戏中掉线
execute if entity @s[team=playing] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

# 更新 Bossbar
bossbar set ltw:notice players @a
function lib:bossbar/show

# 无指定人员
# FIXME: 如果服务器异常关闭，玩家在再次加入的时候不会触发进入事件（由于没有离开游戏计数）
# FIXME: 通过在每次进入阶段 3 时 kill 使用过不死图腾的玩家来解决不死图腾假死
# FIXME: {贸易} 确认是否能进行三次交易？
# FIXME: 如果玩家隐身，则不显示尾迹

# 龙猫
# TODO: {钻石/贸易} 减少水；分别刷出不同的额外方块；增加一个池子
# TODO: {土豆} 移除黄色指示器
# TODO: 确认玩家看不到隐身玩家
# FIXME: 再次确认音乐 Bug，是否不能在同 tick 执行？
# FIXME: {钻石} 玩家会列入钻石的记分板（由于在 belowName 里显示）

# HIM
# FIXME: 让老板不能通过修改触发器进行交易
