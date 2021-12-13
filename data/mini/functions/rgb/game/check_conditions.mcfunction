# 位置相关
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_air"}]}}] run function mini:rgb/game/conditions/on_air
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"in_air"}]}}] run function mini:rgb/game/conditions/in_air
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_ground"}]}}] run function mini:rgb/game/conditions/on_ground
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"in_water"}]}}] run function mini:rgb/game/conditions/in_water
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_pumpkin"}]}}] run function mini:rgb/game/conditions/on_pumpkin
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_ice"}]}}] run function mini:rgb/game/conditions/on_ice
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_grass_block"}]}}] run function mini:rgb/game/conditions/on_grass_block
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"smokey"}]}}] run function mini:rgb/game/conditions/smokey
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"in_fire"}]}}] run function mini:rgb/game/conditions/in_fire

# 操作相关
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"shift"}]}}] run function mini:rgb/game/conditions/shift
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"obtain_rule"}]}}] run function mini:rgb/game/conditions/obtain_rule
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"place_rule"}]}}] run function mini:rgb/game/conditions/place_rule
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"destroy_rule"}]}}] run function mini:rgb/game/conditions/destroy_rule
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"dig_ice"}]}}] run function mini:rgb/game/conditions/dig_ice
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"take_damage"}]}}] run function mini:rgb/game/conditions/take_damage
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"on_fire"}]}}] run function mini:rgb/game/conditions/on_fire

# 分数相关
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"red_ge"}]}}] run function mini:rgb/game/conditions/red_ge
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"green_ge"}]}}] run function mini:rgb/game/conditions/green_ge
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"blue_ge"}]}}] run function mini:rgb/game/conditions/blue_ge
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"red_l"}]}}] run function mini:rgb/game/conditions/red_l
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"green_l"}]}}] run function mini:rgb/game/conditions/green_l
execute as @e[type=marker,tag=rgb_rule,nbt={data:{enable:1b,conditions:[{type:"blue_l"}]}}] run function mini:rgb/game/conditions/blue_l