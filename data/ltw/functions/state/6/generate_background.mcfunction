
execute if entity @e[type=item,tag=item_white,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ white_stained_glass
execute if entity @e[type=item,tag=item_white,dx=0,dy=0,dz=0] run setblock ~ ~-3 ~ sea_lantern
execute if entity @e[type=item,tag=item_green,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ lime_stained_glass
execute if entity @e[type=item,tag=item_green,dx=0,dy=0,dz=0] run setblock ~ ~-3 ~ sea_lantern
execute if entity @e[type=item,tag=item_blue,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ light_blue_stained_glass
execute if entity @e[type=item,tag=item_blue,dx=0,dy=0,dz=0] run setblock ~ ~-3 ~ sea_lantern
execute if entity @e[type=item,tag=item_purple,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ magenta_stained_glass
execute if entity @e[type=item,tag=item_purple,dx=0,dy=0,dz=0] run setblock ~ ~-3 ~ sea_lantern
execute unless entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~-2 ~ black_stained_glass
execute unless entity @e[type=item,dx=0,dy=0,dz=0] run setblock ~ ~-3 ~ black_concrete