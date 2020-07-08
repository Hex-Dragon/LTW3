# 传土豆+提示
tag @s remove hpm_holding
tag @a[tag=pm_damage_taken] add hpm_holding
tellraw @a [{"text":">>","color":"red"},{"selector":"@s"},{"text":"将土豆拍在了","color":"gold"},{"selector":"pm_damage_taken"},{"text":"的脸上！","color":"gold"}]