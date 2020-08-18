# 清除之前的as
kill @e[type=armor_stand,tag=lobby_tempo]

# 生成as
execute positioned 6 12 -26 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 11 14 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 10 16 -22 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 5 17 -24 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 6 19 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 13 43 -61 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 12 45 -56 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}
execute positioned 17 45 -51 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_t"]}

execute positioned 16 43 -46 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_r"]}
execute positioned 14 44 -43 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_r"]}
execute positioned 15 47 -38 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_r"]}
execute positioned 19 45 -35 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_r"]}
execute positioned 19 49 -30 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red_r"]}


execute positioned 6 13 -26 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 11 15 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 10 17 -22 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 5 18 -24 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 6 20 -27 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 13 44 -61 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 12 46 -56 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}
execute positioned 17 46 -51 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_t"]}

execute positioned 17 43 -44 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}
execute positioned 11 47 -41 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}
execute positioned 16 47 -37 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}
execute positioned 23 47 -30 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}
execute positioned 15 51 -30 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}
execute positioned 21 49 -34 run summon armor_stand ~ ~-0.4 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue_r"]}

# 显示as
replaceitem entity @e[type=armor_stand,tag=tempo_red_t,tag=lobby_tempo] armor.head red_stained_glass
replaceitem entity @e[type=armor_stand,tag=tempo_blue_t,tag=lobby_tempo] armor.head blue_stained_glass