scoreboard players set $randarray_max mem 12
scoreboard players operation $randarray_last mem = $color_match_floor mem
function lib:randarray/call
data modify storage ltw:mini colormatch.types set from storage lib:randarray out