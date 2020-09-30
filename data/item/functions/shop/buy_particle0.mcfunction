# 关闭粒子 (0 e)
# 触发器ID 102
tag @s remove canbuy
tag @s[tag=show_particle_1,tag=particle] add canbuy
tag @s[tag=show_particle_2,tag=particle] add canbuy
tag @s[tag=show_particle_3,tag=particle] add canbuy
tag @s[tag=show_particle_4,tag=particle] add canbuy
tag @s[tag=show_particle_5,tag=particle] add canbuy
tag @s[tag=show_particle_6,tag=particle] add canbuy
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"aqua","bold":true},{"text":"成功关闭了自己的 ","color":"aqua"},{"text":"粒子效果","color":"green"}]
tellraw @s[tag=!canbuy,tag=particle] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经关闭了自己的 ","color":"aqua"},{"text":"粒子效果","color":"green"}]
tellraw @s[tag=!particle] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买粒子效果系统!","color":"red"}]
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:particle/reset_particle
tag @s remove canbuy