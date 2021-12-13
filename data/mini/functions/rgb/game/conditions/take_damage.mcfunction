# as rule marker
# 受到 value 点伤害

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.take_damage
execute as @a[tag=rgb_op,limit=1] if score @s rgb_take_damage matches 1.. run scoreboard players operation #temp_scr rgb_sys += @s rgb_take_damage

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"take_damage"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.take_damage short 1 run scoreboard players get #temp_scr rgb_sys