
# 90s：提示游戏结束
execute if score $countdown mem matches 10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "太阳即将升起!","color":"aqua"}]
# 100s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
