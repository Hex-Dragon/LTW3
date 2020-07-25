# 计算值
execute store result score #temp mem run bossbar get mini:blue value
scoreboard players remove #temp mem 1

# 设置值
execute store result bossbar mini:red value run scoreboard players get #temp mem
execute store result bossbar mini:yellow value run scoreboard players get #temp mem
execute store result bossbar mini:green value run scoreboard players get #temp mem
execute store result bossbar mini:blue value run scoreboard players get #temp mem
