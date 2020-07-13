# 初始化僵尸地图
forceload add 1000 5000 1050 5050

scoreboard players set $finish_mode mem 0

# 生成地图
setblock 1000 10 5000 minecraft:structure_block{mode:"LOAD",name:"mini:zombie"}
setblock 1000 11 5000 minecraft:redstone_block

# 清理残余实体
tp @e[tag=mini_mob] ~ -100 ~
tp @e[type=vex] ~ -100 ~

# 初始化附加值
scoreboard players set $zombie_luck mem 0

# 伤害管理
team modify player friendlyFire false
team modify player collisionRule always
gamerule fallDamage false
