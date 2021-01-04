
# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 60s / 30s：雷达提示
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},"玩家雷达将在 ",{"text": "30 秒","color": "aqua"}, "后开启!"]
execute if score $countdown mem matches 30 run tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},"玩家雷达已开启, 游戏将在 ",{"text": "30 秒","color": "aqua"}, "后结束!"]

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:diamond/game/clear_effect 1t replace
