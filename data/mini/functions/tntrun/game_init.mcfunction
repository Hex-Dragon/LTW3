# 初始化 TNT Run 地图
forceload add 1000 2000 1050 2050

scoreboard players set $finish_mode mem 0

# 生成地图
setblock 1000 10 2000 minecraft:structure_block{mode:"LOAD",name:"mini:tntrun"}
setblock 1000 11 2000 minecraft:redstone_block

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[tag=tntrun_block]
kill @e[type=trident]

# 生成奖励
execute positioned 1011.5 15.5 2011.5 run function item:bonus_item/gameparty/normal/white

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify player friendlyFire true
team modify player collisionRule always
gamerule fallDamage false
