
# 强制死亡机制
execute if score $countdown mem matches 21 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡将在 20 秒后开启！","color": "gold"}]
execute if score $countdown mem matches 1 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡已开启！","color": "gold"}]
execute if score $countdown mem matches 1 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 1 run function lib:bossbar/show
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/dragon_growl
execute if score $countdown mem matches ..0 run effect give @a[team=playing] wither 60 1 true

# 回复生命值
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 run schedule function mini:ass/game/clear_effect 1t replace
