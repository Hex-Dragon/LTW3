# 爆炸
execute if score $countdown_fast mem matches 0 as @a[tag=pm_holding] at @s run function mini:hotpm/player_lose_heart

# HUD
scoreboard players set $bossbar_color mem 0
scoreboard players set @a[tag=pm_holding] bossbar_color 1
scoreboard players set @a[tag=!pm_holding,distance=..15] bossbar_color 2
scoreboard players set @a[tag=!pm_holding,distance=15..] bossbar_color 3
scoreboard players operation $countdown_max mem = $countdown_fast mem
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:green name "土豆爆炸"
bossbar set mini:yellow name "土豆爆炸"
bossbar set mini:red name "土豆爆炸"
