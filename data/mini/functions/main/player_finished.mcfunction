# 玩家成功时由玩家自己触发

# 成功提示与计数
tag @s remove mini_running
scoreboard players set $t_finish mem 0
execute as @a[tag=!mini_running] run scoreboard players add $t_finish mem 1
tellraw @a [{"selector": "@s","color":"green"}," 已成功! 已完成 ",{"score": {"name": "$finish","objective": "mem"}}," 人!"]

# 记录名次
# UNDONE

# 进入旁观
gamemode spectator @s
spectate @r[tag=mini_running]

# 如果有三个玩家成功，则游戏结束
execute if score $t_finish mem matches 3.. run function mini:main/game_end