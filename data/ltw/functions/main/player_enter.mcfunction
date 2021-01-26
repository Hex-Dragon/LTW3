# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

# TODO: v0.3 升级函数
execute if entity @s[tag=!v02upgrade,scores={stat_total=1..}] run function ltw:main/player_upgrade
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

# 010
# TODO: 升级 1.16.5（不过得先等 OptiFine 更新）
# TODO: {幻翼} 制作幻翼的成品地图
