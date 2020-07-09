# 当玩家加入游戏时触发

# 如果未开始游戏，拖回等待大厅
execute if score $state mem matches 0 run function ltw:state/0/player_enter

# 如果已开始游戏
#   如果是旁观者或局号不对头：开始旁观
execute if score $state mem matches 1.. if entity @s[tag=watcher] run function ltw:main/player_enter_watcher
execute if score $state mem matches 1.. if entity @s[tag=!watcher] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
#   如果不是旁观且局号正确：游戏中掉线
execute if score $state mem matches 1.. if entity @s[tag=!watcher] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin