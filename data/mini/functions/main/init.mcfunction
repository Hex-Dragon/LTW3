# 初始化
function mini:tntrun/init
function mini:parkour/init
function mini:hotpm/init
function mini:colormatch/init

# 计分板初始化
scoreboard objectives remove mini_score
scoreboard objectives add mini_score dummy "小游戏得分"
scoreboard objectives remove mini_heart
scoreboard objectives add mini_heart dummy "生命值"
