# 范围检测
execute if score @s setup_trigger matches 1.. at @s unless entity @s[x=-100,z=-100,y=200,dx=200,dy=200,dz=200] run scoreboard players set @s setup_trigger 0

# 第一部分
execute if score @s setup_trigger matches 1 run function ltw:state/0/setup/fail
execute if score @s setup_trigger matches 2 run tp @s 11.5 300.2 -48.0 180 0

# 第二部分
execute if score @s setup_trigger matches 11 run function ltw:state/0/setup/fail
execute if score @s setup_trigger matches 12 run function ltw:state/0/setup/orange
execute if score @s setup_trigger matches 99 run function ltw:state/0/setup/finish

# 重置
scoreboard players set @s setup_trigger 0
scoreboard players enable @s setup_trigger
