# 初始化 TNT Run 地图
forceload add 1000 2000 1050 2050

setblock 1000 10 2000 minecraft:structure_block{mode:"LOAD",name:"mini:tntrun"}
setblock 1000 11 2000 minecraft:redstone_block

forceload remove 1000 2000 1050 2050