
# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 170s：关闭循环播放
execute if score $countdown mem matches 170 run scoreboard players set @a music_time 999

# 60s / 30s：雷达提示
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},"玩家雷达将在 ",{"text": "20 秒 ","color": "gold"}, "后开启!"]
execute if score $countdown mem matches 60 as @a run function lib:sounds/music/mini_middle
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 40 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},"玩家雷达已开启, 游戏将在 ",{"text": "40 秒 ","color": "gold"}, "后结束!"]
execute if score $countdown mem matches 40 as @a run function lib:sounds/dragon_growl
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:diamond/game/clear_effect 1t replace
