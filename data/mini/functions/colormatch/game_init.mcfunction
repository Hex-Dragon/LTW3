# 初始化地图
forceload add 1001 4000 1075 4025
setblock 1049 10 3999 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:0,mode:"LOAD",integrity:1.0f,showair:0b,name:"mini:color_match"}
setblock 1049 11 3999 redstone_block

# 初始化
scoreboard players set $finish_mode mem 0
scoreboard players set $survival mem 0
scoreboard players set $color_match_time mem 60
scoreboard players set $color_match_type mem 0

# 刷新地基
function mini:colormatch/game/prepare_round
schedule function mini:colormatch/game_init2 12t replace

# 生成物品
execute positioned 1060.5 22.0 4010.5 run function item:bonus_item/gameparty/auto/white

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule fallDamage false
gamerule naturalRegeneration true
