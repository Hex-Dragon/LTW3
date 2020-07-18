# 更新存活与结束的玩家数量

scoreboard players set $player_alive mem 0
execute as @a[tag=mini_running,tag=!watcher] unless entity @s[scores={mini_score=..-10}] run scoreboard players add $player_alive mem 1
scoreboard players set $player_finish mem 0
execute as @a[tag=!mini_running,tag=!watcher] unless entity @s[scores={mini_score=..-10}] run scoreboard players add $player_finish mem 1