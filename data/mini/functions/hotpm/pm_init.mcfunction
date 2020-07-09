#清理残余tag
tag @a[tag=pm_hoding] remove pm_hoding

#刷新土豆
execute as @r[tag=mini_running] run function mini:hotpm/pm_get

#告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_hoding]","color":"yellow","bold":false},{"text":" 获得了土豆！","color":"white","bold":false}]

#初始土豆计分（土豆爆炸时间）
scoreboard players set $countdown mem 30