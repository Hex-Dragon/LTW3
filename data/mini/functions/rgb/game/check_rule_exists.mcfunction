# as rule marker

scoreboard players set #temp rgb_sys 0
tag @s add rgb_temp
execute as @e[type=armor_stand,tag=rgb_rule] if score @s rgb_rule_id = @e[tag=rgb_temp,limit=1] rgb_rule_id run scoreboard players set #temp rgb_sys 1
tag @s remove rgb_temp

execute if score #temp rgb_sys matches 0 run function mini:rgb/game/remove_rule