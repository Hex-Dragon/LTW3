# 测试用：将倒计时修改为立即结束

scoreboard players set #start_countdown mem 3
scoreboard players set $countdown mem 1
scoreboard players set $countdown_fast mem 5
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true}, {"text": "管理员按下了快进键!","color": "aqua"}]