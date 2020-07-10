# 玩家失败

tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold": false},{"text":" 爆炸了！","color":"white","bold": false}]
# 玩家失去土豆
function mini:hotpm/game/pm_lost
# 特效
summon minecraft:creeper ~ ~-1 ~ {ignited:1,ExplosionRadius:1,Fuse:0,Invulnerable:1}
particle minecraft:explosion ~ ~1 ~ 0.4 0.4 0.4 0 5
# 记录位置
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["pm_boom"]}
# 减少生命
function mini:hotpm/player_lose_heart
# 选新土豆
execute if score $alive mem matches 2.. as @e[type=area_effect_cloud,tag=pm_boom] run function mini:hotpm/game/pm_init
