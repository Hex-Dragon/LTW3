# 玩家失败时由玩家自己触发
function mini:main/player_failed

# 玩家死亡
tag @s remove tntrun_pc
scoreboard players reset @s layer
