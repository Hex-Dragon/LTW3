# 慈善家(在区域外999)
# 触发器ID 999
tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"green","bold":true},{"text":"一堆金粒凭空出现在了老板面前,老板看了看四周,在发现没人后便默默收下了金粒!","color":"green"}]
tellraw @s[scores={gold=9..}] ["",{"text":">> ","color":"green","bold":true},{"text":"一块金锭凭空出现在了老板面前,老板看了看四周,在发现没人后便默默收下了金锭!","color":"green"}]
scoreboard players set @s[scores={gold=..8}] gold 0
scoreboard players remove @s[scores={gold=9..}] gold 9
execute as @s at @s run function lib:sounds/levelup
execute as @s run function item:shop/refresh_gold
scoreboard players set @s buy_trigger 0
