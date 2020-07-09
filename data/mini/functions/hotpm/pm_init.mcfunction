# 清理残余tag
tag @a[tag=pm_hoding] remove pm_hoding

# 刷新土豆
execute as @a[limit=1,sort=furthest,tag=mini_running] run function mini:hotpm/pm_get

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_hoding]","color":"yellow","bold":false},{"text":" 获得了土豆！","color":"white","bold":false}]

# 土豆爆炸时间 = 5 * (存活人数 + 1)
scoreboard players set $countdown mem 5
execute as @a[tag=mini_running] run scoreboard players add $countdown mem 5