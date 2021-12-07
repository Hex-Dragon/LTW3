# 用game_id标记小游戏中的掉落物，清除遗留的掉落物

scoreboard players add @e[type=item] game_id 0
scoreboard players operation @e[type=item,scores={game_id=0}] game_id = $ game_id
scoreboard players set item_test mem 0
execute store result score item_test mem as @e[type=item] unless score @s game_id = $ game_id run kill @s
execute if score item_test mem matches 1.. run tellraw @a ["清理了",{"score":{"name": "item_test","objective": "mem"}},"个物品"]