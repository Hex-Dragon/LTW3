# 如果需要对玩家启用 TNT Run 模块，则给予其 tntrun_pc 标签
tag @a add tntrun_pc

# 以下为检测并控制方块消失的命令
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..0.1] remove tntrun_edge
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~-0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~-0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:air positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..1.51] remove tntrun_edge
scoreboard players add @e[tag=tntrun_as] tntrun_timer 1
# 修改下面这一行的数字以调整方块消失的延迟（刻）
execute as @e[tag=tntrun_as,scores={tntrun_timer=12}] at @s run setblock ~ ~ ~ air
execute as @e[tag=tntrun_as] at @s unless block ~ ~ ~ minecraft:cyan_terracotta run kill @s
execute as @e[tag=tntrun_edge] at @s unless entity @a[tag=tntrun_pc,distance=..1.51] run kill @s