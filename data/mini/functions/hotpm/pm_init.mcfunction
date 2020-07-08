#清理残余tag
tag @a[tag=hpm_holding] remove hpm_holding

#刷新土豆
execute as @r[tag=mini_running] run function mini:hotpm/pm_get

#告知玩家
tellraw @a [{"text":">> ","color":"red"},{"selector":"@a[tag=hpm_holding]","color":"green"},{"text":"获得了土豆！","color":"gold"}]

#初始土豆计分（土豆爆炸时间）
scoreboard players set $hotpm_timer mem 30