scoreboard players set $randarray_max mem 3
function lib:randarray/call
data modify storage ltw:mini types set from storage lib:randarray out
execute store result score $temp_49d0 mem run data get storage ltw:mini types[0]
execute if score $temp_49d0 mem = $mini_type mem run data remove storage ltw:mini types[0]