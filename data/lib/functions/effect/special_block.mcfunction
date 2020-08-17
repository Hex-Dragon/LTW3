# 5tick运行一次 计分板单位5tick
# 钻石：起飞
execute as @a[gamemode=!spectator] if score @s effect_floating matches 1.. run scoreboard players add @s effect_floating 1
execute as @a[gamemode=!spectator] if score @s effect_floating matches 3.. run effect clear @s levitation
execute as @a[gamemode=!spectator] if score @s effect_floating matches 3.. run scoreboard players set @s effect_floating 0
execute as @a[gamemode=!spectator] unless score @s effect_floating matches 1.. at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 12 true
execute as @a[gamemode=!spectator] unless score @s effect_floating matches 1.. at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 2 0 true
execute as @a[gamemode=!spectator] unless score @s effect_floating matches 1.. at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 1
# 绿宝石：回血
execute as @a[gamemode=!spectator] if score @s effect_regen matches 1.. run scoreboard players add @s effect_regen 1
execute as @a[gamemode=!spectator] if score @s effect_regen matches 5.. run effect clear @s regeneration
execute as @a[gamemode=!spectator] if score @s effect_regen matches 5.. run scoreboard players set @s effect_regen 0
execute as @a[gamemode=!spectator] unless score @s effect_regen matches 1.. at @s if block ~ ~-1 ~ emerald_block run effect give @s regeneration 2 2 true
execute as @a[gamemode=!spectator] unless score @s effect_regen matches 1.. at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_regen 1
