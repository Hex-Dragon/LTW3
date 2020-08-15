# 爆炸
execute if score $countdown_fast mem matches 0 if entity @a[tag=pm_holding] run function mini:hotpm/player_lose_heart

# 检测土豆
function mini:hotpm/game/pm_check

# HUD
scoreboard players set $bossbar_color mem 0
scoreboard players set @a[tag=pm_holding] bossbar_color 1
execute as @p[tag=pm_holding] at @s run scoreboard players set @a[tag=!pm_holding,distance=..12] bossbar_color 2
execute as @p[tag=pm_holding] at @s run scoreboard players set @a[tag=!pm_holding,distance=12..] bossbar_color 3
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:green name "炸弹爆炸"
bossbar set mini:yellow name "炸弹爆炸"
bossbar set mini:red name {"text":"炸弹爆炸","color":"red"}
