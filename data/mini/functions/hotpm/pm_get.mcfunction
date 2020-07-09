# 玩家获得土豆时执行
tag @s add pm_hoding

effect clear @s speed
effect clear @s jump_boost
effect give @s glowing 1000000 0 true
effect give @s speed 1000000 1 true
effect give @s jump_boost 1000000 2 true

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold":false},{"text":" 获得了土豆！","color":"white","bold":false}]
