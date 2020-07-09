say 刷土豆了
# 将土豆刷新给离自己最远的人
execute at @s as @a[sort=furthest,tag=mini_running,tag=!watcher,limit=1] run function mini:hotpm/pm_get

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_hoding]","color":"yellow","bold":false},{"text":" 获得了土豆！","color":"white","bold":false}]

# 土豆爆炸时间 = 5 * (存活人数 + 1)
scoreboard players set $countdown mem 5
execute as @a[tag=mini_running] run scoreboard players add $countdown mem 5

# 删除效果云
kill @s[type=area_effect_cloud,tag=pm_boom]