# 1009.52 14.08 1007.45 营地屋顶
# 1021.53 15.95 1016.63 沙漠骨骸
# 1007.72 30.50 1019.92 神庙立柱
# 1011.66 19.16 1058.34 下界之门
# 1026.56 18.30 1047.10 落日森林
# 1004.50 18.50 1043.50 地狱之顶
# 1013.08 08.30 1040.86 节奏舞厅
# 1007.35 13.30 1025.31 末路营火

tag @a remove get_treasure

execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure1] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "营地屋顶","color":"gold"}," 的宝藏!"]
execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure1

execute positioned 1021.50 15.50 1016.50 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure2] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "沙漠骨骸","color":"gold"}," 的宝藏!"]
execute positioned 1021.50 15.50 1016.50 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1021.50 15.50 1016.50 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure2

execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure3] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "神庙立柱","color":"gold"}," 的宝藏!"]
execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure3

execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure4] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "下界之门","color":"gold"}," 的宝藏!"]
execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure4

execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure5] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "落日森林","color":"gold"}," 的宝藏!"]
execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure5

execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure6] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "地狱之顶","color":"gold"}," 的宝藏!"]
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure6

execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure7] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "节奏舞厅","color":"gold"}," 的宝藏!"]
execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure7

execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..2] unless entity @a[tag=treasure8] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个获得了 ",{"text": "末路营火","color":"gold"}," 的宝藏!"]
execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..2] run tag @s add get_treasure
execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..2] run tag @s add treasure8

scoreboard players add @a[tag=get_treasure] treasure 1
tellraw @a[tag=get_treasure,scores={treasure=..7}] ["",{"text":">> ","color":"green","bold": true},"你已获得 ",{"score": {"objective": "treasure","name": "@s"},"color":"green"},{"text": " 份 ","color":"green"},"宝藏!"]
execute as @a[tag=get_treasure,scores={treasure=8}] run function mini:parkour/player_finished
execute as @a[tag=get_treasure] at @s run function lib:sounds/levelup