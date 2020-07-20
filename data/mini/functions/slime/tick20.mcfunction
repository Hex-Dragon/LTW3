
# 显示提示
execute if score $countdown mem matches 5 run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"text": "新的史莱姆将在 5 秒后空投到球场中央!","color":"gold"}]
execute if score $countdown mem matches 5 as @a at @s run function lib:sounds/error

# 召唤
execute if score $countdown mem matches 0 run function mini:slime/game/summon
execute if score $countdown mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "新的史莱姆已空投!","color":"red"}]
execute if score $countdown mem matches 0 as @a at @s run function lib:sounds/teleport
scoreboard players set $countdown mem 30