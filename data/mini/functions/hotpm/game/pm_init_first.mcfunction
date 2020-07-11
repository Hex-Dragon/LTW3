# 第一次初始化土豆
execute as @a[tag=mini_running] run function mini:main/get_max_score
execute as @a[tag=mini_running] if score @s mini_score = $t_score_max mini_score run tag @s add mini_hotpm_top
execute as @a[tag=mini_hotpm_top,limit=1,sort=random] run function mini:hotpm/game/pm_init
tag @a[tag=mini_hotpm_top] remove mini_hotpm_top