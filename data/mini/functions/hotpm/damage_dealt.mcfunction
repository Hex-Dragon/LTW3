# 造成伤害加tag
tag @s add pm_damage_dealt

# 播放攻击音效
playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 1 1 1
say 我打人了

# 移除造成伤害advancement
advancement revoke @s only mini:hotpm/pm_damage_dealt