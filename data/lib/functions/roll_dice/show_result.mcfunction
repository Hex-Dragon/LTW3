# 老板大成功，玩家非大成功/玩家大失败，老板非大失败：玩家失去所有金粒，被丢出赌博房
execute if score $random mem matches 20 if score @s temp matches 1 run tellraw @s ["",{"text":">> ","color":"dark_purple","bold":true},"老板丢出了 ",{"text":"大成功","color":"dark_purple","bold":true}," ，你丢出了 ",{"text":"大失败","color":"dark_purple","bold":true}," ，你是超级非酋，你失去了所有金粒，被丢出了赌博房！"]
execute if score $random mem matches 20 if score @s temp matches 2..19 run tellraw @s ["",{"text":">> ","color":"dark_purple","bold":true},"老板丢出了 ",{"text":"大成功","color":"dark_purple","bold":true}," ，你失去了所有金粒，被丢出了赌博房！"]
execute if score $random mem matches 2..19 if score @s temp matches 1 run tellraw @s ["",{"text":">> ","color":"dark_purple","bold":true},"你丢出了 ",{"text":"大失败","color":"dark_purple","bold":true}," ，你失去了所有金粒，被丢出了赌博房！"]

execute if score $random mem matches 20 if score @s temp matches 1..19 run function lib:roll_dice/super_lose
execute if score $random mem matches 2..19 if score @s temp matches 1 run function lib:roll_dice/super_lose

# 玩家大成功，老板非大成功/老板大失败，玩家非大失败：玩家获得3金块
execute if score $random mem matches 1 if score @s temp matches 20 run tellraw @s ["",{"text":">> ","color":"gold","bold":true},"你丢出了 ",{"text":"大成功","color":"gold","bold":true}," ，老板丢出了 ",{"text":"大失败","color":"gold","bold":true}," ，你是超级欧皇，你获得了 ",{"text":"3金块","color":"gold","bold":true} ," ！"]
execute if score $random mem matches 2..19 if score @s temp matches 20 run tellraw @s ["",{"text":">> ","color":"gold","bold":true},"你丢出了 ",{"text":"大成功","color":"gold","bold":true}," ，你获得了 ",{"text":"3金块","color":"gold","bold":true} ," ！"]
execute if score $random mem matches 1 if score @s temp matches 2..19 run tellraw @s ["",{"text":">> ","color":"gold","bold":true},"老板丢出了 ",{"text":"大失败","color":"gold","bold":true}," ，你获得了 ",{"text":"3金块","color":"gold","bold":true} ," ！"]

execute if score $random mem matches 1 if score @s temp matches 2..20 run function lib:roll_dice/super_win
execute if score $random mem matches 2..19 if score @s temp matches 20 run function lib:roll_dice/super_win

# 老板比玩家大：无事发生
execute if score $random mem matches 2..19 if score @s temp matches 2..19 if score $random mem > @s temp run tellraw @s ["",{"text":">> ","color":"dark_red","bold":true},"老板的点数比你大，你输了，你失去了 ",{"text":"1金锭","color":"dark_red","bold":true} ," ！"]
execute if score $random mem matches 2..19 if score @s temp matches 2..19 if score $random mem > @s temp run function lib:roll_dice/lose

# 玩家比老板大：获得18金粒
execute if score $random mem matches 2..19 if score @s temp matches 2..19 if score $random mem < @s temp run tellraw @s ["",{"text":">> ","color":"dark_green","bold":true},"你的点数比老板大，你赢了，你获得了",{"text":"1金锭","color":"dark_green","bold":true} ," ！"]
execute if score $random mem matches 2..19 if score @s temp matches 2..19 if score $random mem < @s temp run function lib:roll_dice/win

# 老板和玩家一样大：玩家获得9金粒
execute if score $random mem matches 20 if score @s temp matches 20 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你和老板一样欧，你们平局了，你拿回了 ",{"text":"1金锭","color":"green","bold":true} ," ！"]
execute if score $random mem matches 2..19 if score @s temp matches 2..19 if score $random mem = @s temp run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你的点数和老板一样大，你们平局了，你拿回了 ",{"text":"1金锭","color":"green","bold":true} ," ！"]
execute if score $random mem matches 1 if score @s temp matches 1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你和老板一样非，你们平局了，你拿回了 ",{"text":"1金锭","color":"green","bold":true} ," ！"]
execute if score $random mem = @s temp run function lib:roll_dice/draw
