# 初始化跑酷地图
forceload add 1000 1000 1050 1050

scoreboard players set $finish_mode mem 1

# 生成地图
setblock 1000 10 1000 minecraft:structure_block{mode:"LOAD",name:"mini:parkour"}
setblock 1000 11 1000 minecraft:redstone_block

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]

# 伤害管理
team modify player friendlyFire true
team modify player collisionRule never
gamerule fallDamage false
