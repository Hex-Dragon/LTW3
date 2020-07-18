# 给予效果并设置分数
execute unless score @s countdown matches 1.. run effect give @s resistance 2 4
execute unless score @s countdown matches 1.. run effect give @s speed 2 1
execute unless score @s countdown matches 1.. run scoreboard players set @s countdown 3
