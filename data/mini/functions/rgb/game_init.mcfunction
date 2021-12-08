# 初始化地图
forceload add 1000 8000 1032 7032

scoreboard players set $finish_mode mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0

# 生成地图
# TODO

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false
gamerule fallDamage true

# 重置系统
data remove storage ltw:mini rgb
scoreboard players set $ rgb_rule_id 0