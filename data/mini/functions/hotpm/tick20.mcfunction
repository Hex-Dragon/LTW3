#土豆倒计时
execute if score $countdown mem matches 1.. run scoreboard players remove $countdown mem 1
execute if score $countdown mem matches 1.. run title @a actionbar [{"text":"土豆爆炸: ","color":"red"},{"score": { "name": "$countdown","objective": "mem"},"color":"gold"}]
#爆炸
execute if score $countdown mem matches 0 as @a[tag=hpm_holding] run function mini:hotpm/pm_boom