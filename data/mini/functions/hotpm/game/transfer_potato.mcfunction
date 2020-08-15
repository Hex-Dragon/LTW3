# 土豆持有者打到人时执行
tag @s add pm_damage_dealt
function lib:sounds/hit

# 转移土豆
function mini:hotpm/game/pm_lost
tellraw @s ["",{"text":">> ","color":"green","bold":true},"你把炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_damage_dealt]","color":"green"}," 的头上!"]
tellraw @p[tag=pm_damage_taken,tag=!pm_damage_dealt] ["",{"text":">> ","color":"red","bold":true},{"selector":"@s","color":"red"}," 把炸弹扔到了你的头上!"]
execute as @p[tag=pm_damage_taken,tag=!pm_holding] run function mini:hotpm/game/pm_get