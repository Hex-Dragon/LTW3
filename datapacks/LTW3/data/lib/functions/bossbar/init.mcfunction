function lib:bossbar/reset

# 重置计分板
scoreboard objectives remove bossbar_color
scoreboard objectives add bossbar_color dummy "bossbar颜色"