# 玩家失败时由玩家自己触发

# 失败提示与计数
tag @s remove mini_running
scoreboard players set $alive mem 0
execute as @a[tag=mini_running] run scoreboard players add $alive mem 1
tellraw @a [{"selector": "@s","color":"red"}," 已失败! 剩余 ",{"score": {"name": "$alive","objective": "mem"}}," 人!"]

# 记录名次
# UNDONE

# 进入旁观
gamemode spectator @s
spectate @r[tag=mini_running]

# 如果只有一个玩家没有失败，则游戏结束
execute if score $alive mem matches ..1 run function mini:main/game_end