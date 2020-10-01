# 让无状态玩家变为准备状态
execute as @a[tag=!lobby_ready,tag=!lobby_watch] run function item:lobby_state/join_watch

# 给予进度
execute as @a at @s if entity @s[x=-1,y=22,z=-29,dx=5,dy=3,dz=3] run advancement grant @s only ltw:parkour/explore1
execute as @a at @s if entity @s[x=6,y=48,z=-32,dx=4,dy=3,dz=9] run advancement grant @s only ltw:parkour/explore2
execute as @a at @s if entity @s[x=0,y=28,z=-46,distance=..4] run advancement grant @s only ltw:parkour/explore3

# 隐藏/显示老板的名片
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s if entity @a[distance=..5] run data modify entity @s CustomNameVisible set value true
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s unless entity @a[distance=..5] run data modify entity @s CustomNameVisible set value false

# 显示信息
execute store result score $count mem if entity @a[tag=lobby_ready]
execute if score $countdown mem matches 1.. run title @a actionbar [{"text":"","color":"green"},{"score":{"name":"$count","objective":"mem"}}," 人已准备 | ","将在 ",{"score":{"name":"#time","objective":"mem"}}," 秒后开始游戏"]
execute if score $countdown mem matches 0 run title @a actionbar [{"text":"","color":"yellow"},{"score":{"name":"$count","objective":"mem"}}," 人已准备"]