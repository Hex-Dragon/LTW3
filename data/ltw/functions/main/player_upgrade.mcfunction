# TODO: v0.3 服务器更新升级函数

scoreboard players set @s green_total 0
scoreboard players add @s[advancements={ltw:combat/phantom1=true}] green_total 1
scoreboard players add @s[advancements={ltw:combat/phantom2=true}] green_total 2
scoreboard players add @s[advancements={ltw:combat/phantom3=true}] green_total 3
scoreboard players add @s[advancements={ltw:parkour/colormatch2=true}] green_total 2
scoreboard players add @s[advancements={ltw:parkour/tnt2=true}] green_total 2
scoreboard players add @s[advancements={ltw:parkour/tnt3=true}] green_total 2
scoreboard players add @s[advancements={ltw:parkour/treasure1=true}] green_total 1
scoreboard players add @s[advancements={ltw:parkour/treasure2=true}] green_total 2
scoreboard players add @s[advancements={ltw:parkour/treasure3=true}] green_total 3
scoreboard players add @s[advancements={ltw:story/score1=true}] green_total 1
scoreboard players add @s[advancements={ltw:story/score2=true}] green_total 2
scoreboard players add @s[advancements={ltw:story/score3=true}] green_total 3
scoreboard players add @s[advancements={ltw:story/total1=true}] green_total 1
scoreboard players add @s[advancements={ltw:story/total2=true}] green_total 2
scoreboard players add @s[advancements={ltw:story/total3=true}] green_total 4
scoreboard players add @s[advancements={ltw:story/win1=true}] green_total 1
scoreboard players add @s[advancements={ltw:story/win2=true}] green_total 2
scoreboard players add @s[advancements={ltw:story/win3=true}] green_total 4
scoreboard players add @s[advancements={ltw:vs/diamond1=true}] green_total 2
scoreboard players add @s[advancements={ltw:vs/diamond2=true}] green_total 4
scoreboard players add @s[advancements={ltw:vs/potato2=true}] green_total 2
scoreboard players add @s[advancements={ltw:vs/potato3=true}] green_total 3
scoreboard players operation @s green = @s green_total

scoreboard players reset @s shop_particle_s
scoreboard players reset @s shop_particle_2
scoreboard players reset @s shop_particle_3
scoreboard players reset @s shop_particle_4
scoreboard players reset @s shop_particle_5
scoreboard players reset @s shop_particle_6
scoreboard players reset @s particle_type

scoreboard players add @s gold 20
scoreboard players add @s gold_total 20

tellraw @a ["",{"text": ">> ","color": "green","bold":true},{"text":"由于服务器升级, 绿宝石购买已经重置, 补偿的 20 金粒已发放!","color":"green"}]
