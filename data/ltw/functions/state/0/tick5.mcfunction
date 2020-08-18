# 判断玩家是否处于准备状态
# tag @a remove lobby_ready
# tag @a remove lobby_watch
# tag @a[x=-24,y=8,z=-32,dx=5,dy=5,dz=5] add lobby_ready
# tag @a[tag=!lobby_ready] add lobby_watch
execute as @a[tag=!lobby_ready,tag=!lobby_watch] run function item:lobby_state/join_watch

# 给予进度
execute as @a at @s if entity @s[x=-1,y=22,z=-29,dx=5,dy=3,dz=3] run advancement grant @s only ltw:parkour/explore_1
execute as @a at @s if entity @s[x=6,y=48,z=-32,dx=4,dy=3,dz=9] run advancement grant @s only ltw:parkour/explore_2

# 隐藏名片
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s if entity @a[distance=..5] run data modify entity @s CustomNameVisible set value true
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s unless entity @a[distance=..5] run data modify entity @s CustomNameVisible set value false
