# 每 0.25s 执行一次
schedule function ltw:clock/tick5 5t replace

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick5
execute if score $state mem matches 5 run function ltw:state/5/tick5
function ltw:main/tick5

# 死亡触发
execute as @a[scores={death=1..,health=1..}] at @s run function ltw:main/player_death

# 特殊方块给予效果
execute as @a[gamemode=!spectator] if score @s effect_floating matches 1.. run scoreboard players add @s effect_floating 1
execute as @a[gamemode=!spectator] if score @s effect_floating matches 3.. run effect clear @s levitation
execute as @a[gamemode=!spectator] if score @s effect_floating matches 3.. run scoreboard players set @s effect_floating 0
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 1
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 12 true
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 2 0 true
