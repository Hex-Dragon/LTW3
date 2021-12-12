# 重置计分板
scoreboard objectives remove rgb_sys
scoreboard objectives add rgb_sys dummy "RGB小游戏系统变量"
scoreboard objectives remove rgb_rule_id
scoreboard objectives add rgb_rule_id dummy "RGB小游戏规则ID"

scoreboard objectives remove rgb_R
scoreboard objectives add rgb_R dummy {"text": "R","color": "red","bold": true}
scoreboard objectives remove rgb_G
scoreboard objectives add rgb_G dummy {"text": "G","color": "green","bold": true}
scoreboard objectives remove rgb_B
scoreboard objectives add rgb_B dummy {"text": "B","color": "blue","bold": true}

scoreboard objectives remove rgb_obtain_rule
scoreboard objectives add rgb_obtain_rule minecraft.mined:minecraft.pumpkin "RGB小游戏获得规则计分板"
scoreboard objectives remove rgb_place_rule
scoreboard objectives add rgb_place_rule minecraft.used:armor_stand "RGB小游戏放置规则计分板"
scoreboard objectives remove rgb_destroy_rule
scoreboard objectives add rgb_destroy_rule minecraft.killed:armor_stand "RGB小游戏销毁规则计分板"
scoreboard objectives remove rgb_shift
scoreboard objectives add rgb_shift custom:sneak_time "RGB小游戏潜行时间"
scoreboard objectives remove rgb_dig_ice
scoreboard objectives add rgb_dig_ice minecraft.mined:minecraft.ice "RGB小游戏挖掘冰块"
scoreboard objectives remove rgb_take_damage
scoreboard objectives add rgb_take_damage dummy "RGB小游戏受到伤害，为负表示回血"
scoreboard objectives remove rgb_health
scoreboard objectives add rgb_health dummy "RGB小游戏生命值"