# 清除之前的as
kill @e[type=armor_stand,tag=lobby_tempo]

# 生成as
execute positioned 6 12 -26 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 11 14 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 11 16 -31 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 10 16 -22 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 5 17 -24 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 6 19 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}

execute positioned 6 13 -26 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 11 15 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 9 17 -31 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 10 17 -22 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 5 18 -24 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 6 20 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}

# 显示as
replaceitem entity @e[type=armor_stand,tag=tempo_red_t,tag=lobby_tempo] armor.head red_stained_glass
replaceitem entity @e[type=armor_stand,tag=tempo_blue_t,tag=lobby_tempo] armor.head blue_stained_glass