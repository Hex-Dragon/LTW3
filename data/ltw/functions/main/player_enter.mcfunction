# 当玩家加入游戏时触发

# 如果未开始游戏，拖回等待大厅
execute if score $state mem matches 0 run function ltw:state/0/player_enter

# 如果已开始游戏
#   如果玩家是旁观者
#     如果