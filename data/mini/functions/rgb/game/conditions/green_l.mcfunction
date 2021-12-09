# as rule marker
# rgb_G 小于 value

execute store result score #temp_scr rgb_sys run scoreboard players get @a[tag=rgb_op,limit=1] rgb_G

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"green_l"}].value
execute unless score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0