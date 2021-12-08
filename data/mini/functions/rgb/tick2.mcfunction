# 给予镐子
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,id:"minecraft:netherite_pickaxe",tag:{game_item:1b}}] run function mini:rgb/game/give_pickaxe

# 新增规则
execute as @e[type=armor_stand,tag=rgb_new_rule] at @s run function mini:rgb/game/add_rule

# 销毁规则
execute as @e[type=marker,tag=rgb_rule] run function mini:rgb/game/check_rule_exists