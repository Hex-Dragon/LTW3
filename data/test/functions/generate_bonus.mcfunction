# 刷新奖励房间

tag @a remove watcher
scoreboard players set $round mem 4
function ltw:state/6/state_enter
scoreboard players set $state mem 0
gamemode creative @a