# 玩家失败时由玩家自己触发

tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_holding]","color":"gold"}," 爆炸了!"]
# 增加tag
tag @a[tag=pm_holding] add pm_explode_last

# 特效
execute at @a[tag=pm_holding] run summon minecraft:creeper ~ ~-1 ~ {ignited:1,ExplosionRadius:1,Fuse:0,Invulnerable:1}
execute at @a[tag=pm_holding] run particle minecraft:explosion ~ ~1 ~ 0.4 0.4 0.4 0 5
# 减少生命
execute as @a[tag=pm_holding] run function mini:main/player_lose_heart
# 玩家失去土豆
execute as @a[tag=pm_holding] run function mini:hotpm/game/pm_lost

# 强制观战
# execute at @s as @a[gamemode=spectator,distance=..0.1] run spectate @p[tag=pm_holding]