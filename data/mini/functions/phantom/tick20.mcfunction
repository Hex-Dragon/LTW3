
# 召唤幻翼
execute if score $countdown mem matches 11.. run function mini:phantom/game/try_summon

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $twice mem matches 1 run effect give @a regeneration 1 10 true
execute if score $twice mem matches 1 run schedule function mini:phantom/game/clear_effect 1t replace