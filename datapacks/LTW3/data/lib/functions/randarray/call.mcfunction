#inputs:
#   $randarray_max mem   生成1~max的随机数列,如果有去重则没有last
#   $randarray_last mem  上一个数列的末尾，如果不需要去重则为0
#output: storage lib:randarray out

data modify storage lib:randarray out set value []
execute if score $randarray_max mem matches 1.. run function lib:randarray/recu
execute as @e[tag=randarray_marker] if score @s mem = $randarray_last mem run kill @s
execute as @e[tag=randarray_marker,sort=random] run function lib:randarray/add

# tellraw @a ["新随机数组已生成：",{"nbt": "out","storage": "lib:randarray"},"，去重：",{"score": {"name": "$randarray_last","objective": "mem"}}]
