# 检测应该消失的方块
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ run function mini:tntrun/checkfloor

# 修改下面这一行的数字以调整方块消失的延迟（刻）
# tntrun_timer=12
execute as @e[tag=tntrun_block,scores={tntrun_timer=12}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[tag=tntrun_block] tntrun_timer 1
execute as @e[tag=tntrun_block] at @s unless block ~ ~ ~ #mini:tntrun_floor run kill @s
execute as @e[tag=tntrun_edge] at @s unless entity @a[tag=tntrun_pc,distance=..1.51] run kill @s