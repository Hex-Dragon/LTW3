# 玩家死亡时由玩家自己触发

tag @s remove mini_running
gamemode spectator
effect give @s night_vision 999999 0 true
tp @s[team=!debugging] 1038 30 8031
execute as @a at @s run function lib:sounds/error
function mini:main/player_failed