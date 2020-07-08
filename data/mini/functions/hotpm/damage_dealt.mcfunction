# 造成伤害加tag
execute if score $state mem matches 5 if score mini_type mem matches 3 run tag @s add pm_damage_dealt

# 播放攻击音效
execute if score $state mem matches 5 if score mini_type mem matches 3 run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 1 1 1

# 移除造成伤害advancement
advancement revoke @s only mini:pm_damage_dealt

# 检测土豆
execute if score $state mem matches 5 if score mini_type mem matches 3 run function mini:hotpm/damage_event