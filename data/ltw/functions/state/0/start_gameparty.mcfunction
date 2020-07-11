# 开始小游戏模式

# 设置旁观
tag @a remove watcher
tag @a[tag=!hub_gameparty] add watcher

# 设置数据
scoreboard players reset * total_score
scoreboard players set @a[tag=!watcher] total_score 0
scoreboard players reset * total_score_disp
scoreboard players set @a[tag=!watcher] total_score_disp 0
scoreboard players set $round mem 1
scoreboard players set $game_type mem 1
scoreboard players add $ game_id 1
scoreboard players operation @a game_id = $ game_id

# 开始小游戏
function ltw:state/3/state_enter
