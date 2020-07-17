# 分数更改 
scoreboard players add $floor_generate_part mem 1
# 随机生成地板
execute if score $floor_generate_part mem matches 1 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_1",integrity:1.0f}
execute if score $floor_generate_part mem matches 2 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_2",integrity:0.5f}
execute if score $floor_generate_part mem matches 3 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_3",integrity:0.3333333333333333f}
execute if score $floor_generate_part mem matches 4 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_4",integrity:0.25f}
execute if score $floor_generate_part mem matches 5 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_5",integrity:0.2f}
execute if score $floor_generate_part mem matches 6 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_6",integrity:0.16666666666666666f}
execute if score $floor_generate_part mem matches 7 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_7",integrity:0.14285714285714285f}
execute if score $floor_generate_part mem matches 8 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_8",integrity:0.125f}
execute if score $floor_generate_part mem matches 9 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_9",integrity:0.1111111111111111f}
execute if score $floor_generate_part mem matches 10 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_10",integrity:0.1f}
execute if score $floor_generate_part mem matches 11 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_11",integrity:0.09090909090909091f}
execute if score $floor_generate_part mem matches 12 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_12",integrity:0.08333333333333333f}
# execute if score $floor_generate_part mem matches 13 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_13",integrity:0.07692307692307693f}
# execute if score $floor_generate_part mem matches 14 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_14",integrity:0.07142857142857142f}
# execute if score $floor_generate_part mem matches 15 positioned 1000 10 4000 run setblock ~ ~ ~ minecraft:structure_block{posX:1,mode:"LOAD",name:"mini:color_match/color_15",integrity:0.06666666666666667f}
setblock 1000 9 4000 redstone_block
setblock 1000 9 4000 air
setblock 1000 10 4000 air
execute if score $floor_generate_part mem matches 1..14 run schedule function mini:colormatch/game/generate_parts 1t replace