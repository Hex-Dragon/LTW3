
execute if score $countdown mem matches ..10 run function mini:phantom/game/try_summon

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# -10s：提示游戏结束
execute if score $countdown mem matches 10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "太阳即将升起!","color":"aqua"}]
# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
