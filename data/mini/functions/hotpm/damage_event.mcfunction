# 检测造成伤害者是否有土豆，有就转移
execute if entity @s[tag=pm_hoding] run function mini:hotpm/potato_transfer

# 清理tag
tag @a remove pm_damage_dealt
tag @a remove pm_damage_taken