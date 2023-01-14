# 范围检测
execute if score @s buy_trigger matches 001..099 at @s unless entity @s[x=-3,z=-63,y=6,dx=25,dy=6,dz=30] run function item:shop/error/piglin
execute if score @s buy_trigger matches 100..199 at @s unless entity @s[x=1,z=-63,y=20,dx=5,dy=4,dz=6] run function item:shop/error/piglin
execute if score @s buy_trigger matches 200..299 at @s unless entity @s[x=-22,z=-75,y=18,dx=10,dy=4,dz=5] run function item:shop/error/villager
execute if score @s buy_trigger matches 666..999 at @s unless entity @s[x=-3,z=-49,y=27,dx=5,dy=4,dz=5] run function item:shop/error/dice

# 普通商店
execute if score @s buy_trigger matches 011 if score $state mem matches 0 run function item:shop/buy/011_bow
execute if score @s buy_trigger matches 012 if score $state mem matches 0 run function item:shop/buy/012_bow
execute if score @s buy_trigger matches 013 if score $state mem matches 0 run function item:shop/buy/013_bow
execute if score @s buy_trigger matches 021 if score $state mem matches 0 run function item:shop/buy/021_arrow
execute if score @s buy_trigger matches 022 if score $state mem matches 0 run function item:shop/buy/022_arrow
execute if score @s buy_trigger matches 023 if score $state mem matches 0 run function item:shop/buy/023_arrow
execute if score @s buy_trigger matches 031 if score $state mem matches 0 run function item:shop/buy/031_apple
execute if score @s buy_trigger matches 032 if score $state mem matches 0 run function item:shop/buy/032_apple
execute if score @s buy_trigger matches 041 if score $state mem matches 0 run function item:shop/buy/041_float
execute if score @s buy_trigger matches 042 if score $state mem matches 0 run function item:shop/buy/042_float
execute if score @s buy_trigger matches 051 if score $state mem matches 0 run function item:shop/buy/051_axe
execute if score @s buy_trigger matches 052 if score $state mem matches 0 run function item:shop/buy/052_axe
execute if score @s buy_trigger matches 053 if score $state mem matches 0 run function item:shop/buy/053_axe
execute if score @s buy_trigger matches 061 if score $state mem matches 0 run function item:shop/buy/061_armor
execute if score @s buy_trigger matches 062 if score $state mem matches 0 run function item:shop/buy/062_armor
execute if score @s buy_trigger matches 063 if score $state mem matches 0 run function item:shop/buy/063_armor
execute if score @s buy_trigger matches 064 if score $state mem matches 0 run function item:shop/buy/064_armor
execute if score @s buy_trigger matches 071 if score $state mem matches 0 run function item:shop/buy/071_fish
execute if score @s buy_trigger matches 072 if score $state mem matches 0 run function item:shop/buy/072_fish
execute if score @s buy_trigger matches 073 if score $state mem matches 0 run function item:shop/buy/073_fish
execute if score @s buy_trigger matches 074 if score $state mem matches 0 run function item:shop/buy/074_fish
# 隐藏商店
execute if score @s buy_trigger matches 101 if score $state mem matches 0 run function item:shop/buy/101_hint
execute if score @s buy_trigger matches 102 if score $state mem matches 0 run function item:shop/buy/102_bgm
execute if score @s buy_trigger matches 103 if score $state mem matches 0 run function item:shop/buy/103_pig
# 村民尾迹商店
execute if score @s buy_trigger matches 201 if score $state mem matches 0 run function item:shop/buy/201_particle_close
execute if score @s buy_trigger matches 211 if score $state mem matches 0 run function item:shop/buy/211_particle
execute if score @s buy_trigger matches 212 if score $state mem matches 0 run function item:shop/buy/212_particle
execute if score @s buy_trigger matches 213 if score $state mem matches 0 run function item:shop/buy/213_particle
execute if score @s buy_trigger matches 214 if score $state mem matches 0 run function item:shop/buy/214_particle
execute if score @s buy_trigger matches 215 if score $state mem matches 0 run function item:shop/buy/215_particle
# 骰子房
execute if score @s buy_trigger matches 999 if score $state mem matches 0 run function item:shop/buy/999_dice
# 彩蛋
execute if score @s buy_trigger matches 114514 if score $state mem matches 0 run function item:shop/buy/easter_egg

# 重置
scoreboard players set @s buy_trigger 0
execute if score $state mem matches 0 run scoreboard players enable @s buy_trigger
