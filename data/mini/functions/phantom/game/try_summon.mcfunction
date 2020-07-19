# 尝试召唤幻翼
# 数量要求：已有幻翼 < 玩家人数 * 2

function mini:main/update_player_count
scoreboard players operation #count mem = $player_alive mem
scoreboard players operation #count mem += $player_alive mem
execute as @e[type=phantom] run scoreboard players remove #count mem 1

execute if score #count mem matches 1.. run function mini:phantom/game/summon
