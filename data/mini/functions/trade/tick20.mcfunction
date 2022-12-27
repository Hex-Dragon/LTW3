
# 更新绿宝石数量
execute as @a[team=playing] store result score @s emerald run clear @s emerald 0

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 升级
execute as @e[tag=TradePlayer] run function mini:trade/game/villager_try_level_up

# 移除空交易
execute as @e[tag=TradePlayer,x=999,y=0,z=4999,dx=500,dy=200,dz=500,nbt={Offers:{Recipes:[{uses:1}]}}] run function mini:trade/game/remove_trade

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:trade/game/clear_effect 1t replace

# 更新下界之星，转换为积分
scoreboard players reset * temp2
execute as @a[team=playing] store result score @s temp2 run clear @s nether_star
execute as @a[scores={temp2=1..}] at @s run function mini:trade/game/get_score

# 60s 提示
execute if score $countdown mem matches 60 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text":"游戏将在 ","color": "gold"}, "60 秒 ",{"text": "后结束","color": "gold"}]
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 60 run function lib:bossbar/show

# 给予进度
execute as @a[team=playing] if score @s emerald matches 8.. run advancement grant @s only ltw:vs/emerald1
execute as @e[tag=TradePlayer,tag=!adv3_checked] store success score @s temp run data get entity @s Offers.Recipes[0]
execute as @a[team=playing] if score @s player_id = @e[tag=TradePlayer,scores={temp=0},tag=!adv3_checked,limit=1] player_id run advancement grant @s only ltw:vs/emerald3
tag @e[tag=TradePlayer,scores={temp=0},tag=!adv3_checked] add adv3_checked