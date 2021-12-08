# as rule armor_stand at @s

tellraw @a[tag=mini_running] [{"text": ">> ","bold": true,"color": "aqua"}, {"text": "新增了一条规则：","bold": false},{"nbt":"CustomName","entity": "@s","bold": false,"interpret": true}]
execute as @a[tag=mini_running] at @s facing entity @e[tag=rgb_new_rule,limit=1] eyes positioned ^ ^ ^5 run playsound minecraft:entity.chicken.egg player @s ~ ~ ~

summon marker ~ ~ ~ {Tags:["rgb_rule","rgb_new_rule"]}
scoreboard players operation @e[tag=rgb_new_rule] rgb_rule_id = $ rgb_rule_id
scoreboard players add $ rgb_rule_id 1
data modify entity @e[type=marker,tag=rgb_new_rule,limit=1] data set from entity @s ArmorItems[0].tag
data modify entity @e[type=marker,tag=rgb_new_rule,limit=1] data.name set from entity @s CustomName
data modify entity @e[type=marker,tag=rgb_new_rule,limit=1] data.players set value []
execute as @a[tag=mini_running] run function mini:rgb/game/add_rule_1

tag @s add rgb_rule
tag @e[tag=rgb_new_rule] remove rgb_new_rule