
# 击杀音效
execute as @a run scoreboard players operation @s temp = @s kill_phantom
execute as @a run scoreboard players operation @s temp -= @s kill_phantom2
execute as @a[scores={temp=1..}] at @s run function lib:sounds/levelup

# 击杀提示
execute as @a run scoreboard players operation @s kill_phantom2 = @s kill_phantom
execute as @a run scoreboard players operation @s kill_phantom2 %= #const_5 mem
execute as @a[scores={temp=1..,kill_phantom2=0}] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"}," 已击杀 ",{"score": { "name": "@s","objective": "kill_phantom"},"color":"gold"}," 只幻翼!"]
execute as @a run scoreboard players operation @s kill_phantom2 = @s kill_phantom
