# 玩家失去土豆时执行
tag @s remove pm_hoding
effect clear @s glowing
effect clear @s speed
effect clear @s jump_boost
effect give @s speed 3 1 true
effect give @s jump_boost 2 1 true

# 告知玩家
tellraw @a [{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"yellow","bold": false},{"text":"爆炸了！","color":"white","bold": false}]