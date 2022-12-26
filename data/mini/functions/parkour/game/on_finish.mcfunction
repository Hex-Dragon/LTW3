# 回城营火
tag @s remove parkour_portal
function lib:sounds/teleport
tp ~5 ~-4 ~-12
execute if entity @s[tag=mini_running] run function mini:parkour/player_finished