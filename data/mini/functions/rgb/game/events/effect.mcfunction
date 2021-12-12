# as rule marker
# with rgb_op

data modify entity @s data.effect set from entity @s data.events[{type:"effect"}].value

execute if entity @s[nbt={data:{effect:"levitation_1_10"}}] run effect give @a[tag=rgb_op] minecraft:levitation 1 10