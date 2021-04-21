# 测试用：将倒计时修改为永不结束

scoreboard players set $start_countdown mem 999999
scoreboard players set $countdown mem 999999
scoreboard players set $countdown_fast mem 999999
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true}, {"text": "管理员将倒计时延长到了无限期!","color": "aqua"}]