# 玩家死亡判断
execute as @a[tag=tntrun_pc] at @s if block ~ ~ ~ lava run function mini:tntrun/player_failed

# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1000,y=10,z=2000,dx=22,dz=22,dy=22] run spectate @r[tag=tntrun_pc]