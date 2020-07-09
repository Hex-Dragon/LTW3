# 显示小游戏排名并给分

tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank1]","color":"white","bold": false},{"text": "\n第二名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank2]","color":"white","bold": false},{"text": "\n第三名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank3]","color":"white","bold": false},"\n"]

# 记分
scoreboard players add @s[tag=mini_rank1] gameparty_score 3
scoreboard players add @s[tag=mini_rank2] gameparty_score 2
scoreboard players add @s[tag=mini_rank3] gameparty_score 1
scoreboard players add @s[tag=mini_rank4] gameparty_score 0
