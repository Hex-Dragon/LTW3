# 清除之前的as
kill @e[type=armor_stand,tag=lobby_tempo]

# 生成as
summon armor_stand 11 15.6 23 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 11 16.6 30 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 11 17.6 37 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 19.6 40 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 19.6 32 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 20.6 27 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 10 22.6 23 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 11 23.6 28 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 11 23.6 35 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 23.6 40 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 11 25.6 40 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 26.6 34 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 27.6 27 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 26.6 25 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}
summon armor_stand 9 29.6 24 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_red"]}

summon armor_stand 11 16.6 26 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 11 17.6 33 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 11 17.6 40 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 10 18.6 42 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 9 19.6 36 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 9 19.6 29 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 9 21.6 25 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 11 23.6 24 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 11 23.6 31 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 10 23.6 37 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 10 24.6 42 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 11 26.6 37 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 9 26.6 30 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}
summon armor_stand 10 26.6 23 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["lobby_tempo","tempo_blue"]}

# 显示as
replaceitem entity @e[type=armor_stand,tag=tempo_red,tag=lobby_tempo] armor.head red_stained_glass
replaceitem entity @e[type=armor_stand,tag=tempo_blue,tag=lobby_tempo] armor.head blue_stained_glass