# 第一次初始化土豆
tag @a[tag=!mini_running] add max_uncounted
function ltw:main/get_max_score
tag @a[tag=max_uncounted] remove max_uncounted
execute as @a[tag=mini_running] if score @s total_score = #score_max mem run tag @s add mini_hotpm_top
execute as @a[tag=mini_hotpm_top,limit=1,sort=random] run function mini:hotpm/game/pm_init
tag @a[tag=mini_hotpm_top] remove mini_hotpm_top