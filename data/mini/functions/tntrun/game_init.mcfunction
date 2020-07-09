# 初始化 TNT Run 地图
forceload add 1000 2000 1050 2050

# 生成地图
setblock 1000 10 2000 minecraft:structure_block{mode:"LOAD",name:"mini:tntrun"}
setblock 1000 11 2000 minecraft:redstone_block

# 清理残余实体
kill @e[tag=tntrun_block]

# 关闭伤害
gamerule fallDamage false
gamerule fireDamage false
