# 位置相关
execute as @e[type=marker,tag=rgb_rule,nbt={data:{conditions:[{type:"on_air"}]}}] run function mini:rgb/game/conditions/on_air
execute as @e[type=marker,tag=rgb_rule,nbt={data:{conditions:[{type:"on_pumpkin"}]}}] run function mini:rgb/game/conditions/on_pumpkin
execute as @e[type=marker,tag=rgb_rule,nbt={data:{conditions:[{type:"shift"}]}}] run function mini:rgb/game/conditions/shift