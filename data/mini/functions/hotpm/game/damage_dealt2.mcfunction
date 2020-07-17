# 土豆持有者打到人时执行
tag @s add pm_damage_dealt
function lib:sounds/hit

# 转移土豆
function mini:hotpm/game/pm_lost
execute as @p[tag=pm_damage_taken,tag=!pm_damage_dealt] run function mini:hotpm/game/pm_get
tellraw @a ["",{"text":">> ","color":"gold","bold":true},{"selector":"@s","color":"gold"}," 将土豆拍在了 ",{"selector":"@a[tag=pm_holding]","color":"gold"}," 的脸上!"]
