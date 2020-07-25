scoreboard players add @s slime_score 1

scoreboard players operation @s temp = @s slime_score
scoreboard players operation @s temp %= #const_5 mem
execute as @s[scores={temp=1..}] run function lib:sounds/hit
execute as @s[scores={temp=0}] run function lib:sounds/levelup
execute as @s[scores={temp=0}] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"}," 已获得 ",{"score": { "name": "@s","objective": "slime_score"},"color":"gold"},{"text":" 分","color":"gold"}]