# 1009.52 14.08 1007.45 营地屋顶
# 1021.53 15.95 1016.63 沙漠骨骸
# 1007.72 30.50 1019.92 神庙立柱
# 1011.66 19.16 1058.34 下界之门
# 1026.56 18.30 1047.10 落日森林
# 1004.50 18.50 1043.50 地狱之顶
# 1013.08 08.30 1040.86 节奏舞厅
# 1007.35 13.30 1025.31 末路营火

tag @a remove get_treasure

execute positioned 1009.52 14.08 1007.45 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure1] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "营地屋顶"}," 的宝藏!"]
execute positioned 1009.52 14.08 1007.45 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1009.52 14.08 1007.45 as @a[tag=!treasure1,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure1

execute positioned 1021.53 15.95 1016.63 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure2] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "沙漠骨骸"}," 的宝藏!"]
execute positioned 1021.53 15.95 1016.63 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1021.53 15.95 1016.63 as @a[tag=!treasure2,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure2

execute positioned 1007.72 30.50 1019.92 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure3] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "神庙立柱"}," 的宝藏!"]
execute positioned 1007.72 30.50 1019.92 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1007.72 30.50 1019.92 as @a[tag=!treasure3,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure3

execute positioned 1011.66 19.16 1058.34 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure4] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "下界之门"}," 的宝藏!"]
execute positioned 1011.66 19.16 1058.34 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1011.66 19.16 1058.34 as @a[tag=!treasure4,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure4

execute positioned 1026.56 18.30 1047.10 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure5] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "落日森林"}," 的宝藏!"]
execute positioned 1026.56 18.30 1047.10 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1026.56 18.30 1047.10 as @a[tag=!treasure5,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure5

execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure6] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "地狱之顶"}," 的宝藏!"]
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure6

execute positioned 1013.08 08.30 1040.86 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure7] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "节奏舞厅"}," 的宝藏!"]
execute positioned 1013.08 08.30 1040.86 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1013.08 08.30 1040.86 as @a[tag=!treasure7,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure7

execute positioned 1007.35 13.30 1025.31 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..1] unless entity @a[tag=treasure8] run tellraw @a ["",{"text": ">> ","color":"green","bold": true},{"selector": "@s","color":"green"} , "第一个获得了 ",{"text": "末路营火"}," 的宝藏!"]
execute positioned 1007.35 13.30 1025.31 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..1] run tag @s add get_treasure
execute positioned 1007.35 13.30 1025.31 as @a[tag=!treasure8,tag=!watcher,tag=!debug,distance=..1] run tag @s add treasure8

execute as @a[tag=get_treasure] at @s run function lib:sounds/levelup
scoreboard players add @a[tag=get_treasure] treasure 1