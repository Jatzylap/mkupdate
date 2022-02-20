execute unless entity @e[tag=mg22_start] run tag @s[tag=!T0] add m-g
execute if entity @e[tag=mg22_start] run tag @s[tag=!T0] add SPmg22
tag @s[tag=!T0] remove C_
tag @s[tag=!T0] remove D_
team leave @s[tag=!T0]
execute at @s[tag=!T0] unless entity @a[scores={mg22=1..}] in overworld run setblock -351 2 -35 redstone_block
scoreboard players add @s[tag=!T0] mg22 1
execute in sister_dimension run tp @s[scores={mg22=1..},tag=!SPmg22] 216 2 -168 90 0
execute in sister_dimension run spawnpoint @s[scores={mg22=1..}] 216 2 -168
execute in sister_dimension run tp @s[tag=SPmg22] 238 34 -171 90 90
execute in sister_dimension run spawnpoint @s[tag=SPmg22] -51 5 47
execute at @s[tag=!T0] run bossbar add td_progress ["",{"text":"- Tower Health -","color":"gold","bold":true}]
execute at @s[tag=!T0] run bossbar set td_progress style notched_20
execute at @s[tag=!T0] run bossbar set td_progress color red
execute at @s[tag=!T0] run bossbar set td_progress max 20
execute if entity @s[tag=!T0] as @e[name="M@K",limit=1] at @s unless score @s mg22.1 matches 0.. run scoreboard players set @s mg22.1 0 
execute in sister_dimension run particle cloud 216 3 -168 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg22=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected as progress is saved on exit","color":"yellow","bold":true}]