# 清除之前的as
kill @e[type=armor_stand,tag=parkour_tempo]

# 生成节奏方块实体
summon armor_stand 1004 16.6 1050 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1009 15.6 1051 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}

summon armor_stand 1012 7.6 1039 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1015 8.6 1037 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1009 9.6 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1014 9.6 1033 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1010 9.6 1033 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}
summon armor_stand 1010 11.6 1030 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_red"]}

summon armor_stand 1010 10.6 1030 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1012 10.6 1032 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1009 8.6 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1015 9.6 1035 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1012 7.6 1036 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}
summon armor_stand 1014 8.6 1039 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["parkour_tempo","tempo_blue"]}

# 显示as
item replace entity @e[type=armor_stand,tag=tempo_red,tag=parkour_tempo] armor.head with red_stained_glass
item replace entity @e[type=armor_stand,tag=tempo_blue,tag=parkour_tempo] armor.head with blue_stained_glass