# 造成伤害加tag
tag @s add damage_dealt

# 播放攻击音效
playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 1 1 1

# 移除造成伤害advancement
advancement revoke @s only lib:damage_dealt