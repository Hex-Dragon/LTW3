
# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s regeneration 2 2
# execute as @a at @s if block ~ ~-1 ~ emerald_block run schedule function mini:slime/game/clear_effect 1t replace