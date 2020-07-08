# 收到伤害加tag
execute if score $state mem matches 5 if score $mini_type mem matches 3 run tag @s add pm_damage_taken

# 移除造成伤害advancement
advancement revoke @s only mini:pm_damage_taken
