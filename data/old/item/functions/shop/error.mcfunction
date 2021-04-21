# 不在购物区域
# 触发器ID None
scoreboard players set @s buy_trigger 0
tellraw @s ["",{"text":">> ","color":"red","bold":true},{"text":"老板还没开通网上购物服务，请进入实体店购买!","color":"red"}]
execute at @s run function lib:sounds/error
