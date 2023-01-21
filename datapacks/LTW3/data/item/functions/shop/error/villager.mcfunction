scoreboard players set @s buy_trigger 0
tellraw @s ["",{"text":">> ","color":"red","bold":true},{"text":"村民还没开通网上服务呢, 请到线下实体店购买!","color":"red"}]
execute at @s run function lib:sounds/error
