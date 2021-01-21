# 初始化
function mini:tntrun/init
function mini:parkour/init
function mini:phantom/init
function mini:diamond/init
function mini:koth/init
function mini:trade/init

# 计分板初始化
scoreboard objectives remove mini_score
scoreboard objectives add mini_score dummy "小游戏得分"
scoreboard objectives remove mini_heart
scoreboard objectives add mini_heart dummy "生命"
scoreboard objectives remove mini_heart_disp
scoreboard objectives add mini_heart_disp dummy "生命"
scoreboard objectives modify mini_heart_disp rendertype hearts
