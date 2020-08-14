# 当玩家加入游戏时触发
team join player @s
bossbar set ltw:notice players @a

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