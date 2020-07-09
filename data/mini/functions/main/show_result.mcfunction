# 显示小游戏排名并给分

execute if entity @a[tag=mini_rank2] if entity @a[tag=mini_rank3] run tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank1]","color":"white","bold": false},{"text": "\n第二名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank2]","color":"white","bold": false},{"text": "\n第三名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank3]","color":"white","bold": false},"\n"]
execute if entity @a[tag=mini_rank2] unless entity @a[tag=mini_rank3] run tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank1]","color":"white","bold": false},{"text": "\n第二名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank2]","color":"white","bold": false},"\n"]
execute unless entity @a[tag=mini_rank2] run tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank1]","color":"white","bold": false},"\n"]

# 记分
scoreboard players add @s[tag=mini_rank1] total_score 3
scoreboard players add @s[tag=mini_rank2] total_score 2
scoreboard players add @s[tag=mini_rank3] total_score 1
scoreboard players add @s[tag=mini_rank4] total_score 0

# TODO 进入游戏会误判离开
# TODO 旁观者会有得分显示
# TODO 旁观者会有生命值显示