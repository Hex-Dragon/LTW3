# 计算权重
scoreboard players reset @a temp
execute as @a[team=!debugging] run scoreboard players operation @s temp = @s mini_heart
execute as @a[team=!debugging] run scoreboard players operation @s temp *= #100 mem
execute as @a[team=!debugging] run scoreboard players operation @s temp += @s total_score_disp
scoreboard players add @a[tag=!pm_explode_last] temp 10000

# 寻找最高分
tag @a[tag=!mini_running] add max_uncounted
tag @a[tag=pm_holding] add max_uncounted
function mini:main/get_max_temp

# 给予土豆
execute as @a[tag=!max_uncounted] if score @s temp = #score_max mem run tag @s add pm_list
execute as @a[tag=pm_list,sort=random,limit=1] run function mini:hotpm/game/pm_get
tag @a[tag=pm_list] remove pm_list

# 处理tag与分数
tag @a[tag=max_uncounted] remove max_uncounted
scoreboard players remove $new_potato_count mem 1
execute if score $new_potato_count mem matches 1.. run function mini:hotpm/game/pm_give
