# 清理物品
clear @s paper{game_item:1b}

# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 设置最后一格的物品
replaceitem entity @s hotbar.8 paper{game_item:1b,display:{Name:'[{"text":"交易之纸","color":"aqua","italic":false}]',Lore:['[{"text":"奇物， 珍稀","italic":true,"color":"gray"}]','[{"color":"white","italic":false,"text":"在你握持该纸时， 一位村民"},{"text":" villager ","italic":true},{"color":"white","italic":false,"text":"将会出现在你周围 10 尺内"}]','[{"color":"white","italic":false,"text":"的一处尚未被占据的区域， 直到你不握持该纸时， 它会使用以"}]','[{"color":"white","italic":false,"text":"太化"},{"text":" etherealness ","color":"white","italic":true},{"color":"white","italic":false,"text":"进入以太位面并消失。"}]','[{"color":"white","italic":false,"text":"该村民被永久的浮空术"},{"text":" levitate ","color":"white","italic":true},{"color":"white","italic":false,"text":"影响， 且持续保持在与你相同"}]','[{"color":"white","italic":false,"text":"的高度。你可以穿过它所占据的空间， 且可以与它进行交易， 不"}]','[{"color":"white","italic":false,"text":"过对它的攻击会自动失手。它会通过所有豁免检定， 并且免疫所"}]','[{"color":"white","italic":false,"text":"有的伤害和异常状态。"}]']}}