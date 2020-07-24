# 地狱门音效
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 2 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 显示倒计时
execute if score $countdown mem matches ..15 run title @a times 3 14 2
execute if score $countdown mem matches ..15 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..15 run title @a title [""]
execute if score $countdown mem matches ..15 as @a at @s run function lib:sounds/hit2

# -15s：提示游戏结束
execute if score $countdown mem matches 15 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text": "遗迹即将关闭!","color":"aqua"}]
# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
