data modify block 0 1 0 Text1 set value '[{"nbt":"Text1","block":"0 1 0","interpret":true},{"nbt":"Text3","block":"0 1 0","interpret":true},{"nbt":"rgb.events[0].name","storage":"ltw:mini","interpret":true}]'
data modify block 0 1 0 Text3 set value '{"text":" 且 ","color":"white"}'
data remove storage ltw:mini rgb.events[0]
execute if data storage ltw:mini rgb.events[0] run function mini:rgb/game/give_random_rule_2