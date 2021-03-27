# 慈善家(在区域外999)
# 触发器ID 999
tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"看起来你已经身无分文,不要再远程购物啦!","color":"red"}]
tellraw @s[scores={gold=1..}] ["",{"text":">> ","color":"green","bold":true},{"text":"一堆金粒凭空出现在了老板面前,老板一边喊着好东西好东西一边收下了金粒!","color":"green"}]
execute as @s[scores={gold=1..}] at @s run function lib:sounds/levelup
execute as @s[scores={gold=..0}] at @s run function lib:sounds/error
scoreboard players set @s[scores={gold=1..8}] gold 0
scoreboard players remove @s[scores={gold=9..}] gold 9
execute as @s run function item:shop/refresh_gold
scoreboard players set @s buy_trigger 0
