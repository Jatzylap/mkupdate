scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
effect give @s[tag=!T0] weakness 1000000 255 true
team add mg25-white
team add mg25-black
team modify mg25-white color white
team modify mg25-black color dark_gray
team modify mg25-white collisionRule never
team modify mg25-black collisionRule never
team modify mg25-black seeFriendlyInvisibles false
team modify mg25-white seeFriendlyInvisibles false
execute in overworld at @s[tag=PG] if data block -47 6 71 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg25"},"text":"@"}'} run tag @s add SPmg25
scoreboard players add @s[tag=!T0] mg25 1
execute in sister_dimension run tp @s[scores={mg25=1..},tag=!SPmg25] 264 2 12
execute in sister_dimension run tp @s[tag=SPmg25] 284 12 12
execute in sister_dimension run particle cloud 264 2 12 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg25=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG] title ["",{"text":"Royal Game of Ur","color":"yellow","bold":true}]
title @s[tag=PG,tag=SPmg25] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
tellraw @s[scores={mg25=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Nothing beats a good old Mesopotamian board game from 2500 B-C! Race your opponent to the upper half of the board by getting all 7 pieces off first!"},{"text":"\n\u21b1","color":"gold"},{"text":" Once the race has begun, the dark tetrahedron dice below the board will indicate an amount of spaces for 1 of your pieces: select a piece (on your side) with ","color":"yellow"},{"text":"right-click","color":"aqua","italic":true},{"text":" to move it\n","color":"yellow","italic":false}]
execute unless entity @s[tag=SPmg25] store result score @s c if entity @a[scores={mg25=1..}]

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg25],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2