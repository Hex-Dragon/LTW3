# 传送
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run tp @s ~ ~17.5 ~
execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run function lib:sounds/teleport

# 给持有者播放音效
execute as @a[tag=pm_holding] at @s run function lib:sounds/creeper

# HUD
scoreboard players set $bossbar_color mem 0
scoreboard players set @a[tag=pm_holding] bossbar_color 1
scoreboard players set @a[tag=!pm_holding,distance=..15] bossbar_color 2
scoreboard players set @a[tag=!pm_holding,distance=15..] bossbar_color 3
scoreboard players operation $countdown_max mem = $countdown_fast mem
scoreboard players set $bossbar_type mem 1
bossbar set mini:green name "土豆爆炸"
bossbar set mini:yellow name "土豆爆炸"
bossbar set mini:red name "土豆爆炸"
function lib:bossbar/show
