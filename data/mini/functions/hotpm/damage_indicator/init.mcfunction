# 计分板初始化
scoreboard objectives remove damage_counter1
scoreboard objectives remove damage_counter2
scoreboard objectives remove damage_taken
scoreboard objectives add damage_counter1 dummy "伤害计算(整数)"
scoreboard objectives add damage_counter2 dummy "伤害计算(小数)"
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken "受到伤害"