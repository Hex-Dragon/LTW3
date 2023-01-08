
# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 120s：时间提示
execute if score $countdown mem matches 120 run title @a subtitle {"text":"⚠ 还剩两分钟！ ⚠","color":"yellow"}
execute if score $countdown mem matches 120 run title @a times 1 50 3
execute if score $countdown mem matches 120 run title @a title ""

# 90s：雷达提示
execute if score $countdown mem matches 90 run title @a subtitle {"text":"⚠ 玩家雷达将在三十秒后开启！ ⚠","color":"yellow"}
execute if score $countdown mem matches 90 run title @a times 1 100 3
execute if score $countdown mem matches 90 run title @a title ""
execute if score $countdown mem matches 90 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 90 run function lib:bossbar/show

# 60s：雷达开启
execute if score $countdown mem matches 61 as @a run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 玩家雷达已开启！还剩一分钟！ ⚠","color":"red"}
execute if score $countdown mem matches 60 run title @a times 1 120 3
execute if score $countdown mem matches 60 run title @a title ""
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 60 run function lib:bossbar/show
execute if score $countdown mem matches 60 run playsound minecraft:entity.ender_dragon.growl player @a 0 1000000 0 1000000 1.5

# 30s：时间提示
execute if score $countdown mem matches 30 run title @a subtitle {"text":"⚠ 还剩三十秒！ ⚠","color":"yellow"}
execute if score $countdown mem matches 30 run title @a times 1 50 3
execute if score $countdown mem matches 30 run title @a title ""

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:iron/game/clear_effect 1t replace

# 给予进度
advancement grant @a[team=playing,scores={iron_count=10..}] only ltw:blood/iron1
advancement grant @a[team=playing,scores={iron_count=20..}] only ltw:blood/iron2
advancement grant @a[team=playing,scores={iron_count=30..}] only ltw:blood/iron3
advancement grant @a[team=playing,scores={iron_count=45..}] only ltw:blood/iron4