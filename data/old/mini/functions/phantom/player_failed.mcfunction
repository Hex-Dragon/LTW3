# 玩家死亡时由玩家自己触发
tag @s remove mini_running
gamemode spectator
tp @s[team=!debug] 1062.34 27.11 6040.84 461.44 28.30
# tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 已死亡!"]
execute as @a at @s run function lib:sounds/error
execute unless entity @a[tag=mini_running] run function mini:main/game_end