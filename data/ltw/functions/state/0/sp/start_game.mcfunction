# 开始游戏

# 停止 BGM
scoreboard players set @s music 0
function lib:music/refresh

# 确认实际玩家，给予 selected_player 标签
tag @a remove status_player
tag @a[team=hub_play,sort=random,limit=8] add selected_player

# 发送通知
tellraw @a[team=hub_play,tag=!selected_player] [{"text":" ✖ ","color":"red"}," 很遗憾， 你没有被选中参与， 将会旁观本局游戏！"]
tellraw @a[team=hub_play,tag=selected_player] [{"text":" ","color":"green"},{"text":"✔","bold":true}," "," 游戏开始！"]
tellraw @a[team=hub_watch] [{"text":" ❇ ","color":"green"}," 游戏开始， 你将旁观本局游戏！"]
tellraw @a[team=debug] [{"text":" ❇ ","color":"aqua"}," 你处于 Debug 模式中， 不会受游戏开始影响！"]

# 将玩家分为 debug、watch、无队伍 三种
team join watch @a[team=!debug,tag=!selected_player]
team leave @a[team=!debug,team=!watch]

# 初始化轮数
scoreboard players set $round mem 1

# 初始化游戏与玩家 ID
scoreboard players add $ game_id 1
scoreboard players operation @a game_id = $ game_id
scoreboard players set @a[team=] player_id 0
scoreboard players set $player_id mem 0
execute if entity @a[team=,scores={player_id=0}] run function ltw:state/0/sp/set_player_id

# 初始化物品
clear @a[team=]

# TODO: 未完成的重构

# 初始化分数

# 开始小游戏
function ltw:state/0/state_enter
