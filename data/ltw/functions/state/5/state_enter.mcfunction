# 要求系统进入状态 5（小游戏进行中）
scoreboard players set $state mem 5
execute as @a run function ltw:state/5/player_enter

# 调用游戏开始
function mini:main/game_start

say state 5!