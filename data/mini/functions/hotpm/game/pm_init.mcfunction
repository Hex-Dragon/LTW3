# 刷新自己土豆
function mini:hotpm/game/pm_get

# 告知玩家
tellraw @a ["",{"text":">> ","color":"red","bold": true},{"selector":"@s","color":"red"}," 获得了炸弹!"]

# 土豆爆炸时间 = 存活人数 * 2 + 5（秒）
scoreboard players set $countdown_fast mem 50
execute as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 20
scoreboard players operation $countdown_max mem = $countdown_fast mem

# 删除效果云
kill @s[type=area_effect_cloud,tag=pm_boom]