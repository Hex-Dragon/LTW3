# 造成伤害时由玩家触发
advancement revoke @s only mini:hotpm/damage_dealt

# 如果是土豆持有者在热土豆游戏中打到人，才执行下一步
execute as @s[tag=pm_hoding] at @s if score $state mem matches 5 if score $mini_type mem matches 3 run function mini:hotpm/damage_dealt2

# 结束伤害判断
tag @a remove pm_damage_dealt
tag @a remove pm_damage_taken
