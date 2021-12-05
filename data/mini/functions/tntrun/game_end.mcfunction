# 清理残余实体
function mini:main/kill_entity
kill @e[tag=tntrun_block]

# 结束 TNT Run
forceload remove 1000 2000 1050 2050

# 清理残余实体
kill @e[tag=tntrun_block]

# 清理玩家标签
tag @a remove tntrun_pc