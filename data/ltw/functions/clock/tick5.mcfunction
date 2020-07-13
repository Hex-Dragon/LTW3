# 每 0.25s 执行一次
schedule function ltw:clock/tick5 5t replace

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick5
execute if score $state mem matches 5 run function ltw:state/5/tick5
function ltw:main/tick5

# 死亡触发
execute as @a[scores={death=1..}] at @s run function ltw:main/player_death
