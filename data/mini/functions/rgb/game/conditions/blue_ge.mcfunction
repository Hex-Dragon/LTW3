# as rule marker

execute store result score #temp_scr rgb_sys run scoreboard players get @a[tag=rgb_op,limit=1] rgb_B

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"blue_ge"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0