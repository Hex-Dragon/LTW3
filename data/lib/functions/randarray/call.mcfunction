#input: $randarray_max mem
#output: storage lib:randarray out

data modify storage lib:randarray out set value []
execute if score $randarray_max mem matches 1.. run function lib:randarray/recu
execute as @e[tag=randarray_marker,sort=random] run function lib:randarray/add