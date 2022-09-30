scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players set @s[tag=!T0] mg18 1
tp @s[tag=!T0] 285 1 135 0 0
execute at @s[tag=!T0] run particle cloud 285 2 135 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg18=1..}]
effect clear @s[tag=!T0]
effect give @s[tag=!T0] weakness 1000000 5 true
execute at @s[tag=!T0] run tag @s remove Win
tellraw @s[scores={mg18=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Parkour your way up a spiral staircase to reach the rainbow tower... Gain"},{"text":" special effects","color":"aqua"},{"text":" the more you jump!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
spawnpoint @s[tag=!T0] 285 1 135
title @s[tag=PG] title ["",{"text":"R","color":"red","bold":true},{"text":"A","color":"gold","bold":true},{"text":"I","color":"yellow","bold":true},{"text":"N","color":"green","bold":true},{"text":"B","color":"aqua","bold":true},{"text":"O","color":"light_purple","bold":true},{"text":"W","color":"white","bold":true},{"text":" Parkour","color":"white","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
execute store result score @s[tag=!T0] c if entity @a[scores={mg18=1..}]

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg18],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2
execute at @s[tag=!T0] run schedule function c3:mg18/loop 1