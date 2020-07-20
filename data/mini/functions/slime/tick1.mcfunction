# 反弹
execute as @e[type=slime] at @s if block ~-1.5 ~ ~ lime_concrete store result entity @s Motion[0] double -0.001 run data get entity @s Motion[0] 1000
execute as @e[type=slime] at @s if block ~1.5 ~ ~ lime_concrete store result entity @s Motion[0] double -0.001 run data get entity @s Motion[0] 1000
execute as @e[type=slime] at @s if block ~ ~ ~-1.5 lime_concrete store result entity @s Motion[2] double -0.001 run data get entity @s Motion[2] 1000
execute as @e[type=slime] at @s if block ~ ~ ~1.5 lime_concrete store result entity @s Motion[2] double -0.001 run data get entity @s Motion[2] 1000

# 禁空
execute as @e[type=slime] run data modify entity @s Motion[1] set value 0d