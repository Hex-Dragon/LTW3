# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

advancement revoke @s only lib:damage_dealt
advancement revoke @s only lib:damage_taken
advancement revoke @s only item:container/place
advancement revoke @s only item:special/consume_enchanted_apple
advancement revoke @s only item:special/consume_golden_apple

execute as @a at @s run function lib:sounds/hit

# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 如果是旁观者或局号不对头：开始旁观
execute if entity @s[team=!playing] run function ltw:main/player_enter_watcher
execute if entity @s[team=playing] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
# 如果不是旁观且局号正确：游戏中掉线
execute if entity @s[team=playing] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

# 更新 Bossbar
bossbar set ltw:notice players @a
function lib:bossbar/show

# 无指定人员
# FIXM: 如果服务器异常关闭，玩家在再次加入的时候不会触发进入事件（由于没有离开游戏计数）
# FIXM: 通过在每次进入阶段 3 时 kill 使用过不死图腾的玩家来解决不死图腾假死
# FIXM: {贸易} 确认是否能进行三次交易？
# FIXM: 如果玩家隐身，则不显示尾迹

# 龙猫
# TOD: {钻石/贸易} 减少水；分别刷出不同的额外方块；增加一个池子
# TOD: {土豆} 移除黄色指示器
# TOD: 确认玩家看不到隐身玩家
# FIXM: 再次确认音乐 Bug，是否不能在同 tick 执行？
# FIXM: {钻石} 玩家会列入钻石的记分板（由于在 belowName 里显示）

# HIM


# ——————————————
#  小游戏最佳实践
# ——————————————

# 需要有玩家交互
#     即使是间接交互也比没有好，PVP 击退可能是不错的选项，但最好不要纯 PVP 砍人
# 必须能体现玩家的技术或策略
#    单纯的狂点左键或长按 W 是没有意思的，至少要给玩家发挥的空间
# 结果不能仅依靠玩家的熟练度
#    全靠玩家水平不是说不行，而是这不适合“派对游戏”，跑酷就是一个负面例子
# 规则应该尽量简单易学
#    除非必要，不要增加单个游戏的规则复杂度，这会提高学习成本，让新人难以入门
# 在制作时考虑给道具留下发挥空间
#    玩家有远程攻击，有鞘翅，有生命果，有护甲和剑，有击退棒，让它们可以得到应用
