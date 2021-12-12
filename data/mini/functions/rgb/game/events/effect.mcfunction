# as rule marker
# with rgb_op

data modify entity @s data.effect set from entity @s data.events[{type:"effect"}].value

execute if entity @s[nbt={data:{effect:"levitation_1_10"}}] run effect give @a[tag=rgb_op] minecraft:levitation 1 10

execute if entity @s[nbt={data:{effect:"haste_1_2"}}] run effect give @a[tag=rgb_op] minecraft:haste 1 2

execute if entity @s[nbt={data:{effect:"speed_1_1"}}] run effect give @a[tag=rgb_op] minecraft:speed 1 1

execute if entity @s[nbt={data:{effect:"jump_boost_1_1"}}] run effect give @a[tag=rgb_op] minecraft:jump_boost 1 1