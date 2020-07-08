tag @a remove tntrun_pc
tag @a[x=401,y=3,z=-250,dx=20,dz=30,dy=29,nbt={OnGround:1b}] add tntrun_pc

execute as @a[tag=tntrun_pc] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:air positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..1.5] remove tntrun_edge
execute as @a[tag=tntrun_pc] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..0.1] remove tntrun_edge
execute as @a[tag=tntrun_pc] at @s positioned ~ ~-1 ~ align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as"],Invisible:1b,Small:1b,Marker:1b}

execute as @a[tag=tntrun_pc] at @s positioned ~0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Small:1b,Marker:1b}
execute as @a[tag=tntrun_pc] at @s positioned ~-0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Small:1b,Marker:1b}
execute as @a[tag=tntrun_pc] at @s positioned ~0.31 ~-1 ~-0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Small:1b,Marker:1b}
execute as @a[tag=tntrun_pc] at @s positioned ~-0.31 ~-1 ~0.31 align xyz if block ~ ~ ~ minecraft:cyan_terracotta positioned ~0.5 ~ ~0.5 unless entity @e[tag=tntrun_as,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tntrun_as","tntrun_edge"],Invisible:1b,Small:1b,Marker:1b}

execute as @e[tag=tntrun_as] at @s if block ~ ~ ~ minecraft:cyan_terracotta run scoreboard players add @s tntrun_test 1
execute as @e[tag=tntrun_as] at @s if block ~ ~ ~ minecraft:cyan_terracotta if score @s tntrun_test matches 12 run fill ~ ~ ~ ~ ~ ~ air replace minecraft:cyan_terracotta
execute as @e[tag=tntrun_as] at @s unless block ~ ~ ~ minecraft:cyan_terracotta run kill @s
execute as @e[tag=tntrun_edge] at @s positioned ~ ~1 ~ unless entity @a[tag=tntrun_pc,distance=..1.2] run kill @s
