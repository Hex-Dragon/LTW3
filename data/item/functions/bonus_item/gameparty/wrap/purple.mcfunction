#as item
function item:bonus_item/gameparty/wrap/all
team join gold @e[tag=new_item_]
tag @e[tag=new_item_] add item_purple
tag @e[tag=new_item_] add item_new
tag @e[tag=new_item_] remove new_item_
