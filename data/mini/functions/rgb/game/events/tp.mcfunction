# as rule marker
# with rgb_op

execute store result score #rgb_tp rgb_sys run data get entity @s data.event[{type:'tp'}].value
data modify entity @s data.tp set from entity @s data.event[{type:'tp'}].value

execute if entity @s[nbt={data:{tp:'up'}}] as @a[tag=rgb_op] at @s run function mini:rgb/game/events/tp_up