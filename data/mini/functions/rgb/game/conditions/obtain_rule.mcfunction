# as rule marker

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.obtain_rule
scoreboard players operation #temp_scr rgb_sys += @a[tag=rgb_op,limit=1] rgb_obtain_rule

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"obtain_rule"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.obtain_rule short 1 run scoreboard players get #temp_scr rgb_sys