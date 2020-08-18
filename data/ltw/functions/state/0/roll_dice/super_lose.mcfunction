scoreboard players set @s gold 0
function item:shop/refresh_gold
scoreboard players set @s temp 0
tag @a remove self
tag @s add self
tellraw @a[tag=!self] ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 非到了一个境界，倾家荡产，被老板丢出了赌博房！"]
tp @s 20 23 -58
