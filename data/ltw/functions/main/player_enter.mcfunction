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

# FIXME: [010] 在 init 的时候也重置随机数组
# FIXME: [010] 已确认确实可以用钓鱼竿获得两个奖励
# TODO: [LTCat/HIM] 土豆的两个炸弹同时爆炸把两个人炸死，让他们俩并列第三（按存活回合数记分）
# FIXME: 旁观者在一轮开始时会被切换为冒险模式又切回去，这会造成游戏模式变更提示，鬼知道为啥
# FIXME: [010] 如果有人没领取奖励，可以一直站在上面，在奖励领取阶段结束时再拿到一次
# FIXME: [LTCat] 完成终局迷阵时不会同时完成纷乱迷阵
# FIXME: 把道具放到 “已锁定” 格子导致道具消失