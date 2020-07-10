#玩家失败
function mini:hotpm/game/pm_lost
# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold": false},{"text":" 爆炸了！","color":"white","bold": false}]
#记录位置
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["pm_boom"]}
#减少生命
function mini:hotpm/player_failed
#选新土豆
execute if score $alive mem matches 2.. as @e[type=area_effect_cloud,tag=pm_boom] run function mini:hotpm/game/pm_init
