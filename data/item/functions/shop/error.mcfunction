# 不在购物区域
# 触发器ID None
scoreboard players set @s buy_trigger 0
execute if score $state mem matches 0 run scoreboard players enable @s buy_trigger
tellraw @s ["",{"text":">> ","color":"red","bold":true},{"text":"你够不着这个商品!","color":"red"}]
execute at @s run function lib:sounds/error
