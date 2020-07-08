# 造成伤害加tag
tag @s add damage_dealt

# 播放攻击音效
playsound minecraft:entity.arrow.hit_player ambient @s[scores={damage_system=1..}] ~ ~ ~ 1 1 1

# 移除造成伤害advancement
advancement revoke @s only mini:damage_dealt