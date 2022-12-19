# 生成单个奖励位置的背景

execute if entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~ ~ light
execute if entity @e[type=item,tag=item_white,dx=0,dy=0,dz=0] run setblock ~ ~-1 ~ black_concrete_powder
execute if entity @e[type=item,tag=item_green,dx=0,dy=0,dz=0] run setblock ~ ~-1 ~ blue_concrete_powder
execute if entity @e[type=item,tag=item_blue,dx=0,dy=0,dz=0] run setblock ~ ~-1 ~ magenta_concrete_powder
execute if entity @e[type=item,tag=item_purple,dx=0,dy=0,dz=0] run setblock ~ ~-1 ~ orange_concrete_powder
execute if entity @e[type=item,tag=item_white,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ gray_stained_glass
execute if entity @e[type=item,tag=item_green,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ light_blue_stained_glass
execute if entity @e[type=item,tag=item_blue,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ magenta_stained_glass
execute if entity @e[type=item,tag=item_purple,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ orange_stained_glass

execute unless entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~ ~ air
execute unless entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~-1 ~ air
execute unless entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ black_stained_glass