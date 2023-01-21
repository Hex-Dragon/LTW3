# 初始化地图
forceload add 1001 4000 1075 4025
setblock 1049 10 3999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:0,mode:"LOAD",integrity:1.0f,showair:0b,name:"mini:color_match"}
setblock 1049 11 3999 redstone_block

# 初始化
scoreboard players set $survival mem 0
scoreboard players set $show_score mem 0
scoreboard players set $color_match_time mem 60
scoreboard players set $color_match_type mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set #max_speed mem 0

# 刷新地基
function mini:colormatch/game/prepare_round

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true

schedule function mini:colormatch/game_init2 15t replace