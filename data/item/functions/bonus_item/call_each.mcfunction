# 处理单个奖励物品
# as player

# 获取当前物品
data modify storage item:bonus item set from storage item:bonus item_buff[0]
data remove storage item:bonus item_buff[0]

# 播放音效
function lib:sounds/hit

# 显示拾取提示（获得积分的提示由 add_score 显示，获得随机物品则该物品不显示）
execute unless data storage item:bonus item.tag.bonus_add_score unless data storage item:bonus item.tag.bonus_random_bonus[0] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"nbt": "item.tag.item_name","storage":"item:bonus","interpret": true}]

# 如果有 return 标签则退回物品（最先执行）
execute if data storage item:bonus item.tag{"bonus_return":1b} run function item:bonus_item/return_item

# 如果有 add_score 标签则增加积分
execute if data storage item:bonus item.tag.bonus_add_score run function item:bonus_item/add_score

# 如果有 give_items 标签则给予物品
execute if data storage item:bonus item.tag.bonus_give_items[0] run function item:bonus_item/give_items

# 如果有 random_bonus 标签则返还随机物品
execute if data storage item:bonus item.tag.bonus_random_bonus[0] run function item:bonus_item/random_bonus

# 执行特定函数
execute if score $state mem matches 7 run function item:bonus_item/pickup_1

# 处理下一个
execute if data storage item:bonus item_buff[0] run function item:bonus_item/call_each