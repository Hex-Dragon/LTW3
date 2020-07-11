execute unless entity @a[tag=pm_holding] run tellraw @a [{"text":">> ","color":"gold","bold": true},{"text":"有人带着土豆跑路了，正在选取新的土豆拥有者!","color":"white","bold":false}]
execute unless entity @a[tag=pm_holding] run function mini:hotpm/game/pm_init_first
