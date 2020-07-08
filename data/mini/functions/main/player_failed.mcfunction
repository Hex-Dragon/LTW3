# 玩家失败时由玩家自己触发

# 失败提示与计数
tag @s remove mini_running
scoreboard players set $temp mem 0
execute as @a[tag=mini_running] run scoreboard players add $temp mem 1
tellraw @a [{"selector": "@s","color":"red"}," 已失败! 剩余 ",{"score": {"name": "$temp","objective": "mem"}}," 人!"]

# 进入旁观
gamemode spectator @s
spectate @r[tag=mini_running]