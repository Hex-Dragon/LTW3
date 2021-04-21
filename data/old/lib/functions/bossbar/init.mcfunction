
# 重置计分板

scoreboard objectives remove bossbar_color
scoreboard objectives add bossbar_color dummy "玩家独立 Bossbar 颜色"

# 重置 Bossbar

bossbar remove mini:red
bossbar add mini:red "红"
bossbar set mini:red color red

bossbar remove mini:yellow
bossbar add mini:yellow "黄"
bossbar set mini:yellow color yellow

bossbar remove mini:blue
bossbar add mini:blue "蓝"
bossbar set mini:blue color blue

bossbar remove mini:green
bossbar add mini:green "绿"
bossbar set mini:green color green
