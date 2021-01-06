
# 显示层数
scoreboard players reset * temp
execute as @a[tag=mini_running] at @s if entity @s[y=35,dy=10] run scoreboard players set @s temp 4
execute as @a[tag=mini_running] at @s if entity @s[y=30,dy=3] run scoreboard players set @s temp 3
execute as @a[tag=mini_running] at @s if entity @s[y=25,dy=3] run scoreboard players set @s temp 2
execute as @a[tag=mini_running] at @s if entity @s[y=20,dy=3] run scoreboard players set @s temp 1
scoreboard players reset * layer
scoreboard players operation @a[tag=mini_running] layer = @s temp

# 进度判断
tag @a[scores={layer=1}] add layer_bottom
advancement grant @a[tag=layer_bottom,scores={layer=4}] only ltw:parkour/tnt3
