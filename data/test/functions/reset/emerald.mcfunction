
scoreboard objectives remove green
scoreboard objectives remove green_total
scoreboard objectives remove shop_particle_s
scoreboard objectives remove shop_particle_2
scoreboard objectives remove shop_particle_3
scoreboard objectives remove shop_particle_4
scoreboard objectives remove shop_particle_5
scoreboard objectives remove shop_particle_6
scoreboard objectives remove particle_type
scoreboard objectives remove stat_total
scoreboard objectives remove stat_win
advancement revoke @a everything
function ltw:init
tellraw @a ["",{"text": ">> ","color": "red","bold":true},{"text":"已重置绿宝石记分板记录!","color":"red"}]
