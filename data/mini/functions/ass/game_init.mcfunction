# 初始化刺客地图
forceload add 1000 7000 1032 7032

scoreboard players set $finish_mode mem 0
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0

# 生成地图
setblock 1000 4 7000 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:1,posZ:0,name:"mini:ass"}
setblock 1000 5 7000 minecraft:redstone_block
setblock 1000 4 7000 air

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false
gamerule fallDamage false

schedule function mini:ass/game_init2 10t replace