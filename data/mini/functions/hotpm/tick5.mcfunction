# 传送
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run tp ~ ~17.5 ~
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run function lib:sounds/teleport

# 给持有者播放音效
execute as @a[tag=pm_hoding] at @s run function lib:sounds/creeper
