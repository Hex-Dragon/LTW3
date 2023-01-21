scoreboard players add @a[tag=mini_running] surviveRound 1
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s surviveRound
# 结束热土豆
forceload remove 1000 3000 1100 3100
