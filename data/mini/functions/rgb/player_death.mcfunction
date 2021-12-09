# 玩家死亡时由玩家自己触发

tag @s remove mini_running
gamemode spectator
effect give @s night_vision 999999 0 true
tp @s[team=!debugging] 1032.34 27.11 8032.84 461.44 28.30
execute as @a at @s run function lib:sounds/error
function mini:main/player_failed