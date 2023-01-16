
# 100s：教学
execute if score $countdown mem matches 100 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：留意隐蔽的角落与奇怪的地方，指不定里面就藏着宝藏……","bold":false},"\n"]

# 地狱门音效
scoreboard players set $random_max mem 3
scoreboard players set $random_min mem 1
function lib:random
execute if score $random mem matches 2 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 如果当前宝藏不足 14 个，补充宝藏到 20 个
scoreboard players set #item_count mem 20
execute as @e[tag=bonus_item,x=1000,y=0,z=1000,dx=100,dy=100,dz=100] run scoreboard players remove #item_count mem 1
execute if score #item_count mem matches 6.. run tellraw @a ["",{"text": ">> ","color":"gold","bold":true},{"score": {"name": "#item_count","objective": "mem"},"color":"gold"},{"text": " 处新的宝藏已出现!","color":"gold"}]
execute if score #item_count mem matches 6.. run playsound block.amethyst_block.hit player @a 0 1000000 0 1000000 1
execute if score #item_count mem matches 6.. run function mini:parkour/game/generate_loop