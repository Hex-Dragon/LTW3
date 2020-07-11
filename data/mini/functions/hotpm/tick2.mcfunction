# 土豆倒计时
title @a[tag=pm_holding] actionbar [{"text":"土豆爆炸: ","color":"red","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]
execute as @a[tag=pm_holding] at @s run title @a[tag=!pm_holding,distance=..8] actionbar [{"text":"土豆爆炸: ","color":"gold","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]
execute as @a[tag=pm_holding] at @s run title @a[tag=!pm_holding,distance=8..17] actionbar [{"text":"土豆爆炸: ","color":"yellow","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]
execute as @a[tag=pm_holding] at @s run title @a[tag=!pm_holding,distance=17..] actionbar [{"text":"土豆爆炸: ","color":"green","bold": true},{"score": { "name": "$countdown_fast","objective": "mem"}}]

# 爆炸
execute if score $countdown_fast mem matches 0 as @a[tag=pm_holding] at @s run function mini:hotpm/player_lose_heart
