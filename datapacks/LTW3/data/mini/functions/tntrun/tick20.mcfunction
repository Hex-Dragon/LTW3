
# 进度判断
clone 1008 33 2008 1030 33 2030 1000 4 2000
execute store result score #tnt mem run fill 1000 4 2000 1022 4 2022 air replace #mini:tntrun_floor
execute if score #tnt mem matches 1..25 run advancement grant @a[tag=mini_running,scores={layer=4}] only ltw:parkour/tnt3
