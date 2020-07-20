# 玩家死亡时由玩家自己触发

gamemode spectator
tp @s[tag=!debug] 1062.34 27.11 6040.84 461.44 28.30
tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 已死亡!"]
execute at @s run function lib:sounds/error
execute unless entity @a[gamemode=adventure] run function mini:main/game_end