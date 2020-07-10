# 更新存活与结束的玩家数量

execute store result score $player_alive mem if entity @a[tag=mini_running,tag=!watcher]
execute store result score $player_finish mem if entity @a[tag=!mini_running,tag=!watcher]