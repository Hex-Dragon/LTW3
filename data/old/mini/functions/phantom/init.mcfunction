# 重置计分板
scoreboard objectives remove use_trident
scoreboard objectives add use_trident minecraft.used:trident "使用三叉戟"
scoreboard objectives remove kill_phantom
scoreboard objectives add kill_phantom killed:phantom "幻翼击杀数"
scoreboard objectives remove kill_phantom2
scoreboard objectives add kill_phantom2 dummy "幻翼击杀数缓存"
