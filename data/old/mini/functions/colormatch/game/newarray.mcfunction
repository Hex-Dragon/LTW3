scoreboard players set $array_max mem 8
scoreboard players operation $array_last mem = $color_match_floor mem
function lib:random_array/call
data modify storage ltw:mini colormatch.types set from storage lib:random_array out