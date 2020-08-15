# 玩家失败时由玩家自己触发

tellraw @a ["",{"text":">> ","color":"red","bold": true},{"selector":"@s","color":"red"}," 爆炸了!"]
# 玩家失去土豆
function mini:hotpm/game/pm_lost

# 增加tag
tag @s add pm_explode_last


# 特效
summon minecraft:creeper ~ ~-1 ~ {ignited:1,ExplosionRadius:1,Fuse:0,Invulnerable:1}
particle minecraft:explosion ~ ~1 ~ 0.4 0.4 0.4 0 5
# 减少生命
function mini:main/player_lose_heart
# 强制观战
# execute at @s as @a[gamemode=spectator,distance=..0.1] run spectate @p[tag=pm_holding]