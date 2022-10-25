scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
team add mg2-red
team add mg2-blue
team add mg2-yellow
team modify mg2-red color red
team modify mg2-blue color blue
team modify mg2-yellow color yellow
execute at @s[tag=PG] if data block -14 5 -12 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg2"},"text":"@"}'} run tag @s add SPmg2
scoreboard players set @s[tag=!T0] mg2 1

execute at @s[tag=!T0] store result score #mg2-red mg2.1 if entity @a[scores={mg2=1..},tag=mg2-ran1]
execute at @s[tag=!T0] store result score #mg2-blue mg2.1 if entity @a[scores={mg2=1..},tag=mg2-ran2]
execute at @s[tag=!T0] store result score #mg2-yellow mg2.1 if entity @a[scores={mg2=1..},tag=mg2-ran3]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG] title ["",{"text":"Bed","color":"red","bold":true},{"text":" / ","color":"gold","bold":true},{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}]
title @s[tag=PG,tag=SPmg2] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]

execute unless entity @s[tag=SPmg2] store result score @s c if entity @a[scores={mg2=1..}]
scoreboard players reset @s[tag=!T0,tag=!SPmg2] lobby
spawnpoint @s[tag=!T0,tag=!SPmg2] 104 2 -68
tp @s[tag=!T0] 104 4 -63
particle cloud 104 5 -63 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg2=1..}]
execute if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @s[scores={mg2=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Confront each of the opposing Teams, and break their"},{"text":" Bed ","color":"red","bold":true},{"text":"before eliminating them to win! The strategy is up to you..."},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
execute if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @s[scores={mg2=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Confront each of the opposing Teams, and break their"},{"text":" Protective Egg ","color":"dark_aqua","bold":true},{"text":"before eliminating them to win! The strategy is up to you..."},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg2],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2