# as rule marker
# with rgb_op

execute store result score #temp rgb_sys run data get entity @s data.events[{type:"add_blue"}].value
scoreboard players operation @a[tag=rgb_op] rgb_B += #temp rgb_sys