
# 60s：教学
execute if score $countdown mem matches 60 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：在召唤苦力怕后稍等一下再击退，能让它在飞到目标时立即爆炸！","bold":false},"\n"]

# 强制死亡机制
execute if score $countdown mem matches 21 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡将在 20 秒后开启！","color": "gold"}]
execute if score $countdown mem matches 1 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 1 run function lib:bossbar/show
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/dragon_growl
execute if score $countdown mem matches 1 if score $player_alive mem matches 3.. run effect clear @a resistance
execute if score $countdown mem matches 1 if score $player_alive mem matches ..2 run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡已开启！\n","color": "gold"}]
execute if score $countdown mem matches 1 if score $player_alive mem matches 3.. run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡已开启！苦力怕现在会造成更多伤害！\n","color": "gold"}]
execute if score $countdown mem matches ..0 run effect give @a[team=playing] wither 1000000 1 true

# 回复生命值
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $countdown mem matches 1.. if score $foursec mem matches 1 run schedule function mini:ass/game/clear_effect 1t replace

# -----------------------
#   物品生成
# -----------------------

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1000,y=0,z=7000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1

# 没有进入即死
execute if score $countdown mem matches ..1 run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1

# 存活玩家数（$player_alive）>= 3
execute if score $player_alive mem matches ..2 run scoreboard players set #new_item mem 1
# 死亡玩家数（$player_finish）<= 2
execute if score $player_finish mem matches 3.. run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:ass/game/new_item
