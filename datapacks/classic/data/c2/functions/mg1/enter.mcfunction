tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
execute unless entity @s[tag=T0] unless entity @a[scores={mg1=1..}] run setblock -299 2 -52 redstone_block
scoreboard players add @s[tag=!T0] mg1 1
tp @s[scores={mg1=1..}] 43 2 -77
tp @s[tag=SPmg1] 13 3 -46
particle cloud 43 3 -77 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg1=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected","color":"yellow","bold":true}]