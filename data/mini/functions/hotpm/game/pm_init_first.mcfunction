# 第一次初始化土豆
execute as @a[tag=mini_running] run function mini:main/get_max_score
execute as @a[tag=mini_running,limit=1,sort=random] if score @s mini_score = $t_score_max mini_score run function mini:hotpm/game/pm_init