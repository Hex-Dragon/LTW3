
# 召唤幻翼
execute if score $countdown mem matches 11.. run function mini:phantom/game/try_summon

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# -10s：提示游戏结束
execute if score $countdown mem matches 10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "太阳即将升起!","color":"aqua"}]
# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 击杀音效
execute as @a run scoreboard players operation @s temp = @s kill_phantom
execute as @a run scoreboard players operation @s temp -= @s kill_phantom2
execute as @a[scores={temp=1..}] at @s run function lib:sounds/hit

# 击杀提示
execute as @a run scoreboard players operation @s kill_phantom2 = @s kill_phantom
execute as @a run scoreboard players operation @s kill_phantom2 %= #const_5 mem
execute as @a[scores={temp=1..,kill_phantom2=0}] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"}," 已击杀 ",{"score": { "name": "@s","objective": "kill_phantom"}}," 只幻翼!"]
execute as @a run scoreboard players operation @s kill_phantom2 = @s kill_phantom
