# 显示小游戏排名

tellraw @s [{"text":"\n>> 小游戏结束 >>\n\n","color":"gold","bold":true},{"text": "第一名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank1]"},{"text": "第二名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank2]","color":"white","bold": false},{"text": "第三名 - ","color":"green","bold": false},{"selector": "@a[tag=mini_rank3]","color":"white","bold": false},"\n"]