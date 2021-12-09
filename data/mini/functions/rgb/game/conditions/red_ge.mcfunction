# as rule marker
# rgb_R 大于等于 value

execute store result score #temp_scr rgb_sys run scoreboard players get @a[tag=rgb_op,limit=1] rgb_R

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"red_ge"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0