scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
team add mg16-red
team add mg16-blue
team modify mg16-red color red
team modify mg16-blue color blue
scoreboard players add @s[tag=!T0] mg16 1
execute at @s[tag=PG] if data block -90 4 -93 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg16"},"text":"@"}'} run tag @s add SPmg16
tp @s[tag=!T0] 141 2 -51
tp @s[tag=SPmg16] 142 20 -357
particle cloud 141 3 -51 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg16=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG] title ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"red","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
tellraw @s[scores={mg16=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Just like the classic BedWars game, GoldWars consists in opposing teams which confront each other, but in an attempt to place a Gold Block upon the summit of the opposing Base for your team to win! Keep a close eye on the monsters too, they can besiege your Fortress!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
execute unless entity @s[tag=SPmg16] store result score @s c if entity @a[scores={mg16=1..}]
scoreboard players reset @s[tag=!T0,tag=!SPmg16] lobby

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg16],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2