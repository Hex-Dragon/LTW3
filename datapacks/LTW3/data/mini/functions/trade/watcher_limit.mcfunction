# 观察者限制飞行范围
execute unless score $state mem matches 5 run tp @a[gamemode=spectator,team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
execute as @a[gamemode=spectator,x=1016,y=240,z=5016,distance=70..] run spectate
tp @a[gamemode=spectator,x=1016,y=240,z=5016,distance=70..,team=!debugging] 1010.90 259.12 5024.86 -147.81 49.05