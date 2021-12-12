# as rule marker
# 挖掘 value 个冰块

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.dig_ice
scoreboard players operation #temp_scr rgb_sys += @a[tag=rgb_op,limit=1] rgb_dig_ice

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"dig_ice"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.dig_ice short 1 run scoreboard players get #temp_scr rgb_sys