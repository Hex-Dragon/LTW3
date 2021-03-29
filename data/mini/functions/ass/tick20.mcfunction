# 强制死亡机制
execute if score $countdown mem matches 45 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "即死模式已开启, 游戏将在 ","color": "gold"},"45 秒 ", {"text": "后结束","color": "gold"}]
execute if score $countdown mem matches 45 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 45 run function lib:bossbar/show
execute if score $countdown mem matches ..45 run effect give @a[team=playing] wither 60 1 true

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
