# 受到伤害时由玩家触发
advancement revoke @s only mini:hotpm/damage_taken

# 添加受伤 Tag
execute if score $state mem matches 5 if score $mini_type mem matches 3 run tag @s add pm_damage_taken
