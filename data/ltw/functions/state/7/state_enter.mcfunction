# 要求系统进入状态 7（选择奖励）
scoreboard players set $state mem 7
execute as @a run function ltw:state/7/player_enter

schedule function ltw:state/0/state_enter 5t replace