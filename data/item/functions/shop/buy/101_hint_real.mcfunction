# 随机
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 10
function lib:random

# 显示提示
execute if score $random mem matches 1 run tellraw @s "“钓鱼竿可以直接把物品勾过来，用它抢奖励物资可方便了。哼唧。”"
execute if score $random mem matches 2 run tellraw @s "“哼唧，你可以用钓鱼竿把人勾下悬崖，或者用来钓……哼哼，‘鱼’？”"
execute if score $random mem matches 3 run tellraw @s "“继续沿着你来时的那条密道，抬头望望，能找到一位神秘老板……”"
execute if score $random mem matches 4 run tellraw @s "“从蛛网密布的密道尽头，沿灰色珊瑚指引，就能窥见创世的秘密。”"
execute if score $random mem matches 5 run tellraw @s "“听说用指令之力‘造访’商店，似乎会发生奇怪的事情……哼唧。”"
execute if score $random mem matches 6 run tellraw @s "“我听说，商店的旗帜和遗迹的立柱似乎藏着什么秘密来着，哼唧。”"
execute if score $random mem matches 7 run tellraw @s "“哼唧，如果在踏上钻石块的同时起跳，可以让你飞得更高！”"
execute if score $random mem matches 8 run tellraw @s "“我不知道为什么商店里有一只猪……哼唧！难道猪灵是猪变的？”"
execute if score $random mem matches 9 run tellraw @s "“哼唧，我记得似乎有个能快速上到商店二楼的方法……哼唧，忘了。”"
execute if score $random mem matches 10 run tellraw @s "“那两只村民没法像我们一样从柜台上翻出去，那是怎么下班的？”"