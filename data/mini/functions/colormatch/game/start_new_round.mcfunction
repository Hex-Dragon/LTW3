# 替换墙壁
function mini:colormatch/game/replace_wall
# 复制地板
execute positioned 1001 10 4000 run clone ~ ~ ~ ~20 ~ ~20 1050 16 4000 filtered #mini:colarmatch_floor

# 设置倒计时
execute if score $color_match_time mem matches 20.. run scoreboard players remove $color_match_time mem 4
execute if score $color_match_time mem matches ..19 run scoreboard players remove $color_match_time mem 2
execute if entity @a[tag=color_match_fall] run scoreboard players add $color_match_time mem 5
execute if score $color_match_time mem matches 30.. run scoreboard players remove $color_match_time mem 3
execute if score $color_match_time mem matches ..10 run scoreboard players set $color_match_time mem 11
scoreboard players operation $countdown_fast mem = $color_match_time mem

# 重置分数
scoreboard players set $color_match_type mem 0

# 拉玩家下来
execute as @a[tag=color_match_fall] at @s run tp @s ~ 19 ~
execute as @a[tag=color_match_fall] at @s run function lib:sounds/teleport
execute if entity @a[tag=color_match_fall] run scoreboard players add $countdown_fast mem 5
tag @a[tag=color_match_fall] remove color_match_fall

# 告知玩家
execute as @a at @s run function lib:sounds/hit

# HUD
scoreboard players set $bossbar_color mem 1
scoreboard players operation $countdown_max mem = $countdown_fast mem
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:red name "地板消失"

# 更新地板方块
scoreboard players operation $color_match_current mem = $color_match_floor mem
execute as @a[team=!debugging] run function mini:colormatch/game/show_floor_block