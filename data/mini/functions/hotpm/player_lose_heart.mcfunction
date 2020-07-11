# 玩家失败时由玩家自己触发

tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 爆炸了!"]
# 玩家失去土豆
function mini:hotpm/game/pm_lost
# 特效
summon minecraft:creeper ~ ~-1 ~ {ignited:1,ExplosionRadius:1,Fuse:0,Invulnerable:1}
particle minecraft:explosion ~ ~1 ~ 0.4 0.4 0.4 0 5
# 记录位置
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["pm_boom"]}
# 减少生命
function mini:main/player_lose_heart
# 最远的人新土豆
execute if score $player_alive mem matches 2.. as @e[type=area_effect_cloud,tag=pm_boom] at @s as @a[sort=furthest,tag=mini_running,tag=!watcher,limit=1] run function mini:hotpm/game/pm_init
# 强制观战
execute at @s as @a[gamemode=spectator,distance=..0.1] run spectate @p[tag=pm_holding]