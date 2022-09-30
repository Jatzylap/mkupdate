scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
execute at @s[tag=PG] if data block -47 6 35 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg4"},"text":"@"}'} run tag @s add SPmg4
execute unless entity @s[tag=T0] unless entity @a[scores={mg4=1..}] run setblock -324 2 -56 redstone_block
scoreboard players add @s[tag=!T0] mg4 1
effect clear @s[scores={mg4=1..}]
effect give @s[scores={mg4=1..}] weakness 100000 100 true
effect give @s[scores={mg4=1..}] resistance 100000 255 true
effect give @s[scores={mg4=1..}] fire_resistance 100000 255 true
tp @s[scores={mg4=1..},tag=!SPmg4] 80 7 -16
tp @s[tag=SPmg4] 80 7 4
particle cloud 80 8 -16 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg4=1..}]
tellraw @s[scores={mg4=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Dodge blasts of blazing fire charges. If you die, you are eliminated!"},{"text":" \u21b2","color":"gold","bold":true}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG,tag=!SPmg4] title ["",{"text":"Fireball","color":"yellow","bold":true},{"text":" Dodge","color":"red","bold":true}]
title @s[tag=PG,tag=SPmg4] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg4],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2