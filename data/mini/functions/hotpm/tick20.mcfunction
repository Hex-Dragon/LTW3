#土豆倒计时
scoreboard players remove $hotpm_timer mem 1
title @a subtitle {"score": { "name": "$hotpm_timer","objective": "mem"}}
#爆炸
execute if score $hotpm_timer mem matches ..0 as @a[tag=hpm_holding] run function mini:hotpm/pm_boom