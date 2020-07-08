# 结束 TNT Run
forceload remove 1000 2000 1050 2050

# 清理残余实体
kill @e[tag=tntrun_block]

# 开启伤害
gamerule fallDamage true
gamerule fireDamage true
