# as rule marker
# 在火中 value/4 秒
# 不在火中自动归零

execute store result score #temp_scr rgb_sys run data get entity @s data.player.conditions.in_fire
scoreboard players set #temp rgb_sys 0
execute store success score #temp rgb_sys as @a[tag=rgb_op,limit=1] at @s if block ~ ~ ~ fire run scoreboard players add #temp_scr rgb_sys 1
execute if score #temp rgb_sys matches 0 run scoreboard players set #temp_scr rgb_sys 0

execute store result score #temp rgb_sys run data get entity @s data.conditions[{type:"in_fire"}].value
execute if score #temp_scr rgb_sys < #temp rgb_sys run data modify entity @s data.enable set value 0

execute store result entity @s data.player.conditions.in_fire short 1 run scoreboard players get #temp_scr rgb_sys