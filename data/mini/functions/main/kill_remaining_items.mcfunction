# 用game_id标记小游戏中的掉落物，清除遗留的掉落物

scoreboard players add @e[type=item] game_id 0
scoreboard players operation @e[type=item,scores={game_id=0}] game_id = $ game_id
execute as @e[type=item] unless score @s game_id = $ game_id run kill @s