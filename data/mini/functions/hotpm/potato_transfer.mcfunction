# 传土豆+提示
function mini:hotpm/pm_lost
execute as @a[tag=pm_damage_taken] run function mini:hotpm/pm_get
tellraw @a [{"text":">> ","color":"red"},{"selector":"@s","color":"green"},{"text":"将土豆拍在了","color":"gold"},{"selector":"@a[tag=pm_damage_taken]","color":"green"},{"text":"的脸上！","color":"gold"}]