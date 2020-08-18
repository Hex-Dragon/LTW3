scoreboard players add @s gold 243
function item:shop/refresh_gold
tag @a remove self
tag @s add self
tellraw @a[tag=!self] ["",{"text":">> ","color":"gold","bold":true},{"selector": "@s","color":"gold"}," 欧到了一个境界，从老板那赢得了3金块！"]