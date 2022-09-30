scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
execute at @s[tag=!T0] run team add mg23-red
execute at @s[tag=!T0] run team add mg23-blue
team modify mg23-red color red
team modify mg23-blue color blue
team leave @s[tag=!T0]
execute at @s[tag=PG] if data block -14 5 -13 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg23"},"text":"@"}'} run tag @s add SPmg23
scoreboard players add @s[tag=!T0] mg23 1
tp @s[scores={mg23=1..}] -88 2 87
execute at @s[tag=SPmg23] in sister_dimension run tp 14 30 -57
execute at @s[tag=SPmg23] run spreadplayers 14 -57 10 90 under 11 false @s
particle cloud -67 4 76 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg23=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
execute at @s[tag=!T0,tag=!mg23-blue] store result score @e[limit=1,name="M@K"] mg23.1 if entity @a[scores={mg23=1..},tag=mg23-red]
execute at @s[tag=!T0,tag=!mg23-blue] store result score @e[limit=1,name="M@K"] mg23.2 if entity @a[scores={mg23=1..},tag=mg23-blue]
execute at @s[tag=!T0,tag=!mg23-blue] run scoreboard players operation @e[limit=1,name="M@K"] mg23.1 -= @e[limit=1,name="M@K"] mg23.2
execute at @s[tag=!T0,tag=!mg23-blue] unless score @e[limit=1,name="M@K"] mg23.1 matches 1.. run tag @s add mg23-red
execute at @s[tag=!T0,tag=!mg23-red] store result score @e[limit=1,name="M@K"] mg23.1 if entity @a[scores={mg23=1..},tag=mg23-red]
execute at @s[tag=!T0,tag=!mg23-red] store result score @e[limit=1,name="M@K"] mg23.2 if entity @a[scores={mg23=1..},tag=mg23-blue]
execute at @s[tag=!T0,tag=!mg23-red] run scoreboard players operation @e[limit=1,name="M@K"] mg23.2 -= @e[limit=1,name="M@K"] mg23.1
execute at @s[tag=!T0,tag=!mg23-red] unless score @e[limit=1,name="M@K"] mg23.2 matches 1.. run tag @s add mg23-blue

title @s[tag=PG] title ["",{"text":"Capture the Flag","color":"aqua","bold":true}]
title @s[tag=PG,tag=SPmg23] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
tellraw @s[tag=mg23-red] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" You are in the "},{"text":"Red Team","color":"red","bold":true},{"text":"! \nCapture "},{"text":"Blue Team","color":"blue","bold":true},{"text":"\'s flag and bring it back to your base!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
tellraw @s[tag=mg23-blue] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" You are in the "},{"text":"Blue Team","color":"blue","bold":true},{"text":"! \nCapture "},{"text":"Red Team","color":"red","bold":true},{"text":"\'s flag and bring it back to your base!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]

execute unless entity @s[tag=SPmg23] store result score @s c if entity @a[scores={mg23=1..}]
scoreboard players reset @s[tag=!T0,tag=!SPmg23] lobby

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg23],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2