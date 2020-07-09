summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["randarray_marker","randarray_marker_"]}
scoreboard players operation @e[tag=randarray_marker] mem = $randarray_max mem
scoreboard players remove $randarray_max mem 1
execute if score $randarray_max mem matches 1.. run function lib:randarray/recu