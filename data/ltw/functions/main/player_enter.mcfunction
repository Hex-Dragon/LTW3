# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

# TODO: v0.3 升级函数
execute if entity @s[tag=!v02upgrade,scores={gold_total=1..}] run function ltw:main/player_upgrade
tag @s add v02upgrade

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

# TODO: https://shimo.im/docs/8dQtWhYp8rJhRRWG
# FIXME: <! 重要> [010] 已确认确实可以用钓鱼竿获得两个奖励
# TODO: [LTCat/HIM] 土豆的两个炸弹同时爆炸把两个人炸死，让他们俩并列第三（按存活回合数记分）
# FIXME: [HIM] 死亡复活后可能会捡到已经在地上待了很久的 “老物品”
# FIXME: <! 重要> [HIM] 锁定格子的物品会被带进其他小游戏
# FIXME: [LTCat] BGM 可能会双响
# FIXME: 关掉 JourneyMap 的生物雷达