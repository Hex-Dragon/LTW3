# 玩家失败时由玩家自己触发

# 计数
tag @s remove mini_running
scoreboard players set $t_alive mem 0
execute as @a[tag=mini_running] run scoreboard players add $t_alive mem 1
execute if score $t_alive mem matches 1.. run tellraw @a [{"selector": "@s","color":"red"}," 已失败! 剩余 ",{"score": {"name": "$t_alive","objective": "mem"}}," 人!"]

# 给存活的玩家加分
scoreboard players add @a[tag=mini_running] mini_score 1

# 进入旁观
gamemode spectator @s
spectate @r[tag=mini_running]

# 如果只有一个玩家没有失败，则游戏结束
# 这里设置成等于就不会触发多次 game_end 了
execute if score $t_alive mem matches 1 run function mini:main/game_end