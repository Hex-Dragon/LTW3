# 清理残余tag
tag @a[tag=pm_hoding] remove pm_hoding

# 刷新土豆
execute at @s as @a[sort=furthest,tag=mini_running,limit=1] run function mini:hotpm/pm_get

# 旁观土豆持有者
execute as @a[gamemode=spectator] run spectate @p[tag=pm_hoding]

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_hoding]","color":"yellow","bold":false},{"text":" 获得了土豆！","color":"white","bold":false}]

# 土豆爆炸时间 = 5 * (存活人数 + 1)
scoreboard players set $countdown mem 5
execute as @a[tag=mini_running] run scoreboard players add $countdown mem 5