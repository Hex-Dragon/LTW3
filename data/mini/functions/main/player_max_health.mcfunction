# 如小游戏有多条命,需在小游戏中设置给玩家mini_heart生命上限并调用此函数
# 根据玩家mini_heart数量决定生命值上限
execute if score @s mini_heart matches 10 run attribute @s generic.max_health base set 20
execute if score @s mini_heart matches 9 run attribute @s generic.max_health base set 18
execute if score @s mini_heart matches 8 run attribute @s generic.max_health base set 16
execute if score @s mini_heart matches 7 run attribute @s generic.max_health base set 14
execute if score @s mini_heart matches 6 run attribute @s generic.max_health base set 12
execute if score @s mini_heart matches 5 run attribute @s generic.max_health base set 10
execute if score @s mini_heart matches 4 run attribute @s generic.max_health base set 8
execute if score @s mini_heart matches 3 run attribute @s generic.max_health base set 6
execute if score @s mini_heart matches 2 run attribute @s generic.max_health base set 4
execute if score @s mini_heart matches 1 run attribute @s generic.max_health base set 2
