# 第一次初始化土豆
scoreboard players set $temp_07e3c mem -2147483648
execute as @a[tag=mini_running] run function mini:hotpm/game/get_max_score
execute as @a[tag=mini_running] if score @s mini_score = $temp_07e3c mem run tag @s add mini_hotpm_top
execute as @a[tag=mini_hotpm_top,limit=1,sort=random] run function mini:hotpm/game/pm_init
tag @a[tag=mini_hotpm_top] remove mini_hotpm_top