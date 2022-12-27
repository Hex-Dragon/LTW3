scoreboard players operation @s total_score += @s temp2
scoreboard players operation @s total_score_disp += @s temp2
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 从交易中获得了 ",{"score": {"name":"@s","objective": "temp2"},"color":"aqua"},{"text": " 积分","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]

advancement grant @s[scores={temp2=2}] only ltw:vs/emerald2