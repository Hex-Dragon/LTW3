
# 重置实体
kill @e[type=item]
function ltw:state/0/summon_entity

# 启用节奏跑酷
scoreboard players set $tempo_enable mem 1
function ltw:state/0/parkour/marker_spawn
