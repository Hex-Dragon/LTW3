# 更新存活与结束的玩家数量

execute store success score $player_alive mem if entity @a[tag=mini_running,tag=!watcher,scores={mini_score=-10..}]
execute store success score $player_finish mem if entity @a[tag=!mini_running,tag=!watcher,scores={mini_score=-10..}]