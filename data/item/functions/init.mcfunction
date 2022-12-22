# 计分板初始化
scoreboard objectives remove UUID
scoreboard objectives add UUID dummy "UUID"

scoreboard objectives remove item_slot
scoreboard objectives add item_slot dummy "item_slot"

function item:shop/init