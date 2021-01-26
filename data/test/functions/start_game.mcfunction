# 强制让所有非调试者开始正常游戏
execute as @a[team=!debugging] run function ltw:state/0/state/join_game
function ltw:state/0/start_game

tellraw @a ["",{"text": ">> ","color": "aqua","bold": true}, {"text": "管理员已强制开始游戏!","color": "aqua"}]
