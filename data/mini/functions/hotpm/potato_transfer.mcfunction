# 传土豆+提示
function mini:hotpm/pm_lost
execute as @a[tag=pm_damage_taken] run function mini:hotpm/pm_get
tellraw @a [{"text":">> ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" 将土豆拍在了 ","color":"white"},{"selector":"@a[tag=pm_damage_taken]","color":"yellow"},{"text":" 的脸上!","color":"white"}]