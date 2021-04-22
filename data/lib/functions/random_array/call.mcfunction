#inputs:
#   $array_max mem   生成 1~max 的随机数列（如果有去重则不包含 $array_last）
#   $array_last mem  上一个数列的末尾，如果不需要去重则为0
#output: storage lib:random_array out

data modify storage lib:random_array out set value []
execute if score $array_max mem matches 1.. run function lib:random_array/recu
execute as @e[tag=randarray_marker] if score @s mem = $array_last mem run kill @s
execute as @e[tag=randarray_marker,sort=random] run function lib:random_array/add

# tellraw @a ["新随机数组已生成：",{"nbt": "out","storage": "lib:random_array"},"，去重：",{"score": {"name": "$array_last","objective": "mem"}}]
