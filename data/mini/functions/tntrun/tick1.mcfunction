# 如果需要对玩家启用 TNT Run 模块，则给予其 tntrun_pc 标签
tag @a add tntrun_pc

# 以下为检测并控制方块消失的命令
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ run function mini:tntrun/checkfloor

# 修改下面这一行的数字以调整方块消失的延迟（刻）
# tntrun_timer=12
execute as @e[tag=tntrun_as,scores={tntrun_timer=12}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[tag=tntrun_as] tntrun_timer 1
execute as @e[tag=tntrun_as] at @s unless block ~ ~ ~ #mini:tntrun_floor run kill @s
execute as @e[tag=tntrun_edge] at @s unless entity @a[tag=tntrun_pc,distance=..1.51] run kill @s