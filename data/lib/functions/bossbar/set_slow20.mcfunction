# 计算值
scoreboard players operation #temp mem = $countdown mem
scoreboard players operation #temp mem *= #const_10 mem

# 设置值
execute store result bossbar mini:red max run scoreboard players get #temp mem
execute store result bossbar mini:yellow max run scoreboard players get #temp mem
execute store result bossbar mini:green max run scoreboard players get #temp mem
execute store result bossbar mini:blue max run scoreboard players get #temp mem
