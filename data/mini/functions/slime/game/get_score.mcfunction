scoreboard players add @s slime_score 1

execute as @a[tag=!watcher] run scoreboard players operation @s temp = @s slime_score
execute as @a[tag=!watcher] run scoreboard players operation @s temp %= #const_5 mem
execute as @a[tag=!watcher,scores={temp=1..}] run function lib:sounds/hit
execute as @a[tag=!watcher,scores={temp=0}] run function lib:sounds/levelup
execute as @a[tag=!watcher,scores={temp=0}] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"}," 已获得 ",{"score": { "name": "@s","objective": "kill_phantom"},"color":"gold"},{"text":" 分","color":"gold"}]