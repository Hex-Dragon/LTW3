# 初始化bossbar
# 玩家的bossbar_color: 1红 2黄 3绿 4蓝
# mem的$bossbar_type: 0关闭 1countdown_fast 2count_down
bossbar remove mini:red
bossbar remove mini:yellow
bossbar remove mini:blue
bossbar remove mini:green

bossbar add mini:red "红"
bossbar add mini:yellow "黄"
bossbar add mini:blue "绿"
bossbar add mini:green "蓝"

bossbar set mini:red color red
bossbar set mini:yellow color yellow
bossbar set mini:blue color blue
bossbar set mini:green color green

# 重置计分板
scoreboard objectives remove bossbar_color
scoreboard objectives add bossbar_color dummy "bossbar颜色"