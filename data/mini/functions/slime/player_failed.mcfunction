# 玩家死亡时由玩家自己触发
gamemode spectator
effect give @s night_vision 1000000 0 true
tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 已死亡!"]
execute as @a at @s run function lib:sounds/error
execute unless entity @a[gamemode=adventure] run function mini:main/game_end