# 随机
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 8
function lib:random

# 显示提示
execute if score $random mem matches 1 run tellraw @s "“你的手上如果有钓鱼竿的话，可以用它把物品给直接勾过来，哼唧。”"
execute if score $random mem matches 2 run tellraw @s "“哼唧，你可以用钓鱼竿把人勾下悬崖，或者用来钓……哼哼，‘鱼’？”"
execute if score $random mem matches 3 run tellraw @s "“继续沿着你来时的那条密道走，指不定能找到我隐居的神秘兄弟……？”"
execute if score $random mem matches 4 run tellraw @s "“从蛛网密布的密道尽头，沿灰色珊瑚指引，就能窥见创世的秘密。”"
execute if score $random mem matches 5 run tellraw @s "“听说用指令之力‘造访’商店，似乎会发生奇怪的事情……哼唧。”"
execute if score $random mem matches 6 run tellraw @s "“我听说，商店的旗帜和遗迹的立柱似乎藏着什么秘密来着，哼唧。”"
execute if score $random mem matches 7 run tellraw @s "“哼唧，如果在踏上钻石块的同时起跳，可以让你飞得更高！”"
execute if score $random mem matches 8 run tellraw @s "“我不知道为什么商店里有一只猪……哼唧！难道猪灵是猪变的？”"