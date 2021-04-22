summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["randarray_marker","randarray_marker_"]}
scoreboard players operation @e[tag=randarray_marker_] mem = $array_max mem
tag @e[tag=randarray_marker_] remove randarray_marker_
scoreboard players remove $array_max mem 1
execute if score $array_max mem matches 1.. run function lib:random_array/recu