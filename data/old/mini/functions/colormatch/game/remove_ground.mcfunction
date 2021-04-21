# 去除地板
fill 1049 16 3999 1071 16 4021 air replace #mini:colormatch_floor

# 替换方块
execute positioned 1001 11 4000 run clone ~ ~ ~ ~20 ~ ~20 1050 16 4000 filtered #mini:colormatch_floor

# 告知玩家
execute as @a at @s run function lib:sounds/hit2

# 重置分数
scoreboard players set $countdown_fast mem 28
scoreboard players operation $countdown_fast mem < $color_match_time mem
scoreboard players remove $countdown_fast mem 3
scoreboard players set $color_match_type mem 1

# HUD
scoreboard players set $bossbar_color mem 3
scoreboard players operation $countdown_max mem = $countdown_fast mem
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:green name "下一轮"

# 预备下一轮
function mini:colormatch/game/prepare_round
