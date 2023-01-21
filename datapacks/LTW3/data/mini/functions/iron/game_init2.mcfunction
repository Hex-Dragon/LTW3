
# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]

# 矿物生成
setblock 1028 252 5030 minecraft:redstone_block

schedule function mini:iron/game_init3 7t