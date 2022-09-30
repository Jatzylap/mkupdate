scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg19 1
team add mg19
team join mg19 @s[tag=!T0]
team modify mg19 friendlyFire false
execute in nightsky_world run tp @s[tag=!T0] 13 42 17 180 0
execute in nightsky_world run particle cloud 13 43 17 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg19=1..}]
effect clear @s[tag=!T0]
title @s[tag=!T0] clear
title @s[tag=!T0] reset

execute store result score @s c if entity @a[scores={mg19=1..}]
title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected as progress is saved on exit","color":"yellow","bold":true}]