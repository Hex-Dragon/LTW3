#玩家失败
function mini:hotpm/pm_lost
#记录位置
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["pm_boom"],Age: -2147483648, Duration: -1, WaitTime: -2147483648}
#去除tag
function mini:hotpm/player_failed
#选新土豆
execute if score $t_alive mem matches 2.. as @e[type=area_effect_cloud,tag=pm_boom] run function mini:hotpm/pm_init

