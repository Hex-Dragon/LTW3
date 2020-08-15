# 控制方块消失

# 修改下面这一行的数字以调整方块消失的延迟（单位为 2 刻，设置为 5 则为 10tick）
execute as @e[tag=tntrun_block,scores={tntrun_timer=5}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[tag=tntrun_block] tntrun_timer 1
execute as @e[tag=tntrun_block] at @s unless block ~ ~ ~ #mini:tntrun_floor run kill @s
execute as @e[tag=tntrun_edge] at @s unless entity @a[tag=tntrun_pc,distance=..1.51] run kill @s