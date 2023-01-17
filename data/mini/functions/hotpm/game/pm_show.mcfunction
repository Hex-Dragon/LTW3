# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 给予炸弹
item replace entity @s hotbar.8 with tnt{game_item:1b,Enchantments:[{id:"minecraft:knockback",lvl:1}],display:{Name:'[{"text":"<击退 I> 炸弹","color":"white","italic":false}]'}} 1