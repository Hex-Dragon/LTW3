tag @s add pass_setup
function ltw:state/0/player_enter
tellraw @s [{"text":"\n","color":"gold"},{"text":">> ","bold": true},"丢出最后一格的物品即可准备开始游戏！\n"]
