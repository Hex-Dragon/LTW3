# 土豆倒计时
title @a[tag=pm_hoding] actionbar [{"text":"土豆爆炸: ","color":"red","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]
title @a[tag=!pm_hoding] actionbar [{"text":"土豆爆炸: ","color":"green","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]

# 爆炸
execute if score $countdown_fast mem matches 0 as @a[tag=pm_hoding] at @s run function mini:hotpm/game/pm_boom
