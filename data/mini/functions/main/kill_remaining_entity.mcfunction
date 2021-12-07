# 用 round_id 标记所有玩家以外的实体，并清除遗留实体

scoreboard players add @e[type=!player,tag=!no_gc] round_id 0
scoreboard players operation @e[type=!player,tag=!no_gc,scores={round_id=0}] round_id = $ round_id
scoreboard players set item_test mem 0
#execute as @e[type=!player,tag=!no_gc] unless score @s round_id = $ round_id run scoreboard players add item_test mem 1
execute as @e[type=!player,tag=!no_gc] unless score @s round_id = $ round_id run tp @s ~ ~-1000 ~
execute as @e[type=!player,tag=!no_gc] unless score @s round_id = $ round_id run kill @s
#execute if score item_test mem matches 1.. run tellraw @a ["清理了",{"score":{"name": "item_test","objective": "mem"}},"个实体"]