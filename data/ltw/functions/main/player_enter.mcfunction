# 当玩家加入游戏时触发

# 存储 UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 初始化重生点
spawnpoint @s -29 39 -78

# 如果在主大厅
execute if score $state mem matches 0 run function ltw:state/0/player_enter


# TODO: 未完成的重构
## 如果是旁观者或局号不对头：开始旁观
#execute if entity @s[team=!playing] run function ltw:main/player_enter_watcher
#execute if entity @s[team=playing] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
## 如果不是旁观且局号正确：游戏中掉线
#execute if entity @s[team=playing] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

#execute as @a at @s run function lib:sounds/hit

# 更新 Bossbar
#bossbar set ltw:notice players @a
#function lib:bossbar/show

# 处理进度
#advancement revoke @s only lib:damage_dealt
#advancement revoke @s only lib:damage_taken
#advancement revoke @s only item:special/consume_enchanted_apple
#advancement revoke @s only item:special/consume_golden_apple
