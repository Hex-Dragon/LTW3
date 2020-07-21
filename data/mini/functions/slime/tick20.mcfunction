
# 属性提升 1
execute if score $countdown mem matches 90 run function mini:slime/game/set_attack
execute if score $countdown mem matches 90 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "史莱姆的攻击力提高了!","color":"red"}]
execute if score $countdown mem matches 90 as @a at @s run function lib:sounds/error

# 召唤提示 1
execute if score $countdown mem matches 65 run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"text": "新的史莱姆将在 5 秒后空投到球场中央!","color":"gold"}]
execute if score $countdown mem matches 65 as @a at @s run function lib:sounds/error

# 召唤 1
execute if score $countdown mem matches 60 run function mini:slime/game/summon
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "新的史莱姆已空投!","color":"red"}]
execute if score $countdown mem matches 60 as @a at @s run function lib:sounds/teleport

# 属性提升 2
execute if score $countdown mem matches 30 run function mini:slime/game/set_attack
execute if score $countdown mem matches 30 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "史莱姆的攻击力提高了!","color":"red"}]
execute if score $countdown mem matches 30 as @a at @s run function lib:sounds/error

# 召唤提示 2
execute if score $countdown mem matches 6 run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"text": "新的史莱姆将在 5 秒后空投到球场中央!","color":"gold"}]
execute if score $countdown mem matches 6 as @a at @s run function lib:sounds/error

# 召唤 2
execute if score $countdown mem matches 1 run function mini:slime/game/summon
execute if score $countdown mem matches 1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text": "新的史莱姆已空投!","color":"red"}]
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/teleport
