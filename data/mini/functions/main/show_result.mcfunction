# 显示小游戏排名

tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"green","bold":true},{"text": "第一名 - ","color":"white","bold": false},{"selector": "@p[tag=mini_rank1]"},"\n第二名 - ",{"selector": "@p[tag=mini_rank2]"},"\n第三名 - ",{"selector": "@p[tag=mini_rank3]"},"\n"]