# 挖出规则
execute as @a[tag=mini_running] if score @s rgb_obtain_rule matches 1.. at @s run function mini:rgb/game/give_random_rule

# 对每一个玩家进行条件检定和事件执行
execute as @a[tag=mini_running] at @s run function mini:rgb/game/player_tick

# 清理计分板
scoreboard players set @a[tag=mini_running] rgb_obtain_rule 0
scoreboard players set @a[tag=mini_running] rgb_place_rule 0
scoreboard players set @a[tag=mini_running] rgb_destroy_rule 0
scoreboard players set @a[tag=mini_running] rgb_shift 0

# 展示RGB计分
execute as @a[tag=mini_running] run title @s actionbar [{"text":"R=","color": "red","bold": true},{"score":{"name": "@s","objective": "rgb_R"},"color": "red"},"  ",{"text":"G=","color": "green"},{"score":{"name": "@s","objective": "rgb_G"},"color": "green"},"  ",{"text":"B=","color": "blue"},{"score":{"name": "@s","objective": "rgb_B"},"color": "blue"}]