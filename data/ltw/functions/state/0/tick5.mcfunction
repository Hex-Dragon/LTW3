# 判断玩家是否处于准备状态
# tag @a remove lobby_ready
# tag @a remove lobby_watch
# tag @a[x=-24,y=8,z=-32,dx=5,dy=5,dz=5] add lobby_ready
# tag @a[tag=!lobby_ready] add lobby_watch
execute as @a[tag=!lobby_ready,tag=!lobby_watch] run function item:lobby_state/join_watch