# 初始化幻翼地图
forceload add 1000 6000 1064 6064

scoreboard players set $finish_mode mem 0

# 生成地图
# TODO : <! 紧急> [010/HIM] 把地图生成写了

# 清理残余实体
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=phantom]
kill @e[type=trident]

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify player friendlyFire false
team modify player collisionRule never
gamerule fallDamage false
