# 判断玩家是否处于准备状态
tag @a remove hub_ready
tag @a remove hub_watch
tag @a[x=-24,y=8,z=-32,dx=5,dy=5,dz=5] add hub_ready
tag @a[tag=!hub_ready] add hub_watch