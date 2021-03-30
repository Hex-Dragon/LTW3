# 去除进度
advancement revoke @s only item:special/consume_totem

# 有生命计数
execute if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 使用了不死图腾, 抵挡了一次死亡!"]


# 无生命计数：恢复所有生命
execute unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 使用了不死图腾, 并恢复到了满血!"]

## 归还苹果
#execute unless score @s mini_heart matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你只能在存在生命计数的小游戏中食用生命果!","color":"aqua"}]
#execute unless score @s mini_heart matches 1.. run give @s minecraft:golden_apple{display:{Name:'{"text":"生命果","italic":false}',Lore:['{"text":"恢复 4 颗心或生命 +1","italic":false,"color":"gray"}']},bonus_new:0b,bonus_return:1b,is_bonus:1b,item_name:'{"text":"生命果","color":"green"}'}

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
execute unless score @s mini_heart matches 1.. run tag @s add have_totem
schedule function mini:main/lose_heart_effect 1t