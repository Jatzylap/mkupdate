tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg17 1
tp @s[tag=!T0] 566 60 -15
execute at @s[tag=!T0] run particle cloud 566 61 -15 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg17=1..}]
effect clear @s[tag=!T0]
execute at @s[tag=!T0] run tag @s remove Win
execute at @s[tag=!T0] run tag @s remove C_
execute at @s[tag=!T0] run tag @s remove D_
execute at @s[tag=!T0] run tag @s remove L_
effect give @s[tag=!T0] weakness 1000000 5 true
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected for the moment","color":"yellow","bold":true}]
execute store result score @s[tag=!T0] c if entity @a[scores={mg17=1..}]
execute at @s[tag=!T0] run schedule function c3:mg17/loop 1