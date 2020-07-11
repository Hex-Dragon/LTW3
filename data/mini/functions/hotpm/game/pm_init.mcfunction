# 刷新自己土豆
function mini:hotpm/game/pm_get

# 告知玩家
tellraw @a ["",{"text":">> ","color":"red","bold": true},{"selector":"@s","color":"red"}," 幸运地获得了美味的土豆!"]

# 土豆爆炸时间 = 2 * 存活人数 + 4（秒）
scoreboard players set $countdown_fast mem 40
execute as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 20

# 删除效果云
kill @s[type=area_effect_cloud,tag=pm_boom]