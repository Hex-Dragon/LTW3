
# 更新绿宝石数量
execute as @a[team=playing] store result score @s emerald run clear @s emerald 0

# 刷新交易
execute as @e[type=villager,tag=TradePlayer] run function mini:trade/game/villager_update_trade

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:trade/game/clear_effect 1t replace

# 更新下界之星，转换为积分
scoreboard players reset * temp2
execute as @a[team=playing] store result score @s temp2 run clear @s nether_star 0
execute as @a[scores={temp2=1..}] run scoreboard players operation @s total_score += @s temp2
execute as @a[scores={temp2=1..}] run scoreboard players operation @s total_score_disp += @s temp2
execute as @a[scores={temp2=1..}] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 从交易中获得了 ",{"score": {"name":"@s","objective": "temp2"},"color":"aqua"},{"text": " 积分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]
clear @a[team=playing] nether_star

# 60s 提示
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text":"游戏将在 ","color": "gold"}, "60 秒 ",{"text": "后结束","color": "gold"}]
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 60 run function lib:bossbar/show

# 给予进度
execute as @a[team=playing] if score @s emerald matches 40.. run advancement grant @s only ltw:vs/emerald1
execute as @a[team=playing] if score @s emerald matches 70.. run advancement grant @s only ltw:vs/emerald2
execute as @a[team=playing] if score @s emerald matches 100.. run advancement grant @s only ltw:vs/emerald3