# 初始化僵尸地图
forceload add 1000 5000 1050 5050

scoreboard players set $finish_mode mem 0
scoreboard players set $remove_resistance mem 1

# 生成地图
setblock 1000 10 5000 minecraft:structure_block{mode:"LOAD",name:"mini:zombie"}
setblock 1000 11 5000 minecraft:redstone_block

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
tp @e[tag=mini_mob] ~ -100 ~

# 伤害管理
team modify player friendlyFire false
team modify player collisionRule always
gamerule fallDamage false
