#tag @a remove tntrun_pc
tag @a add tntrun_pc
#[x=401,y=3,z=-250,dx=20,dz=30,dy=29]

execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..0.1] remove tntrun_edge
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as"],Invisible:1b,Marker:1b}

execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~-0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~-0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Marker:1b}
execute as @a[tag=tntrun_pc,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:air positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..1.5] remove tntrun_edge

scoreboard players add @e[tag=tntrun_as] tntrun_timer 1
execute as @e[tag=tntrun_as,scores={tntrun_timer=12}] at @s run setblock ~ ~ ~ air
execute as @e[tag=tntrun_as] at @s unless block ~ ~ ~ minecraft:cyan_terracotta run kill @s
execute as @e[tag=tntrun_edge] at @s unless entity @a[tag=tntrun_pc,distance=..1.51] run kill @s