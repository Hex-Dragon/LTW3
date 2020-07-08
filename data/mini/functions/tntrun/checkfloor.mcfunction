#as player at @s positioned ~ ~-1 ~
# 以下为检测并控制方块消失的命令
execute if block ~ ~ ~ #mini:tntrun_floor align xyz run tag @e[tag=tntrun_edge,dx=0,dy=0,dz=0] remove tntrun_edge
execute if block ~ ~ ~ #mini:tntrun_floor align xyz unless entity @e[tag=tntrun_as,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Tags:["tntrun_as"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,}
execute positioned ~0.31 ~ ~0.31 if block ~ ~ ~ #mini:tntrun_floor align xyz unless entity @e[tag=tntrun_as,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Tags:["tntrun_as","tntrun_edge"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,}
execute positioned ~-0.31 ~ ~-0.31 if block ~ ~ ~ #mini:tntrun_floor align xyz unless entity @e[tag=tntrun_as,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Tags:["tntrun_as","tntrun_edge"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,}
execute positioned ~0.31 ~ ~-0.31 if block ~ ~ ~ #mini:tntrun_floor align xyz unless entity @e[tag=tntrun_as,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Tags:["tntrun_as","tntrun_edge"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,}
execute positioned ~-0.31 ~ ~0.31 if block ~ ~ ~ #mini:tntrun_floor align xyz unless entity @e[tag=tntrun_as,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Tags:["tntrun_as","tntrun_edge"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,}
execute if block ~ ~ ~ minecraft:air align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=tntrun_edge,distance=..1.51] remove tntrun_edge
