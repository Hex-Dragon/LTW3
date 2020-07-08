# tntrun小游戏初始化
function mini:tntrun/init

# 计分板初始化
scoreboard objectives remove mini_score
scoreboard objectives add mini_score dummy "小游戏记录名称"