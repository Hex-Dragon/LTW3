# 土豆持有者打到人时执行

tag @s add pm_damage_dealt
playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 1 1 1

# 转移土豆
function mini:hotpm/game/pm_lost
execute as @p[tag=pm_damage_taken,tag=!pm_damage_dealt] run function mini:hotpm/game/pm_get
tellraw @a [{"text":">> ","color":"gold","bold":true},{"selector":"@s","color":"yellow","bold":false},{"text":" 将土豆拍在了 ","color":"white","bold":false},{"selector":"@a[tag=pm_hoding]","color":"yellow","bold":false},{"text":" 的脸上!","color":"white","bold":false}]
