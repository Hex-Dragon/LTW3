# 用game_id标记所有玩家以外的实体，并清除遗留实体

scoreboard players add @e[type=!player] game_id 0
scoreboard players operation @e[type=!player,scores={game_id=0}] game_id = $ game_id
scoreboard players set item_test mem 0
execute store result score item_test mem as @e[type=!player] unless score @s game_id = $ game_id run tp @s ~ ~-1000 ~
execute if score item_test mem matches 1.. run tellraw @a ["清理了",{"score":{"name": "item_test","objective": "mem"}},"个实体"]