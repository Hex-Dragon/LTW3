# as rule marker
# with rgb_op

execute store result score #temp rgb_sys run data get entity @s data.events[{type:"add_green"}].value
scoreboard players operation @a[tag=rgb_op] rgb_G += #temp rgb_sys