# 刷新奖励房间

tag @a remove watcher
scoreboard players set $game_type mem 1
scoreboard players set $round mem 4
function ltw:state/6/state_enter
schedule function test:generate_bonus2 3t