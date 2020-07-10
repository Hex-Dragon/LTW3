# 初始化跑酷地图
forceload add 1000 1000 1050 1050

scoreboard players set $finish_mode mem 1

# 生成地图
setblock 1000 10 1000 minecraft:structure_block{mode:"LOAD",name:"mini:parkour"}
setblock 1000 11 1000 minecraft:redstone_block

# 关闭伤害
gamerule fallDamage false
